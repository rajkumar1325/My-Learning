"""
This Python script sends an automated email from your Gmail account to any recipient using:
    smtplib → to connect to Gmail’s SMTP server
    MIMEText → to build the email (subject, body, to/from)
    Your Gmail App Password → secure authentication

In simple terms:
👉 You call the function,
👉 It logs into your Gmail,
👉 Creates an email,
👉 Sends it automatically to the receiver,
👉 And prints “Email sent successfully!”
"""

import smtplib                        # Module used to connect to email servers (SMTP)
from email.mime.text import MIMEText   # Used to build a proper email message format (MIME)
    

def send_auto_email(sender_email, app_password, receiver_email, subject, body):
# Create a MIMEText object which represents the body of the email.
# This ensures the email is formatted correctly.
    message = MIMEText(body)

    # Set email headers (like addressing an envelope)
    message['Subject'] = subject        # Subject line of the email
    message['From'] = sender_email      # Email address the message is sent FROM
    message['To'] = receiver_email      # Email address the message is sent TO

    try:
        # Connect to Gmail SMTP server: smtp.gmail.com on port 587
        # Port 587 is used for secure (TLS) email sending
        server = smtplib.SMTP("smtp.gmail.com", 587)

        # Start TLS encryption (makes the connection secure)
        server.starttls()

        # Log into your Gmail account using your App Password
        # NOTE: This is NOT your normal Gmail password! Its App password --> generated under Google--> App Passwords
        server.login(sender_email, app_password)

        # Send the email message that we created above
        server.send_message(message)

        # If everything worked, print success message
        print("Email sent successfully!")

    except Exception as e:
        # If any error occurs (bad password, wrong email, server issue)
        print("Error:", e)

    finally:
        # Always close the connection to the server
        server.quit()
      
# Function call
send_auto_email(
    sender_email="sender-gmail@gmail.com",        # Your Gmail address
    app_password="your-app-password",             # Your Gmail App Password
    receiver_email="receiver@gmail.com",          # Who you want to send to
    subject="Automated Message",                  # Subject of the email
    body="Hello! This is an automated email sent from Python."  # Email content
)
