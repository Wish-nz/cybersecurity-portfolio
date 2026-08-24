# Core Log — CTF Write-up

## Challenge Overview

**Challenge:** Core Log  
**Category:** Forensics / Data Analysis  
**Target:** `https://chall03.r0.nzcsc.org.nz/`

The challenge provides 1,000 reactor telemetry records covering:

- Pressure
- Coolant flow
- Core temperature
- Pump speed

The objective is to determine whether the reactor accident was caused by manipulated sensor data and recover the hidden flag.

**Flag:**

```text
NZCSC{B4S3LIN3_D3V1AT10N}
```

## Initial Inspection

The page identifies the dataset as `CORE-TEMP-LOG` and displays 1,000 rows. The temperature section is labelled:

```text
Core Temp °F/°C
```

However, the table column itself reports the values as:

```text
CORE TEMP (°F)
```

This inconsistency is suspicious. It suggests that some temperature readings may have been recorded using the wrong unit.

The logs use sequential sensor tags such as:

```text
RCS-T101
RCS-T102
RCS-T103
```

Each record is separated by 30 seconds, allowing the streams to be aligned by row and timestamp.

## Normal Operating Baseline

During normal operation, the core temperature remains approximately within this range:

```text
570°F–640°F
```

This establishes the expected baseline for the temperature sensor.

The pump-speed stream also behaves normally for most of the dataset, remaining around:

```text
1,770–1,800 RPM
```

The pump eventually begins a sustained decline and reaches zero. The final records show the pump offline followed by:

```text
CORE OVERHEAT: LOGGING OFFLINE
```

This confirms the accident sequence, but the pump shutdown itself is not the hidden message. [chall03.r0.nzcsc.org](https://chall03.r0.nzcsc.org.nz/)

## Finding the Anomalies

The temperature data contains 25 values that are clearly outside the established baseline. These values range from approximately:

```text
118.4°F–257.0°F
```

They occur at highly regular intervals, roughly every 38 records. This regular spacing is unlikely to be natural sensor noise.

The anomalous values are also carefully selected. When interpreted as Celsius values and converted to Fahrenheit, they correspond to integer ASCII codes.

This provides two indicators of deliberate manipulation:

1. The readings are physically inconsistent with the reactor’s normal temperature.
2. The values encode printable ASCII characters after unit conversion.

## Decoding the Values

The table header provides the required clue: `°F/°C`.

Although the anomalous values are displayed as Fahrenheit, treat them as Celsius values and convert them to Fahrenheit using:

\[
F = C \times \frac{9}{5} + 32
\]

Equivalently, if the displayed value is labelled \(F\) but was actually entered as a Celsius-equivalent value, calculate:

\[
C = (F - 32) \times \frac{5}{9}
\]

The resulting values are integers that map directly to ASCII characters.

For example:

| Displayed value | Converted value | ASCII |
|---:|---:|:---|
| 172.4 | 78 | `N` |
| 194.0 | 90 | `Z` |
| 152.6 | 67 | `C` |
| 181.4 | 83 | `S` |
| 253.4 | 123 | `{` |

Repeating this for every anomalous temperature reading produces:

```text
NZCSC{B4S3LIN3_D3V1AT10N}
```

## Decoded Character Sequence

The anomalous values decode in row order as follows:

```text
N Z C S C { B 4 S 3 L I N 3 _ D 3 V 1 A T 1 0 N }
```

Combining the characters gives the final flag:

```text
NZCSC{B4S3LIN3_D3V1AT10N}
```

## Incident Interpretation

The reactor did experience a genuine shutdown sequence: pump speed gradually decreased until it reached `0 RPM`, after which the log reported a core overheat and went offline. [chall03.r0.nzcsc.org](https://chall03.r0.nzcsc.org.nz/)

However, the strongest evidence of foul play is in the temperature stream. The 25 outliers are:

- Outside the normal operating range.
- Regularly spaced.
- Encoded using the unit mismatch shown in the table metadata.
- Decodable into a meaningful CTF flag.

This indicates that someone deliberately inserted or altered temperature readings to create a hidden message while also producing a detectable deviation from the reactor’s normal baseline.

## Reproduction Script

The decoding can be reproduced with Python:

```python
values = [
    172.4, 194.0, 152.6, 181.4, 152.6,
    253.4, 150.8, 125.6, 181.4, 123.8,
    168.8, 163.4, 172.4, 123.8, 203.0,
    154.4, 123.8, 186.8, 120.2, 149.0,
    183.2, 120.2, 118.4, 172.4, 257.0
]

decoded = ""

for value in values:
    ascii_value = round((value - 32) * 5 / 9)
    decoded += chr(ascii_value)

print(decoded)
```

Expected output:

```text
NZCSC{B4S3LIN3_D3V1AT10N}
```

## Conclusion

The reactor logs contain a deliberately planted pattern in the core-temperature readings. The anomalous values deviate from the normal baseline and become ASCII characters when decoded using the implied Fahrenheit/Celsius conversion.

The recovered flag is:

```text
NZCSC{B4S3LIN3_D3V1AT10N}
```
