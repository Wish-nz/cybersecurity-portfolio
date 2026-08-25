# NOT COMPLETED!


# CTF Session Notes

## Challenge

- Competition: NZCSC 2026 Round 0
- Challenge: **17 – Network Checker**
- URL: `https://chall17.r0.nzcsc.org.nz/`
- Status: **Unsolved**
- Flag: **Not captured**

## Challenge description

> “We vibe coded a simple network program that can ping various sites. Too bad we locked it in a firewalled docker container so we can't really use it. Can you make this network checker do more than just check connectivity?”

## Confirmed request structure

The form uses:

```text
POST /
```

Parameter:

```text
target
```

PowerShell request format:

```powershell
curl.exe -sk -X POST "https://chall17.r0.nzcsc.org.nz/" --data-urlencode "target=<VALUE>"
```

Use `curl.exe`, not `curl`, because Windows PowerShell aliases `curl` to `Invoke-WebRequest`.

## Confirmed behaviour

| Input | Output |
|---|---|
| `127.0.0.1` | `success` |
| `localhost` | `success` |
| `127.0.0.2` | `success` |
| `127.0.0.1:80` | `failed` |
| `example.com` | `failed` |
| `tonzdef.com` | `failed` |
| `127.0.0.1.nip.io` | `failed` |
| `169.254.169.254` | `failed` |
| `10.0.0.1` | `failed` |
| `192.168.1.1` | `failed` |
| `127.0.0.1$(id)` | `failed` |
| `127.0.0.1` followed by newline and `id` | `failed` |
| `127.0.0.1&&id` | `failed` |
| `127.0.0.1&whoami` | `failed` |
| `127.0.0.1(whoami)` | `failed` |
| `127.0.0.1$` | `failed` |
| `127.0.0.1{` | `failed` |

## Confirmed input filters

These characters produce explicit rejection messages:

```text
;
|
`
```

Examples:

```text
127.0.0.1;pwd
→ banned char: ;

127.0.0.1|whoami
→ banned char: |

127.0.0.1`whoami
→ banned char: `
```

The following characters passed the filter but resulted in `failed`:

```text
&
(
)
$
{
```

## Current hypothesis

**Likely:** The hint points toward command injection or another way to make the ping checker perform an additional action.

**Unconfirmed:** Whether the backend invokes a shell.

Possible backend designs:

```python
os.system("ping -c 1 " + target)
```

or:

```python
subprocess.run(["ping", "-c", "1", target])
```

The second version would treat shell metacharacters as ordinary input, explaining the failed injection attempts.

## Important learning point

The output is only:

```text
success
failed
banned char: X
```

That means any successful exploit may be **blind**: we might not see command output directly and may need to infer results from `success` versus `failed`.

## Avoid repeating

- Do not keep trying random public domains; external DNS/ICMP appears unavailable.
- Do not use `127.0.0.1:80`; ping checks hosts, not TCP ports.
- Do not use `curl` without `.exe` in Windows PowerShell.
- Do not use the wrong hostname: the correct host includes `.r0`:

```text
chall17.r0.nzcsc.org.nz
```

## Recommended next actions

1. Inspect the challenge listing for additional hints or attached files.
2. Inspect the exact response headers:

   ```powershell
   curl.exe -ski -X POST "https://chall17.r0.nzcsc.org.nz/" --data-urlencode "target=127.0.0.1"
   ```

3. Try IPv6 localhost:

   ```powershell
   curl.exe -sk -X POST "https://chall17.r0.nzcsc.org.nz/" --data-urlencode "target=::1"
   ```

4. Inspect the page source for comments, JavaScript, hidden fields, or unusual endpoints:

   ```powershell
   curl.exe -sk "https://chall17.r0.nzcsc.org.nz/"
   ```

5. Continue with controlled tests rather than copying exploit payloads blindly: change one input property at a time and record the result.

## Resume point

We stopped after confirming that:

```text
127.0.0.1{ → failed
```

The challenge remains unsolved, and no command execution or flag location has been confirmed.
