#!/usr/bin/python
import pyotp, os
AWS_MFA_TOTP_KEY = os.environ.get("AWS_MFA_SECRET_KEY")
totp = pyotp.TOTP(AWS_MFA_TOTP_KEY)
print(totp.now())