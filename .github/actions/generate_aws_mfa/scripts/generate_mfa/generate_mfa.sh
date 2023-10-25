#!/usr/bin/python
import pyotp, os
AWS_MFA_TOTP_KEY = os.environ.get("$INPUT_MFA-SECRET-KEY")
totp = pyotp.TOTP(AWS_MFA_TOTP_KEY)
print(f"AWS_MFA_OTP={totp.now()}")