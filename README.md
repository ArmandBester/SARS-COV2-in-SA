---
# COVID19 death rates South Africa
---

#### Get data from:

COVID-19 Data Repository by the Center for Systems Science and Engineering (CSSE) at Johns Hopkins University


https://github.com/CSSEGISandData/COVID-19.git

#### Date and time

    It is now Tue Jul 14 06:25:57 2020 GMT+2


---

### Confirmed cases and deaths

---

#### Table of last 5 rows

    |     | Date                |   Confirmed |   Deaths |   DaysFromFirst |
    |-----|---------------------|-------------|----------|-----------------|
    | 168 | 2020-07-08 00:00:00 |      224665 |     3602 |             125 |
    | 169 | 2020-07-09 00:00:00 |      238339 |     3720 |             126 |
    | 170 | 2020-07-10 00:00:00 |      250687 |     3860 |             127 |
    | 171 | 2020-07-11 00:00:00 |      264184 |     3971 |             128 |
    | 172 | 2020-07-12 00:00:00 |      276242 |     4079 |             129 |



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
  <th>Dep. Variable:</th>         <td>Deaths</td>      <th>  R-squared (uncentered):</th>      <td>   0.987</td> 
</tr>
<tr>
  <th>Model:</th>                   <td>OLS</td>       <th>  Adj. R-squared (uncentered):</th> <td>   0.987</td> 
</tr>
<tr>
  <th>Method:</th>             <td>Least Squares</td>  <th>  F-statistic:       </th>          <td>   9838.</td> 
</tr>
<tr>
  <th>Date:</th>             <td>Tue, 14 Jul 2020</td> <th>  Prob (F-statistic):</th>          <td>1.19e-123</td>
</tr>
<tr>
  <th>Time:</th>                 <td>06:25:59</td>     <th>  Log-Likelihood:    </th>          <td> -837.77</td> 
</tr>
<tr>
  <th>No. Observations:</th>      <td>   130</td>      <th>  AIC:               </th>          <td>   1678.</td> 
</tr>
<tr>
  <th>Df Residuals:</th>          <td>   129</td>      <th>  BIC:               </th>          <td>   1680.</td> 
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
  <th>Confirmed</th> <td>    0.0169</td> <td>    0.000</td> <td>   99.185</td> <td> 0.000</td> <td>    0.017</td> <td>    0.017</td>
</tr>
</table>
<table class="simpletable">
<tr>
  <th>Omnibus:</th>       <td>24.167</td> <th>  Durbin-Watson:     </th> <td>   0.030</td>
</tr>
<tr>
  <th>Prob(Omnibus):</th> <td> 0.000</td> <th>  Jarque-Bera (JB):  </th> <td>  77.330</td>
</tr>
<tr>
  <th>Skew:</th>          <td>-0.593</td> <th>  Prob(JB):          </th> <td>1.61e-17</td>
</tr>
<tr>
  <th>Kurtosis:</th>      <td> 6.587</td> <th>  Cond. No.          </th> <td>    1.00</td>
</tr>
</table><br/><br/>Warnings:<br/>[1] Standard Errors assume that the covariance matrix of the errors is correctly specified.



    Using this very simple method we see a death rate of 1.69%


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
  <th>Dep. Variable:</th>         <td>Deaths</td>      <th>  R-squared (uncentered):</th>      <td>   0.983</td> 
</tr>
<tr>
  <th>Model:</th>                   <td>OLS</td>       <th>  Adj. R-squared (uncentered):</th> <td>   0.983</td> 
</tr>
<tr>
  <th>Method:</th>             <td>Least Squares</td>  <th>  F-statistic:       </th>          <td>   6423.</td> 
</tr>
<tr>
  <th>Date:</th>             <td>Tue, 14 Jul 2020</td> <th>  Prob (F-statistic):</th>          <td>4.50e-100</td>
</tr>
<tr>
  <th>Time:</th>                 <td>06:25:59</td>     <th>  Log-Likelihood:    </th>          <td> -745.34</td> 
</tr>
<tr>
  <th>No. Observations:</th>      <td>   112</td>      <th>  AIC:               </th>          <td>   1493.</td> 
</tr>
<tr>
  <th>Df Residuals:</th>          <td>   111</td>      <th>  BIC:               </th>          <td>   1495.</td> 
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
  <th>Confirmed</th> <td>    0.0417</td> <td>    0.001</td> <td>   80.146</td> <td> 0.000</td> <td>    0.041</td> <td>    0.043</td>
</tr>
</table>
<table class="simpletable">
<tr>
  <th>Omnibus:</th>       <td>11.024</td> <th>  Durbin-Watson:     </th> <td>   0.022</td>
</tr>
<tr>
  <th>Prob(Omnibus):</th> <td> 0.004</td> <th>  Jarque-Bera (JB):  </th> <td>  18.509</td>
</tr>
<tr>
  <th>Skew:</th>          <td>-0.406</td> <th>  Prob(JB):          </th> <td>9.57e-05</td>
</tr>
<tr>
  <th>Kurtosis:</th>      <td> 4.818</td> <th>  Cond. No.          </th> <td>    1.00</td>
</tr>
</table><br/><br/>Warnings:<br/>[1] Standard Errors assume that the covariance matrix of the errors is correctly specified.



    Adjusting for time we find a death rate of 4.17%


---

### Model 3
#### Third most naive

* No account for delays in reporting deaths or confirmed cases
* Couch epidemiology

Use the time adjusted dataframe and adjust for asymptomatic

    Use an asymptomatic rate of 40.0%


Adjusting for asymptomatic infected people is another difficulty.  

    |     | testDate            |   Confirmed | deathDate           |   Deaths |   Asymptomatic |   EstTotalInfected |
    |-----|---------------------|-------------|---------------------|----------|----------------|--------------------|
    | 107 | 2020-06-20 00:00:00 |       92681 | 2020-07-08 00:00:00 |     3602 |          61787 |             154468 |
    | 108 | 2020-06-21 00:00:00 |       97302 | 2020-07-09 00:00:00 |     3720 |          64868 |             162170 |
    | 109 | 2020-06-22 00:00:00 |      101590 | 2020-07-10 00:00:00 |     3860 |          67726 |             169316 |
    | 110 | 2020-06-23 00:00:00 |      106108 | 2020-07-11 00:00:00 |     3971 |          70738 |             176846 |
    | 111 | 2020-06-24 00:00:00 |      111796 | 2020-07-12 00:00:00 |     4079 |          74530 |             186326 |



![png](SA_cov_dr_files/SA_cov_dr_39_0.png)





<table class="simpletable">
<caption>OLS Regression Results</caption>
<tr>
  <th>Dep. Variable:</th>         <td>Deaths</td>      <th>  R-squared (uncentered):</th>      <td>   0.983</td> 
</tr>
<tr>
  <th>Model:</th>                   <td>OLS</td>       <th>  Adj. R-squared (uncentered):</th> <td>   0.983</td> 
</tr>
<tr>
  <th>Method:</th>             <td>Least Squares</td>  <th>  F-statistic:       </th>          <td>   6423.</td> 
</tr>
<tr>
  <th>Date:</th>             <td>Tue, 14 Jul 2020</td> <th>  Prob (F-statistic):</th>          <td>4.51e-100</td>
</tr>
<tr>
  <th>Time:</th>                 <td>06:25:59</td>     <th>  Log-Likelihood:    </th>          <td> -745.34</td> 
</tr>
<tr>
  <th>No. Observations:</th>      <td>   112</td>      <th>  AIC:               </th>          <td>   1493.</td> 
</tr>
<tr>
  <th>Df Residuals:</th>          <td>   111</td>      <th>  BIC:               </th>          <td>   1495.</td> 
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
  <th>EstTotalInfected</th> <td>    0.0250</td> <td>    0.000</td> <td>   80.145</td> <td> 0.000</td> <td>    0.024</td> <td>    0.026</td>
</tr>
</table>
<table class="simpletable">
<tr>
  <th>Omnibus:</th>       <td>11.025</td> <th>  Durbin-Watson:     </th> <td>   0.022</td>
</tr>
<tr>
  <th>Prob(Omnibus):</th> <td> 0.004</td> <th>  Jarque-Bera (JB):  </th> <td>  18.511</td>
</tr>
<tr>
  <th>Skew:</th>          <td>-0.406</td> <th>  Prob(JB):          </th> <td>9.56e-05</td>
</tr>
<tr>
  <th>Kurtosis:</th>      <td> 4.818</td> <th>  Cond. No.          </th> <td>    1.00</td>
</tr>
</table><br/><br/>Warnings:<br/>[1] Standard Errors assume that the covariance matrix of the errors is correctly specified.



    The death rate adjusting for time and asymtomatic cases is 2.5%


---
Many things not considered

### Daily new


![png](SA_cov_dr_files/SA_cov_dr_45_0.png)



![png](SA_cov_dr_files/SA_cov_dr_46_0.png)



![png](SA_cov_dr_files/SA_cov_dr_47_0.png)


---

---
