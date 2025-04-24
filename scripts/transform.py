
# Python transformation: compute total and prepare staging output

import pandas as pd

df = pd.read_csv('../data/ecommerce_orders.csv')
df['total'] = df['quantity'] * df['price']
df['order_date'] = pd.to_datetime(df['order_date'])

df.to_csv('../data/processed_orders.csv', index=False)
print("✅ Data transformed and saved to processed_orders.csv")
