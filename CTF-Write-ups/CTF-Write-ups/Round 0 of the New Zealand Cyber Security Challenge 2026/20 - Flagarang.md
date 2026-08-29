# CTF Challenge Write-Up: Flagarang

## Challenge Overview

* **Files Involved:** `Bangarang.wav` (original) and `Flagarang.wav` (modified remix)
* **Objective:** Isolate the differences between the two audio tracks to extract the hidden data or visual payload.
* **Final Flag:** `NZCSC{4UDI0_ST3G0_M4ESTR0}`
* **webpage:** https://r0.nzcsc.org.nz/challenges#20%20-%20Flagarang-20

---

## Step-by-Step Solution Methodology

### 1. Initial Reconnaissance & Spectrogram Analysis

The challenge prompt hinted that the creator only changed the word "Bangarang" to "Flagarang" and mocked uncompressed audio formats. Opening both WAV files in **Audacity** and looking at the spectrogram revealed critical visual clues:

* **The Dimensions Hint:** Around the 2.0 to 3.0-second mark, the text **`1200 x 200`** was painted directly into the frequency spectrum, acting as a canvas dimension guide.
* **The Payload Block:** Further down the timeline, a distinct, dense block of frequency energy was spotted sitting between **6.25 seconds and 11.75 seconds**.

---

### 2. Formulating the Mathematical Approach

A canvas size of $1200 \times 200$ requires exactly **240,000 pixels**.

* At a standard audio sample rate of **44,100 Hz**, 240,000 samples translates to roughly **5.44 seconds** of audio data.
* This matched the precise duration of the payload block observed on the Audacity timeline between 6.25s and 11.75s.

Instead of parsing the entire 3-minute song (which introduced millions of bytes of irrelevant background music noise), the strategy required jumping directly to the start index of **6.25 seconds** and capturing exactly 240,000 sequential sample differences.

---

### 3. Writing the Python Extraction Script

To extract the hidden image, a Python script was built using `wave` to read the PCM frames, `struct` to unpack the 16-bit audio integers, and `PIL` (Pillow) to render the pixel grid.

Because audio workstations introduce microscopic floating-point rounding variations and background noise everywhere, a **noise threshold filter** (`threshold=500`) was added to ignore minor fluctuations and isolate only the intentional modifications.

```python
import wave
import struct
import os
from PIL import Image

def render_threshold_window(flag_path, orig_path, start_sec=6.25, width=1200, height=200, threshold=500):
    if not os.path.exists(flag_path) or not os.path.exists(orig_path):
        print("[-] Missing WAV files.")
        return

    print(f"[*] Opening WAV files and targeting window starting at {start_sec}s...")
    with wave.open(flag_path, 'rb') as f_wav, wave.open(orig_path, 'rb') as o_wav:
        framerate = f_wav.getframerate()
        n_channels = f_wav.getnchannels()
        sampwidth = f_wav.getsampwidth()
        
        f_frames = f_wav.readframes(f_wav.getnframes())
        o_frames = o_wav.readframes(o_wav.getnframes())
        
        fmt = f"<{len(f_frames)//sampwidth}h"
        f_samples = struct.unpack(fmt, f_frames)
        o_samples = struct.unpack(fmt, o_frames)

    # If stereo, take the left channel
    if n_channels == 2:
        f_samples = f_samples[0::2]
        o_samples = o_samples[0::2]

    # Calculate exact sample indices for the 1200x200 grid (240,000 total pixels)
    start_idx = int(start_sec * framerate)
    target_samples = width * height  # Exactly 240,000 samples
    end_idx = start_idx + target_samples

    f_window = f_samples[start_idx:end_idx]
    o_window = o_samples[start_idx:end_idx]

    # Render into the 1200 x 200 image canvas using the noise threshold
    img = Image.new('1', (width, height), color=0)
    pixels = img.load()

    i = 0
    for y in range(height):
        for x in range(width):
            if i < len(f_window):
                diff = abs(f_window[i] - o_window[i])
                # Only draw a white pixel if the difference exceeds background noise
                pixels[x, y] = 1 if diff > threshold else 0
                i += 1

    out_file = "Flag_Threshold_1200x200.png"
    img.save(out_file)
    print(f"[+] Success! Saved filtered image to {out_file}")

# Execute
render_threshold_window("Flagarang.wav", "Bangarang.wav", start_sec=6.25, width=1200, height=200, threshold=500)

```

---

### 4. Result & Conclusion

Running the script successfully generated `Flag_Threshold_1200x200.png`. Filtering out the baseline audio static cleanly resolved the pixelated text hidden in the frequency domain, revealing the plaintext flag:

> **`NZCSC{4UDI0_ST3G0_M4ESTR0}`**
