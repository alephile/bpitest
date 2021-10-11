import pandas as pd
import os
from sklearn import preprocessing
import matplotlib.pyplot as plt

BASE_FOLDER = "/Users/danieligbokwe/Desktop/"
df1 = pd.read_csv(BASE_FOLDER + "micro_data_avg.csv", parse_dates=["date"])


df = df1.drop(['date'], axis=1)
x = df.values #returns a numpy array
min_max_scaler = preprocessing.MinMaxScaler()
x_scaled = min_max_scaler.fit_transform(x)
df = pd.DataFrame(x_scaled)

plt.figure(figsize=(15, 5));
plt.subplot(1,2,1);
#plt.plot(df[0], color='green', label='bicycle (usd)')
plt.plot(df[1], color='red', label='bicycle (btc)')
#plt.plot(df[2], color='blue', label='handbag (usd)')
plt.plot(df[3], color='black', label='handbag (btc)')
#plt.plot(df[4], color='yellow', label='refrigerator (usd)')
plt.plot(df[5], color='purple', label='refrigerator (btc)')
#plt.plot(df[6], color='pink', label='tire (usd)')
plt.plot(df[7], color='brown', label='tire (btc)')
#plt.plot(df[8], color='grey', label='Washing Machine (usd)')
plt.plot(df[9], color='blue', label='Washing Machine (btc)')

plt.title('Bitcoin Price index compared against CPI of selected Items')
plt.xlabel('time [months]')
plt.ylabel('normalized price [BTC]')
plt.legend(loc='best')

plt.show()