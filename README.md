---
# COVID19 death rates South Africa
---

#### Get data from:

COVID-19 Data Repository by the Center for Systems Science and Engineering (CSSE) at Johns Hopkins University


https://github.com/CSSEGISandData/COVID-19.git

#### Date and time

    It is now Sun Jul 12 08:10:02 2020 GMT+2


---

### Confirmed cases and deaths

---

#### Table of last 5 rows

    |     | Date                |   Confirmed |   Deaths |   DaysFromFirst |
    |-----|---------------------|-------------|----------|-----------------|
    | 167 | 2020-07-07 00:00:00 |      215855 |     3502 |             124 |
    | 168 | 2020-07-08 00:00:00 |      224665 |     3602 |             125 |
    | 169 | 2020-07-09 00:00:00 |      238339 |     3720 |             126 |
    | 170 | 2020-07-10 00:00:00 |      250687 |     3860 |             127 |
    | 171 | 2020-07-11 00:00:00 |      264184 |     3971 |             128 |



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
  <th>Dep. Variable:</th>         <td>Deaths</td>      <th>  R-squared (uncentered):</th>      <td>   0.988</td> 
</tr>
<tr>
  <th>Model:</th>                   <td>OLS</td>       <th>  Adj. R-squared (uncentered):</th> <td>   0.988</td> 
</tr>
<tr>
  <th>Method:</th>             <td>Least Squares</td>  <th>  F-statistic:       </th>          <td>1.038e+04</td>
</tr>
<tr>
  <th>Date:</th>             <td>Sun, 12 Jul 2020</td> <th>  Prob (F-statistic):</th>          <td>2.16e-124</td>
</tr>
<tr>
  <th>Time:</th>                 <td>08:10:03</td>     <th>  Log-Likelihood:    </th>          <td> -823.12</td> 
</tr>
<tr>
  <th>No. Observations:</th>      <td>   129</td>      <th>  AIC:               </th>          <td>   1648.</td> 
</tr>
<tr>
  <th>Df Residuals:</th>          <td>   128</td>      <th>  BIC:               </th>          <td>   1651.</td> 
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
  <th>Confirmed</th> <td>    0.0171</td> <td>    0.000</td> <td>  101.882</td> <td> 0.000</td> <td>    0.017</td> <td>    0.017</td>
</tr>
</table>
<table class="simpletable">
<tr>
  <th>Omnibus:</th>       <td>21.063</td> <th>  Durbin-Watson:     </th> <td>   0.032</td>
</tr>
<tr>
  <th>Prob(Omnibus):</th> <td> 0.000</td> <th>  Jarque-Bera (JB):  </th> <td>  62.796</td>
</tr>
<tr>
  <th>Skew:</th>          <td>-0.518</td> <th>  Prob(JB):          </th> <td>2.31e-14</td>
</tr>
<tr>
  <th>Kurtosis:</th>      <td> 6.257</td> <th>  Cond. No.          </th> <td>    1.00</td>
</tr>
</table><br/><br/>Warnings:<br/>[1] Standard Errors assume that the covariance matrix of the errors is correctly specified.



    Using this very simple method we see a death rate of 1.71%


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
  <th>Method:</th>             <td>Least Squares</td>  <th>  F-statistic:       </th>          <td>   6533.</td> 
</tr>
<tr>
  <th>Date:</th>             <td>Sun, 12 Jul 2020</td> <th>  Prob (F-statistic):</th>          <td>8.52e-100</td>
</tr>
<tr>
  <th>Time:</th>                 <td>08:10:04</td>     <th>  Log-Likelihood:    </th>          <td> -733.65</td> 
</tr>
<tr>
  <th>No. Observations:</th>      <td>   111</td>      <th>  AIC:               </th>          <td>   1469.</td> 
</tr>
<tr>
  <th>Df Residuals:</th>          <td>   110</td>      <th>  BIC:               </th>          <td>   1472.</td> 
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
  <th>Confirmed</th> <td>    0.0422</td> <td>    0.001</td> <td>   80.827</td> <td> 0.000</td> <td>    0.041</td> <td>    0.043</td>
</tr>
</table>
<table class="simpletable">
<tr>
  <th>Omnibus:</th>       <td> 8.587</td> <th>  Durbin-Watson:     </th> <td>   0.021</td>
</tr>
<tr>
  <th>Prob(Omnibus):</th> <td> 0.014</td> <th>  Jarque-Bera (JB):  </th> <td>  12.457</td>
</tr>
<tr>
  <th>Skew:</th>          <td>-0.350</td> <th>  Prob(JB):          </th> <td> 0.00197</td>
</tr>
<tr>
  <th>Kurtosis:</th>      <td> 4.485</td> <th>  Cond. No.          </th> <td>    1.00</td>
</tr>
</table><br/><br/>Warnings:<br/>[1] Standard Errors assume that the covariance matrix of the errors is correctly specified.



    Adjusting for time we find a death rate of 4.22%


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
    | 106 | 2020-06-19 00:00:00 |       87715 | 2020-07-07 00:00:00 |     3502 |          58476 |             146191 |
    | 107 | 2020-06-20 00:00:00 |       92681 | 2020-07-08 00:00:00 |     3602 |          61787 |             154468 |
    | 108 | 2020-06-21 00:00:00 |       97302 | 2020-07-09 00:00:00 |     3720 |          64868 |             162170 |
    | 109 | 2020-06-22 00:00:00 |      101590 | 2020-07-10 00:00:00 |     3860 |          67726 |             169316 |
    | 110 | 2020-06-23 00:00:00 |      106108 | 2020-07-11 00:00:00 |     3971 |          70738 |             176846 |



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
  <th>Method:</th>             <td>Least Squares</td>  <th>  F-statistic:       </th>          <td>   6533.</td> 
</tr>
<tr>
  <th>Date:</th>             <td>Sun, 12 Jul 2020</td> <th>  Prob (F-statistic):</th>          <td>8.54e-100</td>
</tr>
<tr>
  <th>Time:</th>                 <td>08:10:04</td>     <th>  Log-Likelihood:    </th>          <td> -733.65</td> 
</tr>
<tr>
  <th>No. Observations:</th>      <td>   111</td>      <th>  AIC:               </th>          <td>   1469.</td> 
</tr>
<tr>
  <th>Df Residuals:</th>          <td>   110</td>      <th>  BIC:               </th>          <td>   1472.</td> 
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
  <th>EstTotalInfected</th> <td>    0.0253</td> <td>    0.000</td> <td>   80.825</td> <td> 0.000</td> <td>    0.025</td> <td>    0.026</td>
</tr>
</table>
<table class="simpletable">
<tr>
  <th>Omnibus:</th>       <td> 8.588</td> <th>  Durbin-Watson:     </th> <td>   0.021</td>
</tr>
<tr>
  <th>Prob(Omnibus):</th> <td> 0.014</td> <th>  Jarque-Bera (JB):  </th> <td>  12.459</td>
</tr>
<tr>
  <th>Skew:</th>          <td>-0.350</td> <th>  Prob(JB):          </th> <td> 0.00197</td>
</tr>
<tr>
  <th>Kurtosis:</th>      <td> 4.485</td> <th>  Cond. No.          </th> <td>    1.00</td>
</tr>
</table><br/><br/>Warnings:<br/>[1] Standard Errors assume that the covariance matrix of the errors is correctly specified.



    The death rate adjusting for time and asymtomatic cases is 2.53%


---
Many things not considered

### Daily new


![png](SA_cov_dr_files/SA_cov_dr_45_0.png)



![png](SA_cov_dr_files/SA_cov_dr_46_0.png)



![png](SA_cov_dr_files/SA_cov_dr_47_0.png)


---

---
