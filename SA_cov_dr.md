---
# COVID19 death rates South Africa
---

#### Get data from:

COVID-19 Data Repository by the Center for Systems Science and Engineering (CSSE) at Johns Hopkins University


https://github.com/CSSEGISandData/COVID-19.git

    On branch master
    Your branch is up to date with 'origin/master'.
    
    nothing to commit, working tree clean
    Updating d1a7ad24..19487e0c
    Fast-forward
     .../csse_covid_19_daily_reports/07-09-2020.csv     | 3807 ++++++++++++
     .../csse_covid_19_daily_reports_us/07-09-2020.csv  |   59 +
     .../time_series_covid19_confirmed_US.csv           | 6524 ++++++++++----------
     .../time_series_covid19_confirmed_global.csv       |  534 +-
     .../time_series_covid19_deaths_US.csv              | 6524 ++++++++++----------
     .../time_series_covid19_deaths_global.csv          |  534 +-
     .../time_series_covid19_recovered_global.csv       |  508 +-
     7 files changed, 11178 insertions(+), 7312 deletions(-)
     create mode 100644 csse_covid_19_data/csse_covid_19_daily_reports/07-09-2020.csv
     create mode 100644 csse_covid_19_data/csse_covid_19_daily_reports_us/07-09-2020.csv
    On branch master
    Your branch is up to date with 'origin/master'.
    
    nothing to commit, working tree clean


    From https://github.com/CSSEGISandData/COVID-19
       d1a7ad24..19487e0c  master     -> origin/master


#### Date and time

    It is now Fri Jul 10 06:57:59 2020 GMT+2


---

### Confirmed cases and deaths

---

#### Table of last 5 rows




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Date</th>
      <th>Confirmed</th>
      <th>Deaths</th>
      <th>DaysFromFirst</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>165</td>
      <td>2020-07-05</td>
      <td>196750</td>
      <td>3199</td>
      <td>122</td>
    </tr>
    <tr>
      <td>166</td>
      <td>2020-07-06</td>
      <td>205721</td>
      <td>3310</td>
      <td>123</td>
    </tr>
    <tr>
      <td>167</td>
      <td>2020-07-07</td>
      <td>215855</td>
      <td>3502</td>
      <td>124</td>
    </tr>
    <tr>
      <td>168</td>
      <td>2020-07-08</td>
      <td>224665</td>
      <td>3602</td>
      <td>125</td>
    </tr>
    <tr>
      <td>169</td>
      <td>2020-07-09</td>
      <td>238339</td>
      <td>3720</td>
      <td>126</td>
    </tr>
  </tbody>
</table>
</div>




![png](SA_cov_dr_files/SA_cov_dr_11_0.png)



![png](SA_cov_dr_files/SA_cov_dr_12_0.png)



![png](SA_cov_dr_files/SA_cov_dr_15_0.png)


---

### Death Rates

---

---
### Model 1
#### Most naive

**The simplest** is to plot deaths against confirmed SARS-COV2 positive people and use the slope to estimate this death rate.

* No account for asymptomatic people
* No adjustment from onset of symptoms to death
* No account for delays in reporting deaths or confirmed cases


![png](SA_cov_dr_files/SA_cov_dr_19_0.png)





<table class="simpletable">
<caption>OLS Regression Results</caption>
<tr>
  <th>Dep. Variable:</th>         <td>Deaths</td>      <th>  R-squared (uncentered):</th>      <td>   0.989</td> 
</tr>
<tr>
  <th>Model:</th>                   <td>OLS</td>       <th>  Adj. R-squared (uncentered):</th> <td>   0.989</td> 
</tr>
<tr>
  <th>Method:</th>             <td>Least Squares</td>  <th>  F-statistic:       </th>          <td>1.133e+04</td>
</tr>
<tr>
  <th>Date:</th>             <td>Fri, 10 Jul 2020</td> <th>  Prob (F-statistic):</th>          <td>2.79e-125</td>
</tr>
<tr>
  <th>Time:</th>                 <td>06:58:01</td>     <th>  Log-Likelihood:    </th>          <td> -795.12</td> 
</tr>
<tr>
  <th>No. Observations:</th>      <td>   127</td>      <th>  AIC:               </th>          <td>   1592.</td> 
</tr>
<tr>
  <th>Df Residuals:</th>          <td>   126</td>      <th>  BIC:               </th>          <td>   1595.</td> 
</tr>
<tr>
  <th>Df Model:</th>              <td>     1</td>      <th>                     </th>              <td> </td>    
</tr>
<tr>
  <th>Covariance Type:</th>      <td>nonrobust</td>    <th>                     </th>              <td> </td>    
</tr>
</table>
<table class="simpletable">
<tr>
      <td></td>         <th>coef</th>     <th>std err</th>      <th>t</th>      <th>P>|t|</th>  <th>[0.025</th>    <th>0.975]</th>  
</tr>
<tr>
  <th>Confirmed</th> <td>    0.0175</td> <td>    0.000</td> <td>  106.466</td> <td> 0.000</td> <td>    0.017</td> <td>    0.018</td>
</tr>
</table>
<table class="simpletable">
<tr>
  <th>Omnibus:</th>       <td>16.706</td> <th>  Durbin-Watson:     </th> <td>   0.035</td>
</tr>
<tr>
  <th>Prob(Omnibus):</th> <td> 0.000</td> <th>  Jarque-Bera (JB):  </th> <td>  41.295</td>
</tr>
<tr>
  <th>Skew:</th>          <td>-0.443</td> <th>  Prob(JB):          </th> <td>1.08e-09</td>
</tr>
<tr>
  <th>Kurtosis:</th>      <td> 5.650</td> <th>  Cond. No.          </th> <td>    1.00</td>
</tr>
</table><br/><br/>Warnings:<br/>[1] Standard Errors assume that the covariance matrix of the errors is correctly specified.



    Using this very simple method we see a death rate of 1.75%


---
### Model 2
#### Second most naive

* No account for asymptomatic people
* No account for delays in reporting deaths or confirmed cases

One of the difficulties in calculating the COVID-19 death rate is that it is hard to know what is the time between a positive test and death.  The test could have been done pre- or post-symptomatic

From: https://www.thelancet.com/journals/laninf/article/PIIS1473-3099(20)30243-7/fulltext

#### Findings

Using data on 24 deaths that occurred in mainland China and 165 recoveries outside of China, we estimated the mean duration from onset of symptoms to death to be 17·8 days (95% credible interval [CrI] 16·9–19·2) and to hospital discharge to be 24·7 days (22·9–28·1). In all laboratory confirmed and clinically diagnosed cases from mainland China (n=70 117), we estimated a crude case fatality ratio (adjusted for censoring) of 3·67% (95% CrI 3·56–3·80). However, after further adjusting for demography and under-ascertainment, we obtained a best estimate of the case fatality ratio in China of 1·38% (1·23–1·53), with substantially higher ratios in older age groups (0·32% [0·27–0·38] in those aged <60 years vs 6·4% [5·7–7·2] in those aged ≥60 years), up to 13·4% (11·2–15·9) in those aged 80 years or older. Estimates of case fatality ratio from international cases stratified by age were consistent with those from China (parametric estimate 1·4% [0·4–3·5] in those aged <60 years [n=360] and 4·5% [1·8–11·1] in those aged ≥60 years [n=151]). Our estimated overall infection fatality ratio for China was 0·66% (0·39–1·33), with an increasing profile with age. Similarly, estimates of the proportion of infected individuals likely to be hospitalised increased with age up to a maximum of 18·4% (11·0–37·6) in those aged 80 years or older.

    Using 18 days in the time adjustment



![png](SA_cov_dr_files/SA_cov_dr_30_0.png)





<table class="simpletable">
<caption>OLS Regression Results</caption>
<tr>
  <th>Dep. Variable:</th>         <td>Deaths</td>      <th>  R-squared (uncentered):</th>      <td>   0.984</td>
</tr>
<tr>
  <th>Model:</th>                   <td>OLS</td>       <th>  Adj. R-squared (uncentered):</th> <td>   0.983</td>
</tr>
<tr>
  <th>Method:</th>             <td>Least Squares</td>  <th>  F-statistic:       </th>          <td>   6498.</td>
</tr>
<tr>
  <th>Date:</th>             <td>Fri, 10 Jul 2020</td> <th>  Prob (F-statistic):</th>          <td>2.61e-98</td>
</tr>
<tr>
  <th>Time:</th>                 <td>06:58:01</td>     <th>  Log-Likelihood:    </th>          <td> -712.38</td>
</tr>
<tr>
  <th>No. Observations:</th>      <td>   109</td>      <th>  AIC:               </th>          <td>   1427.</td>
</tr>
<tr>
  <th>Df Residuals:</th>          <td>   108</td>      <th>  BIC:               </th>          <td>   1429.</td>
</tr>
<tr>
  <th>Df Model:</th>              <td>     1</td>      <th>                     </th>              <td> </td>   
</tr>
<tr>
  <th>Covariance Type:</th>      <td>nonrobust</td>    <th>                     </th>              <td> </td>   
</tr>
</table>
<table class="simpletable">
<tr>
      <td></td>         <th>coef</th>     <th>std err</th>      <th>t</th>      <th>P>|t|</th>  <th>[0.025</th>    <th>0.975]</th>  
</tr>
<tr>
  <th>Confirmed</th> <td>    0.0433</td> <td>    0.001</td> <td>   80.610</td> <td> 0.000</td> <td>    0.042</td> <td>    0.044</td>
</tr>
</table>
<table class="simpletable">
<tr>
  <th>Omnibus:</th>       <td>10.129</td> <th>  Durbin-Watson:     </th> <td>   0.024</td>
</tr>
<tr>
  <th>Prob(Omnibus):</th> <td> 0.006</td> <th>  Jarque-Bera (JB):  </th> <td>  15.024</td>
</tr>
<tr>
  <th>Skew:</th>          <td>-0.426</td> <th>  Prob(JB):          </th> <td>0.000546</td>
</tr>
<tr>
  <th>Kurtosis:</th>      <td> 4.607</td> <th>  Cond. No.          </th> <td>    1.00</td>
</tr>
</table><br/><br/>Warnings:<br/>[1] Standard Errors assume that the covariance matrix of the errors is correctly specified.



    Adjusting for time we find a death rate of 4.33%


---

### Model 3
#### Third most naive

* No account for delays in reporting deaths or confirmed cases
* Couch epidemiology

Use the time adjusted dataframe and adjust for asymptomatic

    Use an asymptomatic rate of 40.0%


Adjusting for asymptomatic infected people is another difficulty.  




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>testDate</th>
      <th>Confirmed</th>
      <th>deathDate</th>
      <th>Deaths</th>
      <th>Asymptomatic</th>
      <th>EstTotalInfected</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>104</td>
      <td>2020-06-17</td>
      <td>80412</td>
      <td>2020-07-05</td>
      <td>3199</td>
      <td>53608.0</td>
      <td>134020.0</td>
    </tr>
    <tr>
      <td>105</td>
      <td>2020-06-18</td>
      <td>83890</td>
      <td>2020-07-06</td>
      <td>3310</td>
      <td>55926.0</td>
      <td>139816.0</td>
    </tr>
    <tr>
      <td>106</td>
      <td>2020-06-19</td>
      <td>87715</td>
      <td>2020-07-07</td>
      <td>3502</td>
      <td>58476.0</td>
      <td>146191.0</td>
    </tr>
    <tr>
      <td>107</td>
      <td>2020-06-20</td>
      <td>92681</td>
      <td>2020-07-08</td>
      <td>3602</td>
      <td>61787.0</td>
      <td>154468.0</td>
    </tr>
    <tr>
      <td>108</td>
      <td>2020-06-21</td>
      <td>97302</td>
      <td>2020-07-09</td>
      <td>3720</td>
      <td>64868.0</td>
      <td>162170.0</td>
    </tr>
  </tbody>
</table>
</div>




![png](SA_cov_dr_files/SA_cov_dr_39_0.png)





<table class="simpletable">
<caption>OLS Regression Results</caption>
<tr>
  <th>Dep. Variable:</th>         <td>Deaths</td>      <th>  R-squared (uncentered):</th>      <td>   0.984</td>
</tr>
<tr>
  <th>Model:</th>                   <td>OLS</td>       <th>  Adj. R-squared (uncentered):</th> <td>   0.983</td>
</tr>
<tr>
  <th>Method:</th>             <td>Least Squares</td>  <th>  F-statistic:       </th>          <td>   6498.</td>
</tr>
<tr>
  <th>Date:</th>             <td>Fri, 10 Jul 2020</td> <th>  Prob (F-statistic):</th>          <td>2.61e-98</td>
</tr>
<tr>
  <th>Time:</th>                 <td>06:58:01</td>     <th>  Log-Likelihood:    </th>          <td> -712.39</td>
</tr>
<tr>
  <th>No. Observations:</th>      <td>   109</td>      <th>  AIC:               </th>          <td>   1427.</td>
</tr>
<tr>
  <th>Df Residuals:</th>          <td>   108</td>      <th>  BIC:               </th>          <td>   1429.</td>
</tr>
<tr>
  <th>Df Model:</th>              <td>     1</td>      <th>                     </th>              <td> </td>   
</tr>
<tr>
  <th>Covariance Type:</th>      <td>nonrobust</td>    <th>                     </th>              <td> </td>   
</tr>
</table>
<table class="simpletable">
<tr>
          <td></td>            <th>coef</th>     <th>std err</th>      <th>t</th>      <th>P>|t|</th>  <th>[0.025</th>    <th>0.975]</th>  
</tr>
<tr>
  <th>EstTotalInfected</th> <td>    0.0260</td> <td>    0.000</td> <td>   80.608</td> <td> 0.000</td> <td>    0.025</td> <td>    0.027</td>
</tr>
</table>
<table class="simpletable">
<tr>
  <th>Omnibus:</th>       <td>10.131</td> <th>  Durbin-Watson:     </th> <td>   0.024</td>
</tr>
<tr>
  <th>Prob(Omnibus):</th> <td> 0.006</td> <th>  Jarque-Bera (JB):  </th> <td>  15.028</td>
</tr>
<tr>
  <th>Skew:</th>          <td>-0.426</td> <th>  Prob(JB):          </th> <td>0.000545</td>
</tr>
<tr>
  <th>Kurtosis:</th>      <td> 4.607</td> <th>  Cond. No.          </th> <td>    1.00</td>
</tr>
</table><br/><br/>Warnings:<br/>[1] Standard Errors assume that the covariance matrix of the errors is correctly specified.



    The death rate adjusting for time and asymtomatic cases is 2.6%


---
Many things not considered

### Daily new


![png](SA_cov_dr_files/SA_cov_dr_45_0.png)



![png](SA_cov_dr_files/SA_cov_dr_46_0.png)



![png](SA_cov_dr_files/SA_cov_dr_47_0.png)


---

---
