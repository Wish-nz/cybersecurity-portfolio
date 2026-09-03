# NZCSC 2026 CTF Training Platform — Project Write-Up

A single-file, installable (PWA) web app built to train for the New Zealand Cyber Security Challenge (NZCSC) 2026. It bundles practice challenges, decoder tools, cheat sheets, and a scoring system.

Live site: `https://wish-ctf-training.netlify.app`
Source repo: `https://github.com/Wish-nz/CTF_Training-_App`

---

## 1. What We Built

The platform is a Progressive Web App (PWA) — a single `index.html` file that works in any browser and can be installed on a phone like a native app. It contains:

Features and details

- 17 practice challenges across 4 categories: Crypto, Web, Steganography, Forensics
- Decoder tools (decode + encode): Base64, Hex, ROT13, Morse, Base32, URL, Binary, ASCII
- Cheat sheets: Encoding, Web, Steganography, Forensics
- Scoring system: Tracks progress per challenge (3 = solved, 2 = hint, 1 = solution, 0 = not tried)
- Race-Day Playbook: Strategy notes for competition day
- Past write-ups: Reference solutions from previous years
- Tool setup checklist: Interactive checklist for installing required tools
- Offline support: Service worker caches the app shell so it works offline
- Installable: Manifest + icons → installable on Android as a PWA

### The 17 Challenges

| # | Title            | Category     | Skill/Notes                               |
|---|------------------|--------------|-------------------------------------------|
| 1 | Encoding         | Crypto       | Hex + Base64 decoding                     |
| 2 | Embedded ZIP     | Steg         | Hidden files in images                    |
| 3 | Headerless PNG   | Forensics    | File signature repair                     |
| 4 | Zero-Width       | Steg         | Zero-width character steganography        |
| 5 | Substitution     | Crypto       | Monoalphabetic substitution               |
| 6 | View Source      | Web          | Inspecting page source                    |
| 7 | Hidden Creds     | Web          | Credentials in source/comments            |
| 8 | Theme            | Web          | Inspecting CSS/theme files                |
| 9 | PCAP             | Forensics    | Packet capture analysis                   |
|10 | DOCX             | Forensics    | Extracting content from documents         |
|11 | Strings          | Steg         | `strings` command on binaries             |
|12 | Wrong Extension  | Forensics    | Renaming file extensions                  |
|13 | Morse            | Crypto       | Morse code decoding                       |
|14 | ROT13            | Crypto       | ROT13 cipher                              |
|15 | Base32           | Crypto       | Base32 decoding                           |
|16 | URL Encode       | Crypto       | URL encoding                              |
|17 | Binary           | Crypto       | Binary to ASCII decoding                  |

Each challenge has a description, a hint, a full solution, and a flag in the format `FLAG[...]`.

### Scoring

Scores are stored in the browser's `localStorage` under the key `nzcsc_scores`. Each challenge is worth up to 3 points:

- 3 points — solved without help
- 2 points — needed the hint
- 1 point — needed the solution
- 0 points — not tried

With 17 challenges × 3 points, the maximum total is 51 points. The dashboard shows a live total and a progress bar.

---

## 2. How We Built It

### Architecture: One File to Rule Them All

The entire app lives in a single `index.html` (~70 KB, ~850 lines) containing:

- HTML — page structure (7 sections: Dashboard, Cheat Sheets, Challenges, Decoder Tools, Race-Day Playbook, Past Write-ups, Tool Setup)
- CSS — styling, including a mobile-responsive layout with a hamburger-menu drawer
- JavaScript — all logic: challenge data, decoder functions, scoring, navigation, and the mobile menu

Because everything is in one file, updating the website and the Android PWA is the same action — edit `index.html`, and both update together. This was a deliberate design choice for simplicity.

### Supporting Files

| File | Purpose |
|------|---------|
| `index.html` | The entire app (HTML + CSS + JS) |
| `sw.js` | Service worker for offline support + PWA updates |
| `manifest.json` | PWA manifest (name, icons, theme) |
| `icons/icon-192.png`, `icons/icon-512.png` | App icons for install |
| `.gitignore` | Git ignore rules |

### Deployment Workflow: Git → Netlify

Key workflow:

- Local git repo in the `website/` folder tracks all changes
- Push to GitHub (`Wish-nz/CTF_Training-_App`, branch `main`)
- Netlify auto-deploys from the GitHub repo to `wish-ctf-training.netlify.app`

This means: edit → commit → push → live. No manual uploads needed after the initial setup.

---

## 3. The Journey: Issues We Encountered and How We Solved Them

This project wasn't smooth sailing — we hit several real-world problems. Here's the full story.

### Issue 1: Git Authentication on a Network Share

**Problem:** The project lives on a network share (`\\OPENMEDIAVAULT\...`). Git on this share initially refused to work, and HTTPS authentication via Git Credential Manager hung at a GUI prompt — making automated/scripted pushes unreliable.

**Solution:**
- Added the share to Git's `safe.directory` list so Git would trust it:

```bash
git config --global --add safe.directory '%(prefix)///OPENMEDIAVAULT/BigStorage/Openclaw working folder/Ctf training program/website'
```

- Generated an SSH deploy key (ed25519) and added it to the GitHub repo. SSH became the reliable push path.
- Configured `core.sshCommand` to use the key with forward slashes (a Windows quirk):

```text
ssh -i C:/Users/danny/.ssh/ctf_deploy -o StrictHostKeyChecking=accept-new
```

**Lesson:** On Windows/network shares, SSH deploy keys are far more reliable than HTTPS credential managers for automation.

---

### Issue 2: The Mobile Layout Redesign

**Problem:** The original layout didn't work well on phones — the sidebar navigation was clunky on small screens.

**Solution:** Redesigned the mobile layout to use a hamburger-menu drawer:

- A slide-in sidebar with a backdrop overlay
- A sticky top bar with the hamburger button
- Natural page scrolling
- Cards that fit mobile widths

**Gotcha learned:** The CSS media-query block must sit at the END of the stylesheet so it overrides the base rules. If it's placed earlier, base styles win and the mobile layout breaks.

---

### Issue 3: The "Broken Functions" Bug (The Big One)

**Problem:** After adding challenge 17, the user reported that all the functions stopped working on their phone — decoder tools, navigation, scoring, everything.

**Root cause:** A JavaScript syntax error. Challenge 17's `content` field contained a literal newline inside a double-quoted string:

```js
content:"A message made of only 0s and 1s. Split it into groups of 8.
<-- literal newline here (INVALID in JS)
0100011001001100..."
```

In JavaScript, a double-quoted string cannot span multiple lines. This single newline caused a parse error that killed the entire script — so every function became undefined and nothing worked.

**How we found it:** We tested the live site in a real browser and checked whether the functions were defined:

```js
typeof window.toolB64Decode  // → "undefined"
```

When all functions were undefined, we knew the whole script had failed to parse. We then inspected the challenge data and spotted the literal newline.

**The fix:** Replaced the literal newline with the escaped `\n\n`:

```js
content:"A message made of only 0s and 1s. Split it into groups of 8.\n\n0100011001001100..."
```

**Lesson:** A single invisible character can take down an entire app. Always test the live site after adding data, and check the browser console for parse errors.

---

### Issue 4: A Pre-Existing Morse Decode Bug

**Problem:** While testing, the Morse decoder always returned `????` instead of decoding.

**Root cause:** The `toolMorseDecode` function built its lookup map backwards. Example of the problematic code:

```js
// BUG: creates a letter→morse map, but the decoder looks up morse→letter
for (let k in MORSE) inv[MORSE[k]] = k;
```

**The fix:** Ensure the map is correctly inverted so the decoder can look up morse→letter. (Keep careful attention to the map construction and how the decoder queries it.)

**Lesson:** This bug was pre-existing (not caused by the challenge 17 update), but it only surfaced because we performed end-to-end testing. Testing every tool with real inputs catches bugs that unit tests might miss.

---

### Issue 5: The Phone Wouldn't Update (Service Worker Cache)

**Problem:** After fixing the bugs, the user's web browser showed the working site with challenge 17, but their phone still showed the broken version — even after the fix was deployed.

**Root cause:** The service worker used a cache-first strategy:

```js
caches.match(event.request).then((cached) => {
  if (cached) return cached;   // ALWAYS serves the cached copy if it exists
  return fetch(event.request); // only hits the network if NOT cached
});
```

Once the phone cached the broken version, it kept serving that broken copy forever — it never checked the server for updates.

**The fix:** Changed the service worker to network-first for navigation requests (HTML pages), so it always checks the server for the latest version, falling back to cache only when offline:

```js
if (event.request.mode === 'navigate') {
  event.respondWith(
    fetch(event.request)
      .then((response) => { /* cache fresh page, return it */ })
      .catch(() => caches.match(event.request))  // offline fallback
  );
  return;
}
```

Also bumped the cache name to `nzcsc-train-v3` so old caches get cleaned up.

**One-time user action:** Because the phone already had the broken version cached, the user needed to clear the site data (or uninstall/reinstall the PWA) once. After that, the network-first strategy meant future updates were received correctly.

**Lesson:** For a PWA that serves changing content, network-first for HTML is essential. Cache-first is fine for static assets (icons, images) but wrong for the main document.

---

## 4. Testing Methodology

We tested thoroughly in a real browser (Chrome via CDP) against both the local file and the live site:

- Function existence check — verified all 27 `onclick` functions were defined (catches script parse errors)
- Decoder tool tests — fed known inputs to each tool and verified the output:
  - Base64 `RkxBR3t0ZXN0fQ==` → `FLAG{test}`
  - Hex `464c4147` → `FLAG`
  - Morse `..-. / .-.. / .- / --.` → `F L A G`
  - Binary → `FLAG`
- Challenge rendering — confirmed all 17 cards render and challenge 17's binary decodes to `FLAG[4444444444444444]`
- Filtering — verified category filters (e.g., Crypto shows 7 challenges)
- Scoring — marked a challenge and confirmed the total and progress bar updated
- Navigation — clicked through all sections
- Mobile menu — verified the hamburger drawer opens/closes

---

## 5. Key Files & Where Things Live

```
Ctf training program/
├── website/                    # Source of truth (git repo)
│   ├── index.html              # The entire app
│   ├── sw.js                   # Service worker (network-first for HTML)
│   ├── manifest.json           # PWA manifest
│   ├── icons/                  # App icons
│   └── .gitignore
├── deploy/                     # Ready-to-deploy copy (for manual upload)
├── NZCSC-Training-Website.zip  # Zipped copy of all files
└── NZCSC-Training-Website-Writeup.md  # This document
```

---

## 6. Skills & Technologies Used

- HTML / CSS / JavaScript — the entire app
- Progressive Web App (PWA) — service worker, manifest, offline support, installable
- Git & GitHub — version control, SSH deploy keys, remote repo
- Netlify — continuous deployment from GitHub
- localStorage — client-side scoring persistence
- Browser DevTools / CDP — automated testing of the live site
- PowerShell — scripting, file management, git automation on Windows

---

## 7. What I Learned

- A single character can break everything. A literal newline in a JS string silently killed the whole app. Always check the console and test after changes.
- PWA caching is a double-edged sword. Cache-first is great for offline, but it can trap users on stale/broken versions. Network-first for HTML is the right call for content that changes.
- SSH deploy keys beat HTTPS credential managers on Windows/network shares for automation.
- Test the live site, not just locally. The local file worked, but the phone was stuck on a cached broken version — only live testing with a real browser revealed the full picture.
- Mobile-first design has its own rules. CSS media queries must come last, and a drawer menu is a much better mobile UX than a fixed sidebar.

---

Built for the NZCSC 2026 training program. Live at: https://wish-ctf-training.netlify.app
