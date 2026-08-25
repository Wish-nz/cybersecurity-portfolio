## Shopping Spree write-up

### Challenge overview
**Shopping Spree** was a Flask web challenge where the shop page hid the flag from non-admin users, but exposed it to `admin`. The flag itself was embedded as a product name in the backend product list, so the goal was to become `admin` and reach `/shop`.

### Recon
The provided source showed:
- A global `users` list with a single admin user.
- `admin`’s password was randomly generated at startup.
- Registration appended new users directly into the global list.
- Login set `session["user"] = username` when the submitted username/password matched an entry in `users`.
- `/shop` displayed the flag product only when `session["user"] == "admin"`.

The important weakness was that the app trusted a plain session username value for authorization.

### Vulnerability
The intended weakness was **client-side session trust**. Since Flask sessions are cookie-based, the server only checks the `user` value stored in the session. That means if the session cookie can be edited or forged, setting `user` to `admin` is enough to unlock the hidden product list.

### Exploitation
I used the browser console script to modify the session state and set the logged-in user to `admin`. After refreshing the shop page, the flag product became visible and the flag could be copied directly from the product name.

### Why it worked
The app had no server-side session lookup or permission check tied to a real authenticated user record. It only relied on the session value, so once that value said `admin`, the authorization gate was bypassed.

### Notes for future Flask challenges
- Trusting `session["user"]` alone is a red flag.
- If a Flask app uses a readable cookie-backed session, check whether auth can be altered client-side.
- Any hidden content rendered conditionally from the session should be treated as potentially exposed.

### Concise solution record
1. Inspect source.
2. Identify that `session["user"]` controls access to the flag product.
3. Use the browser console script to set the session user to `admin`.
4. Reload `/shop`.
5. Read the flag from the hidden product entry.

## Flag
The flag should be recorded from the shop page after the session change.

If you want, I can also turn this into a shorter **CTF write-up format** with headings like `Enumeration`, `Root Cause`, `Exploit`, and `Lessons Learned`.
