---
# COVID19 death rates South Africa
---

#### Get data from:

COVID-19 Data Repository by the Center for Systems Science and Engineering (CSSE) at Johns Hopkins University


https://github.com/CSSEGISandData/COVID-19.git

    On branch master
    Your branch is up to date with 'origin/master'.
    
    nothing to commit, working tree clean
    Already up to date.
    On branch master
    Your branch is up to date with 'origin/master'.
    
    nothing to commit, working tree clean


#### Date and time

    It is now Mon Jun 29 07:04:55 2020 GMT+2


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
      <td>154</td>
      <td>2020-06-24</td>
      <td>111796</td>
      <td>2205</td>
      <td>111</td>
    </tr>
    <tr>
      <td>155</td>
      <td>2020-06-25</td>
      <td>118375</td>
      <td>2292</td>
      <td>112</td>
    </tr>
    <tr>
      <td>156</td>
      <td>2020-06-26</td>
      <td>124590</td>
      <td>2340</td>
      <td>113</td>
    </tr>
    <tr>
      <td>157</td>
      <td>2020-06-27</td>
      <td>131800</td>
      <td>2413</td>
      <td>114</td>
    </tr>
    <tr>
      <td>158</td>
      <td>2020-06-28</td>
      <td>138134</td>
      <td>2456</td>
      <td>115</td>
    </tr>
  </tbody>
</table>
</div>




![png](SA_cov_dr_files/SA_cov_dr_10_0.png)



![png](SA_cov_dr_files/SA_cov_dr_11_0.png)



![png](SA_cov_dr_files/SA_cov_dr_14_0.png)


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


![png](SA_cov_dr_files/SA_cov_dr_18_0.png)





<table class="simpletable">
<caption>OLS Regression Results</caption>
<tr>
  <th>Dep. Variable:</th>         <td>Deaths</td>      <th>  R-squared (uncentered):</th>      <td>   0.996</td> 
</tr>
<tr>
  <th>Model:</th>                   <td>OLS</td>       <th>  Adj. R-squared (uncentered):</th> <td>   0.996</td> 
</tr>
<tr>
  <th>Method:</th>             <td>Least Squares</td>  <th>  F-statistic:       </th>          <td>2.916e+04</td>
</tr>
<tr>
  <th>Date:</th>             <td>Mon, 29 Jun 2020</td> <th>  Prob (F-statistic):</th>          <td>3.48e-140</td>
</tr>
<tr>
  <th>Time:</th>                 <td>07:04:57</td>     <th>  Log-Likelihood:    </th>          <td> -621.75</td> 
</tr>
<tr>
  <th>No. Observations:</th>      <td>   116</td>      <th>  AIC:               </th>          <td>   1246.</td> 
</tr>
<tr>
  <th>Df Residuals:</th>          <td>   115</td>      <th>  BIC:               </th>          <td>   1248.</td> 
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
  <th>Confirmed</th> <td>    0.0199</td> <td>    0.000</td> <td>  170.752</td> <td> 0.000</td> <td>    0.020</td> <td>    0.020</td>
</tr>
</table>
<table class="simpletable">
<tr>
  <th>Omnibus:</th>       <td>58.612</td> <th>  Durbin-Watson:     </th> <td>   0.113</td> 
</tr>
<tr>
  <th>Prob(Omnibus):</th> <td> 0.000</td> <th>  Jarque-Bera (JB):  </th> <td> 500.900</td> 
</tr>
<tr>
  <th>Skew:</th>          <td>-1.404</td> <th>  Prob(JB):          </th> <td>1.70e-109</td>
</tr>
<tr>
  <th>Kurtosis:</th>      <td>12.785</td> <th>  Cond. No.          </th> <td>    1.00</td> 
</tr>
</table><br/><br/>Warnings:<br/>[1] Standard Errors assume that the covariance matrix of the errors is correctly specified.



    Using this very simple method we see a death rate of 1.99%


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



![png](SA_cov_dr_files/SA_cov_dr_29_0.png)





<table class="simpletable">
<caption>OLS Regression Results</caption>
<tr>
  <th>Dep. Variable:</th>         <td>Deaths</td>      <th>  R-squared (uncentered):</th>      <td>   0.992</td> 
</tr>
<tr>
  <th>Model:</th>                   <td>OLS</td>       <th>  Adj. R-squared (uncentered):</th> <td>   0.992</td> 
</tr>
<tr>
  <th>Method:</th>             <td>Least Squares</td>  <th>  F-statistic:       </th>          <td>1.197e+04</td>
</tr>
<tr>
  <th>Date:</th>             <td>Mon, 29 Jun 2020</td> <th>  Prob (F-statistic):</th>          <td>2.01e-103</td>
</tr>
<tr>
  <th>Time:</th>                 <td>07:04:57</td>     <th>  Log-Likelihood:    </th>          <td> -568.60</td> 
</tr>
<tr>
  <th>No. Observations:</th>      <td>    98</td>      <th>  AIC:               </th>          <td>   1139.</td> 
</tr>
<tr>
  <th>Df Residuals:</th>          <td>    97</td>      <th>  BIC:               </th>          <td>   1142.</td> 
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
  <th>Confirmed</th> <td>    0.0504</td> <td>    0.000</td> <td>  109.423</td> <td> 0.000</td> <td>    0.049</td> <td>    0.051</td>
</tr>
</table>
<table class="simpletable">
<tr>
  <th>Omnibus:</th>       <td>37.596</td> <th>  Durbin-Watson:     </th> <td>   0.064</td>
</tr>
<tr>
  <th>Prob(Omnibus):</th> <td> 0.000</td> <th>  Jarque-Bera (JB):  </th> <td> 138.737</td>
</tr>
<tr>
  <th>Skew:</th>          <td>-1.197</td> <th>  Prob(JB):          </th> <td>7.47e-31</td>
</tr>
<tr>
  <th>Kurtosis:</th>      <td> 8.315</td> <th>  Cond. No.          </th> <td>    1.00</td>
</tr>
</table><br/><br/>Warnings:<br/>[1] Standard Errors assume that the covariance matrix of the errors is correctly specified.



    Adjusting for time we find a death rate of 5.04%


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
      <td>93</td>
      <td>2020-06-06</td>
      <td>45973</td>
      <td>2020-06-24</td>
      <td>2205</td>
      <td>30648.0</td>
      <td>76621.0</td>
    </tr>
    <tr>
      <td>94</td>
      <td>2020-06-07</td>
      <td>48285</td>
      <td>2020-06-25</td>
      <td>2292</td>
      <td>32190.0</td>
      <td>80475.0</td>
    </tr>
    <tr>
      <td>95</td>
      <td>2020-06-08</td>
      <td>50879</td>
      <td>2020-06-26</td>
      <td>2340</td>
      <td>33919.0</td>
      <td>84798.0</td>
    </tr>
    <tr>
      <td>96</td>
      <td>2020-06-09</td>
      <td>52991</td>
      <td>2020-06-27</td>
      <td>2413</td>
      <td>35327.0</td>
      <td>88318.0</td>
    </tr>
    <tr>
      <td>97</td>
      <td>2020-06-10</td>
      <td>55421</td>
      <td>2020-06-28</td>
      <td>2456</td>
      <td>36947.0</td>
      <td>92368.0</td>
    </tr>
  </tbody>
</table>
</div>




![png](SA_cov_dr_files/SA_cov_dr_38_0.png)





<table class="simpletable">
<caption>OLS Regression Results</caption>
<tr>
  <th>Dep. Variable:</th>         <td>Deaths</td>      <th>  R-squared (uncentered):</th>      <td>   0.992</td> 
</tr>
<tr>
  <th>Model:</th>                   <td>OLS</td>       <th>  Adj. R-squared (uncentered):</th> <td>   0.992</td> 
</tr>
<tr>
  <th>Method:</th>             <td>Least Squares</td>  <th>  F-statistic:       </th>          <td>1.197e+04</td>
</tr>
<tr>
  <th>Date:</th>             <td>Mon, 29 Jun 2020</td> <th>  Prob (F-statistic):</th>          <td>2.02e-103</td>
</tr>
<tr>
  <th>Time:</th>                 <td>07:04:57</td>     <th>  Log-Likelihood:    </th>          <td> -568.61</td> 
</tr>
<tr>
  <th>No. Observations:</th>      <td>    98</td>      <th>  AIC:               </th>          <td>   1139.</td> 
</tr>
<tr>
  <th>Df Residuals:</th>          <td>    97</td>      <th>  BIC:               </th>          <td>   1142.</td> 
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
  <th>EstTotalInfected</th> <td>    0.0302</td> <td>    0.000</td> <td>  109.419</td> <td> 0.000</td> <td>    0.030</td> <td>    0.031</td>
</tr>
</table>
<table class="simpletable">
<tr>
  <th>Omnibus:</th>       <td>37.605</td> <th>  Durbin-Watson:     </th> <td>   0.064</td>
</tr>
<tr>
  <th>Prob(Omnibus):</th> <td> 0.000</td> <th>  Jarque-Bera (JB):  </th> <td> 138.786</td>
</tr>
<tr>
  <th>Skew:</th>          <td>-1.197</td> <th>  Prob(JB):          </th> <td>7.29e-31</td>
</tr>
<tr>
  <th>Kurtosis:</th>      <td> 8.316</td> <th>  Cond. No.          </th> <td>    1.00</td>
</tr>
</table><br/><br/>Warnings:<br/>[1] Standard Errors assume that the covariance matrix of the errors is correctly specified.



    The death rate adjusting for time and asymtomatic cases is 3.02%


---
Many things not considered

### Daily new


![png](SA_cov_dr_files/SA_cov_dr_44_0.png)



![png](SA_cov_dr_files/SA_cov_dr_45_0.png)



![png](SA_cov_dr_files/SA_cov_dr_46_0.png)


---

---
