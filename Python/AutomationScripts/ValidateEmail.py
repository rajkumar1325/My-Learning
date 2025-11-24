"""
    Validates an email address using a regular expression.

    Args:
        email: The email address to validate.

    Returns:
        True if the email is valid, False otherwise.
"""


# re --> regular expressions — a powerful module to search, match, and manipulate text based on patterns.
import re

def validate_email(email):
    # Regular expression for a valid email
    email_pattern = r"^[A-Za-z0-9._%+-] + @[A-Za-z0-9.-] + \.[A-Za-z]{2,}$"
    
    # Return True if expression matches the parameter, False otherwise
    if(re.match(email_pattern, email)):
        return True
    else:
        return False
    


# Test cases
emails = [
    "test@example.com",
    "invalid.email",
    "another_test@domain.co.uk",
    "not_valid@.com",
    "user+123@company.net"
]

# Validate each email and print the result
for email in emails:
    if validate_email(email):
        print(f"{email} is a valid email.")
    else:
        print(f"{email} is not a valid email.")
