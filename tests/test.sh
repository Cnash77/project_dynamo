#!/bin/bash
set -e

python3 /app/main.py

python3 - <<'PY'
import json

with open("/app/report.json") as f:
    report = json.load(f)

assert report["total_requests"] == 8
assert report["unique_ips"] == 4
assert report["top_path"] == "/index.html"

print("Verifier passed.")
PY

echo "1.0" > /app/reward.txt
