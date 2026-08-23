## Example objective

Imagine an online store selling environmentally friendly household products.

The algorithm will:

1. Generate example customer data.
    
2. Train a logistic regression model.
    
3. Predict each customer’s probability of clicking an advert.
    
4. Target customers whose predicted probability is at least 60%.
    
5. Evaluate the model’s performance.
    

Logistic regression is suitable here because it predicts the probability of a binary outcome, such as “clicked” or “did not click.” Scikit-learn provides `predict_proba()` for obtaining these probability estimates.


```python
import numpy as np
import pandas as pd

from sklearn.model_selection import train_test_split
from sklearn.pipeline import make_pipeline
from sklearn.preprocessing import StandardScaler
from sklearn.linear_model import LogisticRegression
from sklearn.metrics import roc_auc_score, classification_report


# -------------------------------------------------------
# 1. Create a synthetic customer dataset
# -------------------------------------------------------

rng = np.random.default_rng(42)
number_of_customers = 2000

customer_data = pd.DataFrame({
    "website_visits_30d": rng.poisson(4, number_of_customers),
    "product_views_30d": rng.poisson(3, number_of_customers),
    "email_opens_30d": rng.binomial(8, 0.35, number_of_customers),
    "previous_purchases": rng.poisson(1.5, number_of_customers),
    "price_sensitive": rng.binomial(1, 0.45, number_of_customers)
})


# -------------------------------------------------------
# 2. Generate a synthetic advertising outcome
# -------------------------------------------------------
# This represents whether the customer clicked an advert
# within seven days.

logit_score = (
    -2.8
    + 0.16 * customer_data["website_visits_30d"]
    + 0.28 * customer_data["product_views_30d"]
    + 0.20 * customer_data["email_opens_30d"]
    + 0.42 * customer_data["previous_purchases"]
    - 0.55 * customer_data["price_sensitive"]
)

# Convert the score into a probability from 0 to 1
click_probability = 1 / (1 + np.exp(-logit_score))

# Randomly generate the outcome using that probability
customer_data["ad_clicked"] = rng.binomial(
    1,
    click_probability
)


# -------------------------------------------------------
# 3. Separate input features and target outcome
# -------------------------------------------------------

features = [
    "website_visits_30d",
    "product_views_30d",
    "email_opens_30d",
    "previous_purchases",
    "price_sensitive"
]

X = customer_data[features]
y = customer_data["ad_clicked"]


# -------------------------------------------------------
# 4. Split data into training and testing sets
# -------------------------------------------------------

X_train, X_test, y_train, y_test = train_test_split(
    X,
    y,
    test_size=0.25,
    random_state=42,
    stratify=y
)


# -------------------------------------------------------
# 5. Train the prediction model
# -------------------------------------------------------

model = make_pipeline(
    StandardScaler(),
    LogisticRegression(
        max_iter=1000,
        random_state=42
    )
)

model.fit(X_train, y_train)


# -------------------------------------------------------
# 6. Predict advertising click probabilities
# -------------------------------------------------------

predicted_probabilities = model.predict_proba(X_test)[:, 1]

results = X_test.copy()
results["predicted_click_probability"] = predicted_probabilities


# -------------------------------------------------------
# 7. Decide who should receive the advertisement
# -------------------------------------------------------

targeting_threshold = 0.60

results["advertising_decision"] = np.where(
    results["predicted_click_probability"] >= targeting_threshold,
    "Target with eco-product advert",
    "Do not target"
)


# -------------------------------------------------------
# 8. Evaluate the model
# -------------------------------------------------------

auc_score = roc_auc_score(
    y_test,
    predicted_probabilities
)

predicted_classes = np.where(
    predicted_probabilities >= targeting_threshold,
    1,
    0
)

print(f"ROC-AUC score: {auc_score:.3f}")
print()
print("Classification report:")
print(classification_report(y_test, predicted_classes))

print()
print("Example customer decisions:")
print(results.head(10))

print()
print("Number of customers selected for advertising:")
print(
    (results["advertising_decision"] ==
     "Target with eco-product advert").sum()
)
```

Scikit-learn’s `train_test_split()` separates data into training and testing portions, while `stratify=y` helps preserve the proportion of clicked and non-clicked examples in both sets.

## How the algorithm works

The model learns relationships such as:

- More product views may indicate greater interest.
    
- More website visits may indicate stronger engagement.
    
- Previous purchases may suggest that a customer is more likely to respond.
    
- Price sensitivity may reduce the likelihood of clicking an advert for a premium product.
    

For a new customer, the model might produce:
Predicted click probability: 0.82
Decision: Target with eco-product advert

The threshold controls how selective the campaign is:
targeting_threshold = 0.60

A lower threshold targets more people but may waste more advertising budget. A higher threshold targets fewer people but may miss potential customers.

Example algorithm in pseudocode
Load customer activity data

For each customer:
    Collect recent website visits
    Collect recent product views
    Count marketing emails opened
    Count previous purchases
    Record price sensitivity

Split historical data into training and testing data

Train a classification model using the training data

For every customer:
    Calculate probability of clicking the advert

    If probability >= 60%:
        Include customer in advertising audience
    Otherwise:
        Do not include customer

Evaluate the model against the test data

Monitor campaign results and retrain the model periodically


This is a basic “propensity model.” A more advanced advertising system would predict expected profit by considering the probability of conversion, advert cost, product margin, and the expected purchase value.