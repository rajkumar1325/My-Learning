# The code loads a webpage → scrapes a baseball stats table → converts it into a DataFrame → saves it as a CSV file.


<!DOCTYPE html>
<html>
<head>
  <title>Baseball Game Statistics</title>
</head>
<body>

  <h1>Baseball Game Statistics</h1>

  <table>
    <thead>
      <tr>
        <th>GameID</th>
        <th>Team 1</th>
        <th>Team 2</th>
        <th>Expected Runs (Team 1)</th>
        <th>Expected Runs (Team 2)</th>
        <th>Over/Under</th>
        <th>Moneyline Favorite</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>1</td>
        <td>Chicago Firebirds</td>
        <td>San Francisco Waves</td>
        <td>4.5</td>
        <td>3.8</td>
        <td>8.5</td>
        <td>Chicago Firebirds</td>
      </tr>
      <tr>
        <td>2</td>
        <td>New York Knights</td>
        <td>Miami Sharks</td>
        <td>5.2</td>
        <td>4.1</td>
        <td>9.0</td>
        <td>New York Knights</td>
      </tr>
      <tr>
        <td>3</td>
        <td>Los Angeles Stars</td>
        <td>Seattle Thunder</td>
        <td>4.8</td>
        <td>3.9</td>
        <td>8.7</td> 
        <td>Los Angeles Stars</td> 
      </tr>
      <tr>
        <td>4</td>
        <td>Dallas Outlaws</td>
        <td>Denver Mountaineers</td>
        <td>4.2</td>
        <td>3.7</td>
        <td>7.9</td>
        <td>Dallas Outlaws</td>
      </tr>
      <tr>
        <td>5</td>
        <td>Phoenix Suns</td>
        <td>Orlando Storm</td>
        <td>5.1</td>
        <td>4.0</td>
        <td>9.1</td>
        <td>Phoenix Suns</td> 
      </tr>
      <tr>
        <td>6</td>
        <td>Chicago Firebirds</td>
        <td>New York Knights</td>
        <td>4.7</td>
        <td>4.3</td>
        <td>9.0</td>
        <td>Chicago Firebirds</td>
      </tr>
      <tr>
        <td>7</td>
        <td>Miami Sharks</td>
        <td>Los Angeles Stars</td>
        <td>4.6</td>
        <td>4.1</td>
        <td>8.7</td>
        <td>Miami Sharks</td>
      </tr>
      <tr>
        <td>8</td>
        <td>Seattle Thunder</td>
        <td>Dallas Outlaws</td>
        <td>4.4</td>
        <td>3.8</td>
        <td>8.2</td>
        <td>Seattle Thunder</td>
      </tr>
      <tr>
        <td>9</td>
        <td>Denver Mountaineers</td>
        <td>Phoenix Suns</td>
        <td>4.9</td>
        <td>4.2</td>
        <td>9.1</td>
        <td>Denver Mountaineers</td> 
      </tr>
      <tr>
        <td>10</td>
        <td>Orlando Storm</td>
        <td>Chicago Firebirds</td>
        <td>4.3</td>
        <td>3.6</td>
        <td>7.9</td>
        <td>Orlando Storm</td>
      </tr> 
    </tbody>
  </table>

</body>
</html>
















# Step 3.1: Fetch HTML Content
# Please be careful to follow instructions on how to run the program; 
# the Run menu or right-click > Run options do not work in the simulated environment. 
# Ensure you have run the terminal command to install the correct libraries using pip.
# You must use the terminal window as directed in Step 3.
### YOUR CODE HERE ###
import requests
from bs4 import BeautifulSoup

# Fetch the webpage content
url = "http://127.0.0.1:5500/baseball_stats.html"
response = requests.get(url)
soup = BeautifulSoup(response.text, 'html.parser')

# Print the HTML content to inspect
print(soup.prettify())



# Step 3.2: Extract the Required Data
### YOUR CODE HERE ###
# Assuming the HTML contains a table:
# <table>
#   <tr><th>Date</th><th>Team</th><th>Runs</th></tr>
#   <tr><td>...</td><td>...</td><td>...</td></tr>

table = soup.find("table")
rows = table.find_all("tr")

game_data = []

# Extract table headers
headers = [th.get_text().strip() for th in rows[0].find_all("th")]

# Extract each row of data
for row in rows[1:]:
    cells = [td.get_text().strip() for td in row.find_all("td")]
    game_data.append(cells)



# Step 4.1: Convert to a DataFrame
# Import pandas
### YOUR CODE HERE ###
import pandas as pd

# Convert the game data into a pandas DataFrame
### YOUR CODE HERE ###
df = pd.DataFrame(game_data, columns=headers)

# Inspect the DataFrame
### YOUR CODE HERE ###
print(df)
print(df.info())

# Save and print the shaped data
### YOUR CODE HERE ###
print(df.shape)
print(df.head())



# Step 5.1: Save to a CSV File
# Save the DataFrame to a CSV file named sports_statistics.csv
### YOUR CODE HERE ###
df.to_csv("sports_statistics.csv", index=False)
print("CSV saved as sports_statistics.csv")
