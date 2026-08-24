# Challenge Write-Up: Unlogged Signal

## Objective

The challenge presents a radio-style conversation recorded during reports of strange lights over the Wairarapa. The transmission is written using unusual Unicode symbols, and the page provides a workbench where each symbol can be assigned a Latin letter.

The goal is to recover the substitution key and decode the final flag:

```text
⋏⋉☊⌇☊{⋏0⏁-0⎎_⏁⊑⟟⌇-⍙0⍀⌰⎅}
```

The challenge page identifies the workbench as a live decoder: assigning letters to symbols updates the decoded log. [chall02.r0.nzcsc.org](https://chall02.r0.nzcsc.org.nz/)

## Step 1: Identify the cipher

The encoded text contains repeated symbols and preserves spaces and punctuation. For example:

```text
⟒⎐⟒⍀⊬⍜⋏⟒ ⍜⋏ ⏁⊑⟒ ⊑⟟⌰⌰
```

This has the same word-length pattern as:

```text
EVERYONE ON THE HILL
```

That indicates a **monoalphabetic substitution cipher**:

- Each symbol represents one Latin letter.
- The same symbol always represents the same letter.
- Spaces and punctuation remain unchanged.
- The two letters already confirmed by the page are `⏃ = A` and `⍜ = O`. [chall02.r0.nzcsc.org](https://chall02.r0.nzcsc.org.nz/)

## Step 2: Use known words

The first transmission can be solved from its word patterns and the context of the message:

```text
⟒⎐⟒⍀⊬⍜⋏⟒ ⍜⋏ ⏁⊑⟒ ⊑⟟⌰⌰ ⟟⌇ ⍙⏃⏁☊⊑⟟⋏☌ ⏁⊑⟒ ⌇☍⊬.
```

Decoded:

```text
EVERYONE ON THE HILL IS WATCHING THE SKY.
```

This produces the following mappings:

| Symbol | Letter |
|---|---|
| `⟒` | E |
| `⎐` | V |
| `⍀` | R |
| `⊬` | Y |
| `⍜` | O |
| `⋏` | N |
| `⏁` | T |
| `⊑` | H |
| `⟟` | I |
| `⌰` | L |
| `⌇` | S |
| `⍙` | W |
| `⏃` | A |
| `☊` | C |
| `⋔` | M |
| `☌` | G |

The next sentence confirms additional letters:

```text
☌⍜⍜⎅ ⏁⟟⋔⟒ ⏁⍜ ⋔⍜⎐⟒.
```

Decoded:

```text
GOOD TIME TO MOVE.
```

## Step 3: Decode the remaining messages

Applying the recovered mappings to the other messages gives:

```text
COPY. NOBODY IS LOOKING AT THE NETWORK TONIGHT.
```

```text
THE LIGHTS WERE NEVER OURS BY THE WAY. WE JUST GOT LUCKY WITH THE TIMING.
```

```text
LUCKY OR NOT IT WORKED. LET THE OFFICIALS ARGUE ABOUT BALLOONS AND ROCKETS.
```

The conversation provides contextual confirmation that the recovered plaintext is correct: the speakers discuss the lights, the network, timing, and misleading explanations involving balloons and rockets. [chall02.r0.nzcsc.org](https://chall02.r0.nzcsc.org.nz/)

## Step 4: Follow the hint

The 22:53 message says:

```text
AGREED. KEEP THE CHATTER SHORT AND STAY OFF THE COMMON CHANNELS.
```

The 22:58 message contains the important instruction:

```text
SHORT WORDS FIRST WHEN YOU DECODE THIS. VOWELS GIVE IT AWAY FAST.
```

This is a hint to start with short, common words and use vowels to quickly identify the substitution mapping. It also confirms that the symbols are not a cryptographic hash; they are encoded characters in a substitution cipher.

## Step 5: Decode the flag

At 23:04, the transmission explicitly includes:

```text
⋏⋉☊⌇☊{⋏0⏁-0⎎_⏁⊑⟟⌇-⍙0⍀⌰⎅}
```

Using the recovered mappings:

```text
⋏ = N
⋉ = Z
☊ = C
⌇ = S
⏁ = T
⎎ = F
⊑ = H
⟟ = I
⍙ = W
⍀ = R
⌰ = L
⎅ = D
```

The decoded flag is:

```text
NZCSC{N0T-0F_THIS-W0RLD}
```

The zeroes in `N0T`, `0F`, and `W0RLD` are literal zeroes, matching the flag text shown in the capture.

## Final flag

```text
NZCSC{N0T-0F_THIS-W0RLD}
```
