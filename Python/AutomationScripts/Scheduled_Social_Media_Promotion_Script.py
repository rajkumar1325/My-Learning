import schedule      # Imports the schedule library used to schedule tasks
import time          # Imports time library to pause the program between checks

# Function that posts promotional messages
def promote_product():
    # Print promotional message as if posting to Twitter
    print("Posting to Twitter: New product alert! Check out https://www.example.com/new-product #newproduct")
    # Print promotional message as if posting to Facebook
    print("Posting to Facebook:  Our latest product is finally here! https://www.example.com/new-product")

# Schedule the function to run at 10:00 AM every day
schedule.every().day.at("10:00").do(promote_product)

# Schedule the function to run again at 4:00 PM every day
schedule.every().day.at("16:00").do(promote_product)

# Loop forever so the scheduler keeps running
while True:
    schedule.run_pending()   # Runs any scheduled tasks that are ready to run
    time.sleep(1)            # Wait one second before checking again (prevents high CPU usage)
