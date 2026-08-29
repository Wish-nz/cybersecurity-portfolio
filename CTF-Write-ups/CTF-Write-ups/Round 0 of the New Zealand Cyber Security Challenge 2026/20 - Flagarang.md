# CTF Challenge Write-Up: Flagarang

## Challenge Overview

* **Files Involved:** `Bangarang.wav` (original) and `Flagarang.wav` (modified remix)
* **Objective:** Isolate the audio differences between the two files to extract the hidden steganographic payload.
* **Final Flag:** `NZCSC{4UDI0_ST3G0_M4ESTR0}`
* **webpage:** https://r0.nzcsc.org.nz/challenges#20%20-%20Flagarang-20

---

## Step-by-Step Solution

### Step 1: Discovering the Visual Hint (Inverting and Combining Tracks)

To find out what changed between the tracks, both audio files were loaded into an audio workstation (Audacity). By **flipping (phase-inverting) `Flagarang.wav` and combining/mixing it with `Bangarang.wav**`, the shared music elements cancelled each other out, leaving behind only the hidden differences.

Looking at the resulting track's spectrogram revealed a visual signpost: the text **`1200 x 200`** painted directly into the frequencies early in the timeline, indicating the target image dimensions and confirming the steganography method. Further down the timeline, a distinct block of data noise was visible between **6.25 seconds and 11.75 seconds**.

---

### Step 2: Calculating the Sample Window

A canvas resolution of $1200 \times 200$ requires exactly **240,000 pixels**.

* At a standard audio sample rate of **44,100 Hz**, 240,000 samples maps to a duration of roughly **5.44 seconds**.
* This duration matched the boundaries of the data payload block observed on the Audacity timeline between **6.25s and 11.75s**.

---

### Step 3: Writing the Python Extraction Script

Rather than parsing the entire audio file, a Python script was written to jump directly to the **6.25-second** mark, extract exactly 240,000 sequential samples, and map them onto a 1200x200 pixel grid.

To filter out microscopic background static and audio workstation rounding noise, a **noise threshold filter** (`threshold=500`) was applied so only significant amplitude differences registered as white pixels.

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

### Step 4: Conclusion & Flag Retrieval

Executing the script successfully generated `Flag_Threshold_1200x200.png`, cleanly rendering the hidden image and revealing the flag text:

> **`NZCSC{4UDI0_ST3G0_M4ESTR0}`**
