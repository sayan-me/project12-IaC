#! /usr/bin/python3
import pyotp
AWS_MFA_TOTP_KEY = "${{ secrets.AWS_MFA_TOTP_KEY }}"
totp = pyotp.TOTP(AWS_MFA_TOTP_KEY)
print(f"AWS_MFA_OTP={totp.now()}")