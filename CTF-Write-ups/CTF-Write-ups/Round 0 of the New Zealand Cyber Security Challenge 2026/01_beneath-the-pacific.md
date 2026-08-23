
# NZCSC Write-up: Beneath the Pacific

## Challenge Description

**Category:** Web / Source Inspection  
**Target:** `https://chall01.r0.nzcsc.org.nz/`

The page described an unconfirmed packet sent from Waikato in 1989. The text said it had been “filed away rather than deleted” and suggested looking “under things,” indicating that the solution was likely hidden in the page source rather than the rendered webpage.

## Approach and Methodology

I used a source-inspection approach:

1. Downloaded the webpage HTML.
2. Searched the source for hidden elements, comments, links, and references to files or flags.
3. Found a hidden directory-style tree in an element with `style="display:none"`.
4. Interpreted the tree structure to identify the path leading to `flag.txt`.
5. Requested the recovered path directly and validated the returned flag format.

## Tools Used

- **PowerShell** — command-line environment.
- **Invoke-WebRequest** — downloaded the webpage source.
- **Select-String** — searched the source for clues.
- **curl.exe** — requested candidate paths and retrieved the flag.
- **Browser View Source / Developer Tools** — inspected hidden HTML content.

## Solution Walkthrough

First, I downloaded the target page and saved the source locally:

```powershell
$url = "https://chall01.r0.nzcsc.org.nz/"
$html = Invoke-WebRequest -Uri $url
$html.Content | Set-Content .\page.html
```

I searched the source for hidden content:

```powershell
Select-String -Path .\page.html `
  -Pattern "flag|hidden|packet|archive|internal-tree" `
  -CaseSensitive:$false
```

This revealed a hidden HTML element:

```html
<pre style="display:none" id="internal-tree">
```

The hidden element contained a directory-style tree:

```text
nzcsc/
├── ttl_b2a8e/
│   ├── hdr_81367c/
│   │   ├── byte_7af59/
│   │   ├── pkt_1e655b/
│   │   ├── route_cca09b/
│   │   ├── retx_00e5f0/
│   │   │   └── flag.txt
│   │   └── syn_13988/
```

Initially, I incorrectly treated `byte_7af59`, `pkt_1e655b`, `route_cca09b`, and `retx_00e5f0` as nested directories. That produced a `404 Not Found` response.

After reviewing the indentation, I identified that those entries were siblings. The only branch leading to `flag.txt` was:

```text
/ttl_b2a8e/hdr_81367c/retx_00e5f0/flag.txt
```

I retrieved the file with:

```powershell
$target = "https://chall01.r0.nzcsc.org.nz/ttl_b2a8e/hdr_81367c/retx_00e5f0/flag.txt"

curl.exe --path-as-is -i "$target"
```

The server returned `HTTP/1.1 200 OK` and the flag:

```text
NZCSC{unc0nf1rm3d_p4ck3t_1989}
```

## Flag

```text
NZCSC{unc0nf1rm3d_p4ck3t_1989}
```

## Key Learnings

- Inspect page source whenever a web challenge hints at hidden, unlisted, archived, or deleted content.
- Check HTML comments, hidden elements, scripts, stylesheets, and unlinked files.
- Read directory-tree indentation carefully: entries at the same indentation depth are siblings, not nested paths.
- On Windows PowerShell, use `curl.exe` when standard cURL behaviour is needed, because `curl` may map to `Invoke-WebRequest`.

  
