---
# COVID19 death rates South Africa
---

#### Get data from:

COVID-19 Data Repository by the Center for Systems Science and Engineering (CSSE) at Johns Hopkins University


https://github.com/CSSEGISandData/COVID-19.git

#### Date and time

    It is now Sat Jul 11 09:47:59 2020 GMT+2


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
    <tr>
      <td>170</td>
      <td>2020-07-10</td>
      <td>250687</td>
      <td>3860</td>
      <td>127</td>
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
  <th>Model:</th>                   <td>OLS</td>       <th>  Adj. R-squared (uncentered):</th> <td>   0.988</td> 
</tr>
<tr>
  <th>Method:</th>             <td>Least Squares</td>  <th>  F-statistic:       </th>          <td>1.094e+04</td>
</tr>
<tr>
  <th>Date:</th>             <td>Sat, 11 Jul 2020</td> <th>  Prob (F-statistic):</th>          <td>4.38e-125</td>
</tr>
<tr>
  <th>Time:</th>                 <td>09:48:00</td>     <th>  Log-Likelihood:    </th>          <td> -808.56</td> 
</tr>
<tr>
  <th>No. Observations:</th>      <td>   128</td>      <th>  AIC:               </th>          <td>   1619.</td> 
</tr>
<tr>
  <th>Df Residuals:</th>          <td>   127</td>      <th>  BIC:               </th>          <td>   1622.</td> 
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
  <th>Confirmed</th> <td>    0.0173</td> <td>    0.000</td> <td>  104.606</td> <td> 0.000</td> <td>    0.017</td> <td>    0.018</td>
</tr>
</table>
<table class="simpletable">
<tr>
  <th>Omnibus:</th>       <td>17.287</td> <th>  Durbin-Watson:     </th> <td>   0.032</td>
</tr>
<tr>
  <th>Prob(Omnibus):</th> <td> 0.000</td> <th>  Jarque-Bera (JB):  </th> <td>  45.012</td>
</tr>
<tr>
  <th>Skew:</th>          <td>-0.439</td> <th>  Prob(JB):          </th> <td>1.68e-10</td>
</tr>
<tr>
  <th>Kurtosis:</th>      <td> 5.769</td> <th>  Cond. No.          </th> <td>    1.00</td>
</tr>
</table><br/><br/>Warnings:<br/>[1] Standard Errors assume that the covariance matrix of the errors is correctly specified.



    Using this very simple method we see a death rate of 1.73%


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
  <th>Method:</th>             <td>Least Squares</td>  <th>  F-statistic:       </th>          <td>   6529.</td>
</tr>
<tr>
  <th>Date:</th>             <td>Sat, 11 Jul 2020</td> <th>  Prob (F-statistic):</th>          <td>4.20e-99</td>
</tr>
<tr>
  <th>Time:</th>                 <td>09:48:00</td>     <th>  Log-Likelihood:    </th>          <td> -722.91</td>
</tr>
<tr>
  <th>No. Observations:</th>      <td>   110</td>      <th>  AIC:               </th>          <td>   1448.</td>
</tr>
<tr>
  <th>Df Residuals:</th>          <td>   109</td>      <th>  BIC:               </th>          <td>   1451.</td>
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
  <th>Confirmed</th> <td>    0.0427</td> <td>    0.001</td> <td>   80.805</td> <td> 0.000</td> <td>    0.042</td> <td>    0.044</td>
</tr>
</table>
<table class="simpletable">
<tr>
  <th>Omnibus:</th>       <td> 8.822</td> <th>  Durbin-Watson:     </th> <td>   0.022</td>
</tr>
<tr>
  <th>Prob(Omnibus):</th> <td> 0.012</td> <th>  Jarque-Bera (JB):  </th> <td>  12.617</td>
</tr>
<tr>
  <th>Skew:</th>          <td>-0.372</td> <th>  Prob(JB):          </th> <td> 0.00182</td>
</tr>
<tr>
  <th>Kurtosis:</th>      <td> 4.483</td> <th>  Cond. No.          </th> <td>    1.00</td>
</tr>
</table><br/><br/>Warnings:<br/>[1] Standard Errors assume that the covariance matrix of the errors is correctly specified.



    Adjusting for time we find a death rate of 4.27%


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
    <tr>
      <td>109</td>
      <td>2020-06-22</td>
      <td>101590</td>
      <td>2020-07-10</td>
      <td>3860</td>
      <td>67726.0</td>
      <td>169316.0</td>
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
  <th>Method:</th>             <td>Least Squares</td>  <th>  F-statistic:       </th>          <td>   6529.</td>
</tr>
<tr>
  <th>Date:</th>             <td>Sat, 11 Jul 2020</td> <th>  Prob (F-statistic):</th>          <td>4.21e-99</td>
</tr>
<tr>
  <th>Time:</th>                 <td>09:48:01</td>     <th>  Log-Likelihood:    </th>          <td> -722.91</td>
</tr>
<tr>
  <th>No. Observations:</th>      <td>   110</td>      <th>  AIC:               </th>          <td>   1448.</td>
</tr>
<tr>
  <th>Df Residuals:</th>          <td>   109</td>      <th>  BIC:               </th>          <td>   1451.</td>
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
  <th>EstTotalInfected</th> <td>    0.0256</td> <td>    0.000</td> <td>   80.803</td> <td> 0.000</td> <td>    0.025</td> <td>    0.026</td>
</tr>
</table>
<table class="simpletable">
<tr>
  <th>Omnibus:</th>       <td> 8.823</td> <th>  Durbin-Watson:     </th> <td>   0.022</td>
</tr>
<tr>
  <th>Prob(Omnibus):</th> <td> 0.012</td> <th>  Jarque-Bera (JB):  </th> <td>  12.619</td>
</tr>
<tr>
  <th>Skew:</th>          <td>-0.372</td> <th>  Prob(JB):          </th> <td> 0.00182</td>
</tr>
<tr>
  <th>Kurtosis:</th>      <td> 4.484</td> <th>  Cond. No.          </th> <td>    1.00</td>
</tr>
</table><br/><br/>Warnings:<br/>[1] Standard Errors assume that the covariance matrix of the errors is correctly specified.



    The death rate adjusting for time and asymtomatic cases is 2.56%


---
Many things not considered

### Daily new


![png](SA_cov_dr_files/SA_cov_dr_45_0.png)



![png](SA_cov_dr_files/SA_cov_dr_46_0.png)



![png](SA_cov_dr_files/SA_cov_dr_47_0.png)


---

---
