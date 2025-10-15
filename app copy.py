# app.py
import requests

# ❌ This is an example of an AWS secret accidentally committed
AWS_ACCESS_KEY_ID = "AKIAIOSFODNN7EXAMPLE"
AWS_SECRET_ACCESS_KEY = "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY"

response = requests.get("https://api.example.com/data", auth=(AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY))
print(response.text)
