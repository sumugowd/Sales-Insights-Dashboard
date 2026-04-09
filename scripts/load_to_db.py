import pandas as pd
import sqlite3

# Load cleaned data
df = pd.read_csv('data/processed/cleaned_sales_data.csv')

# Create connection
conn = sqlite3.connect('data/sales.db')

# Save to database
df.to_sql('sales', conn, if_exists='replace', index=False)

print("Data loaded successfully!")

conn.close()