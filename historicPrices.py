import yfinance as yf
import os
import time

a = yf.Ticker("9988.HK")
data = a.history(interval="1mo",start="2016-03-01",end="2021-03-02")
data.to_excel("historicPrices.xlsx")