---
# COVID19 death rates South Africa
---

#### Get data from:

COVID-19 Data Repository by the Center for Systems Science and Engineering (CSSE) at Johns Hopkins University


https://github.com/CSSEGISandData/COVID-19.git

#### Date and time

    It is now Sun Jul 19 06:59:12 2020 GMT+2


---

### Confirmed cases and deaths

---

#### Table of last 5 rows

    |     | Date                |   Confirmed |   Deaths |   DaysFromFirst |
    |-----|---------------------|-------------|----------|-----------------|
    | 174 | 2020-07-14 00:00:00 |      298292 |     4346 |             131 |
    | 175 | 2020-07-15 00:00:00 |      311049 |     4453 |             132 |
    | 176 | 2020-07-16 00:00:00 |      324221 |     4669 |             133 |
    | 177 | 2020-07-17 00:00:00 |      337594 |     4804 |             134 |
    | 178 | 2020-07-18 00:00:00 |      350879 |     4948 |             135 |



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
  <th>Dep. Variable:</th>         <td>Deaths</td>      <th>  R-squared (uncentered):</th>      <td>   0.985</td> 
</tr>
<tr>
  <th>Model:</th>                   <td>OLS</td>       <th>  Adj. R-squared (uncentered):</th> <td>   0.985</td> 
</tr>
<tr>
  <th>Method:</th>             <td>Least Squares</td>  <th>  F-statistic:       </th>          <td>   8993.</td> 
</tr>
<tr>
  <th>Date:</th>             <td>Sun, 19 Jul 2020</td> <th>  Prob (F-statistic):</th>          <td>2.05e-125</td>
</tr>
<tr>
  <th>Time:</th>                 <td>06:59:14</td>     <th>  Log-Likelihood:    </th>          <td> -911.75</td> 
</tr>
<tr>
  <th>No. Observations:</th>      <td>   136</td>      <th>  AIC:               </th>          <td>   1826.</td> 
</tr>
<tr>
  <th>Df Residuals:</th>          <td>   135</td>      <th>  BIC:               </th>          <td>   1828.</td> 
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
  <th>Confirmed</th> <td>    0.0158</td> <td>    0.000</td> <td>   94.831</td> <td> 0.000</td> <td>    0.015</td> <td>    0.016</td>
</tr>
</table>
<table class="simpletable">
<tr>
  <th>Omnibus:</th>       <td>12.364</td> <th>  Durbin-Watson:     </th> <td>   0.019</td>
</tr>
<tr>
  <th>Prob(Omnibus):</th> <td> 0.002</td> <th>  Jarque-Bera (JB):  </th> <td>  23.817</td>
</tr>
<tr>
  <th>Skew:</th>          <td>-0.358</td> <th>  Prob(JB):          </th> <td>6.73e-06</td>
</tr>
<tr>
  <th>Kurtosis:</th>      <td> 4.921</td> <th>  Cond. No.          </th> <td>    1.00</td>
</tr>
</table><br/><br/>Warnings:<br/>[1] Standard Errors assume that the covariance matrix of the errors is correctly specified.



    Using this very simple method we see a death rate of 1.58%


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
  <th>Dep. Variable:</th>         <td>Deaths</td>      <th>  R-squared (uncentered):</th>      <td>   0.978</td>
</tr>
<tr>
  <th>Model:</th>                   <td>OLS</td>       <th>  Adj. R-squared (uncentered):</th> <td>   0.978</td>
</tr>
<tr>
  <th>Method:</th>             <td>Least Squares</td>  <th>  F-statistic:       </th>          <td>   5292.</td>
</tr>
<tr>
  <th>Date:</th>             <td>Sun, 19 Jul 2020</td> <th>  Prob (F-statistic):</th>          <td>2.97e-99</td>
</tr>
<tr>
  <th>Time:</th>                 <td>06:59:14</td>     <th>  Log-Likelihood:    </th>          <td> -821.89</td>
</tr>
<tr>
  <th>No. Observations:</th>      <td>   118</td>      <th>  AIC:               </th>          <td>   1646.</td>
</tr>
<tr>
  <th>Df Residuals:</th>          <td>   117</td>      <th>  BIC:               </th>          <td>   1649.</td>
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
  <th>Confirmed</th> <td>    0.0381</td> <td>    0.001</td> <td>   72.746</td> <td> 0.000</td> <td>    0.037</td> <td>    0.039</td>
</tr>
</table>
<table class="simpletable">
<tr>
  <th>Omnibus:</th>       <td>25.461</td> <th>  Durbin-Watson:     </th> <td>   0.019</td>
</tr>
<tr>
  <th>Prob(Omnibus):</th> <td> 0.000</td> <th>  Jarque-Bera (JB):  </th> <td>  55.370</td>
</tr>
<tr>
  <th>Skew:</th>          <td>-0.849</td> <th>  Prob(JB):          </th> <td>9.48e-13</td>
</tr>
<tr>
  <th>Kurtosis:</th>      <td> 5.894</td> <th>  Cond. No.          </th> <td>    1.00</td>
</tr>
</table><br/><br/>Warnings:<br/>[1] Standard Errors assume that the covariance matrix of the errors is correctly specified.



    Adjusting for time we find a death rate of 3.81%


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
    | 113 | 2020-06-26 00:00:00 |      124590 | 2020-07-14 00:00:00 |     4346 |          83060 |             207650 |
    | 114 | 2020-06-27 00:00:00 |      131800 | 2020-07-15 00:00:00 |     4453 |          87866 |             219666 |
    | 115 | 2020-06-28 00:00:00 |      138134 | 2020-07-16 00:00:00 |     4669 |          92089 |             230223 |
    | 116 | 2020-06-29 00:00:00 |      144264 | 2020-07-17 00:00:00 |     4804 |          96176 |             240440 |
    | 117 | 2020-06-30 00:00:00 |      151209 | 2020-07-18 00:00:00 |     4948 |         100806 |             252015 |



![png](SA_cov_dr_files/SA_cov_dr_39_0.png)





<table class="simpletable">
<caption>OLS Regression Results</caption>
<tr>
  <th>Dep. Variable:</th>         <td>Deaths</td>      <th>  R-squared (uncentered):</th>      <td>   0.978</td>
</tr>
<tr>
  <th>Model:</th>                   <td>OLS</td>       <th>  Adj. R-squared (uncentered):</th> <td>   0.978</td>
</tr>
<tr>
  <th>Method:</th>             <td>Least Squares</td>  <th>  F-statistic:       </th>          <td>   5292.</td>
</tr>
<tr>
  <th>Date:</th>             <td>Sun, 19 Jul 2020</td> <th>  Prob (F-statistic):</th>          <td>2.98e-99</td>
</tr>
<tr>
  <th>Time:</th>                 <td>06:59:15</td>     <th>  Log-Likelihood:    </th>          <td> -821.89</td>
</tr>
<tr>
  <th>No. Observations:</th>      <td>   118</td>      <th>  AIC:               </th>          <td>   1646.</td>
</tr>
<tr>
  <th>Df Residuals:</th>          <td>   117</td>      <th>  BIC:               </th>          <td>   1649.</td>
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
  <th>EstTotalInfected</th> <td>    0.0229</td> <td>    0.000</td> <td>   72.745</td> <td> 0.000</td> <td>    0.022</td> <td>    0.023</td>
</tr>
</table>
<table class="simpletable">
<tr>
  <th>Omnibus:</th>       <td>25.463</td> <th>  Durbin-Watson:     </th> <td>   0.019</td>
</tr>
<tr>
  <th>Prob(Omnibus):</th> <td> 0.000</td> <th>  Jarque-Bera (JB):  </th> <td>  55.376</td>
</tr>
<tr>
  <th>Skew:</th>          <td>-0.849</td> <th>  Prob(JB):          </th> <td>9.44e-13</td>
</tr>
<tr>
  <th>Kurtosis:</th>      <td> 5.895</td> <th>  Cond. No.          </th> <td>    1.00</td>
</tr>
</table><br/><br/>Warnings:<br/>[1] Standard Errors assume that the covariance matrix of the errors is correctly specified.



    The death rate adjusting for time and asymtomatic cases is 2.29%



![png](SA_cov_dr_files/SA_cov_dr_42_0.png)


---
Many things not considered

### Daily new


![png](SA_cov_dr_files/SA_cov_dr_46_0.png)



![png](SA_cov_dr_files/SA_cov_dr_47_0.png)



![png](SA_cov_dr_files/SA_cov_dr_48_0.png)


---

---
