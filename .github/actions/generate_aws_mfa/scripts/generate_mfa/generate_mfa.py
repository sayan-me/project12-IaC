# ! /usr/bin/python
import pyotp
AWS_MFA_TOTP_KEY = "$INPUT_MFA-SECRET-KEY"
totp = pyotp.TOTP(AWS_MFA_TOTP_KEY)
print(f"AWS_MFA_OTP={totp.now()}")