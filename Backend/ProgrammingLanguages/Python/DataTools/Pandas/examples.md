```python
  # Example was given out from the ML course in WQ university
  import pandas as pd
  from sklearn.datasets import fetch_california_housing

  data = fetch_california_housing()
  # Downloading Cal. housing from https://ndownloader.figshare.com/files/5976036 to /home/jovyan/scikit_learn_data

  x = pd.DataFrame(data['data'], columns=data['feature_names'])
  # x = pd.DataFrame(data.data, columns=data.feature_names)
  x.head()

  # output

  #   MedInc  HouseAge  AveRooms  AveBedrms Population  AveOccup  Latitude  Longitude
  # 0 8.3252  41.0      6.984127  1.023810  322.0       2.555556  37.88     -122.23
  # 1 8.3014  21.0      6.238137  0.971880  2401.0      2.109842  37.86     -122.22
  # 2 7.2574  52.0      8.288136  1.073446  496.0       2.802260  37.85     -122.24
  # 3 5.6431  52.0      5.817352  1.073059  558.0       2.547945  37.85     -122.25
  # 4 3.8462  52.0      6.281853  1.081081  565.0       2.181467  37.85     -122.25

  import matplotlib.pyplot as plt

  plt.scatter(x['MedInc'], y)
  plt.xlabel('Median Income')
  plt.ylabel('Average Price')
  plt.show()

  # avg price = a*(median income) + b
  ########################################
  # a*(median income) + b <=> y = mx + c #
  # m: coefficient of x                  #
  # c: intercept                         #
  ########################################
  # what is a and b? What values of a and b will give me a "good" fit to this data

  from sklearn.linear_model import LinearRegression

  lr = LinearRegression()
  lr.fit(x['MedInc'].values.reshape(-1, 1), y)
  # LinearRegression(copy_X=True, fit_intercept=True, n_jobs=None, normalize=False)
  lr.coef_
  # array([0.41793849])
  lr.intercept_
  # 0.45085576703267893
```