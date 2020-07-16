---
# COVID19 death rates South Africa
---

#### Get data from:

COVID-19 Data Repository by the Center for Systems Science and Engineering (CSSE) at Johns Hopkins University


https://github.com/CSSEGISandData/COVID-19.git

#### Date and time

    It is now Thu Jul 16 06:48:38 2020 GMT+2


---

### Confirmed cases and deaths

---

#### Table of last 5 rows

    |     | Date                |   Confirmed |   Deaths |   DaysFromFirst |
    |-----|---------------------|-------------|----------|-----------------|
    | 170 | 2020-07-10 00:00:00 |      250687 |     3860 |             127 |
    | 171 | 2020-07-11 00:00:00 |      264184 |     3971 |             128 |
    | 172 | 2020-07-12 00:00:00 |      276242 |     4079 |             129 |
    | 173 | 2020-07-13 00:00:00 |      287796 |     4172 |             130 |
    | 174 | 2020-07-14 00:00:00 |      298292 |     4346 |             131 |



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
  <th>Dep. Variable:</th>         <td>Deaths</td>      <th>  R-squared (uncentered):</th>      <td>   0.986</td> 
</tr>
<tr>
  <th>Model:</th>                   <td>OLS</td>       <th>  Adj. R-squared (uncentered):</th> <td>   0.986</td> 
</tr>
<tr>
  <th>Method:</th>             <td>Least Squares</td>  <th>  F-statistic:       </th>          <td>   9149.</td> 
</tr>
<tr>
  <th>Date:</th>             <td>Thu, 16 Jul 2020</td> <th>  Prob (F-statistic):</th>          <td>4.50e-123</td>
</tr>
<tr>
  <th>Time:</th>                 <td>06:48:39</td>     <th>  Log-Likelihood:    </th>          <td> -864.94</td> 
</tr>
<tr>
  <th>No. Observations:</th>      <td>   132</td>      <th>  AIC:               </th>          <td>   1732.</td> 
</tr>
<tr>
  <th>Df Residuals:</th>          <td>   131</td>      <th>  BIC:               </th>          <td>   1735.</td> 
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
  <th>Confirmed</th> <td>    0.0165</td> <td>    0.000</td> <td>   95.649</td> <td> 0.000</td> <td>    0.016</td> <td>    0.017</td>
</tr>
</table>
<table class="simpletable">
<tr>
  <th>Omnibus:</th>       <td>23.150</td> <th>  Durbin-Watson:     </th> <td>   0.025</td>
</tr>
<tr>
  <th>Prob(Omnibus):</th> <td> 0.000</td> <th>  Jarque-Bera (JB):  </th> <td>  66.723</td>
</tr>
<tr>
  <th>Skew:</th>          <td>-0.595</td> <th>  Prob(JB):          </th> <td>3.24e-15</td>
</tr>
<tr>
  <th>Kurtosis:</th>      <td> 6.273</td> <th>  Cond. No.          </th> <td>    1.00</td>
</tr>
</table><br/><br/>Warnings:<br/>[1] Standard Errors assume that the covariance matrix of the errors is correctly specified.



    Using this very simple method we see a death rate of 1.65%


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
  <th>Dep. Variable:</th>         <td>Deaths</td>      <th>  R-squared (uncentered):</th>      <td>   0.981</td>
</tr>
<tr>
  <th>Model:</th>                   <td>OLS</td>       <th>  Adj. R-squared (uncentered):</th> <td>   0.981</td>
</tr>
<tr>
  <th>Method:</th>             <td>Least Squares</td>  <th>  F-statistic:       </th>          <td>   5944.</td>
</tr>
<tr>
  <th>Date:</th>             <td>Thu, 16 Jul 2020</td> <th>  Prob (F-statistic):</th>          <td>1.52e-99</td>
</tr>
<tr>
  <th>Time:</th>                 <td>06:48:40</td>     <th>  Log-Likelihood:    </th>          <td> -771.24</td>
</tr>
<tr>
  <th>No. Observations:</th>      <td>   114</td>      <th>  AIC:               </th>          <td>   1544.</td>
</tr>
<tr>
  <th>Df Residuals:</th>          <td>   113</td>      <th>  BIC:               </th>          <td>   1547.</td>
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
  <th>Confirmed</th> <td>    0.0405</td> <td>    0.001</td> <td>   77.096</td> <td> 0.000</td> <td>    0.039</td> <td>    0.042</td>
</tr>
</table>
<table class="simpletable">
<tr>
  <th>Omnibus:</th>       <td>20.984</td> <th>  Durbin-Watson:     </th> <td>   0.023</td>
</tr>
<tr>
  <th>Prob(Omnibus):</th> <td> 0.000</td> <th>  Jarque-Bera (JB):  </th> <td>  49.382</td>
</tr>
<tr>
  <th>Skew:</th>          <td>-0.670</td> <th>  Prob(JB):          </th> <td>1.89e-11</td>
</tr>
<tr>
  <th>Kurtosis:</th>      <td> 5.933</td> <th>  Cond. No.          </th> <td>    1.00</td>
</tr>
</table><br/><br/>Warnings:<br/>[1] Standard Errors assume that the covariance matrix of the errors is correctly specified.



    Adjusting for time we find a death rate of 4.05%


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
    | 109 | 2020-06-22 00:00:00 |      101590 | 2020-07-10 00:00:00 |     3860 |          67726 |             169316 |
    | 110 | 2020-06-23 00:00:00 |      106108 | 2020-07-11 00:00:00 |     3971 |          70738 |             176846 |
    | 111 | 2020-06-24 00:00:00 |      111796 | 2020-07-12 00:00:00 |     4079 |          74530 |             186326 |
    | 112 | 2020-06-25 00:00:00 |      118375 | 2020-07-13 00:00:00 |     4172 |          78916 |             197291 |
    | 113 | 2020-06-26 00:00:00 |      124590 | 2020-07-14 00:00:00 |     4346 |          83060 |             207650 |



![png](SA_cov_dr_files/SA_cov_dr_39_0.png)





<table class="simpletable">
<caption>OLS Regression Results</caption>
<tr>
  <th>Dep. Variable:</th>         <td>Deaths</td>      <th>  R-squared (uncentered):</th>      <td>   0.981</td>
</tr>
<tr>
  <th>Model:</th>                   <td>OLS</td>       <th>  Adj. R-squared (uncentered):</th> <td>   0.981</td>
</tr>
<tr>
  <th>Method:</th>             <td>Least Squares</td>  <th>  F-statistic:       </th>          <td>   5944.</td>
</tr>
<tr>
  <th>Date:</th>             <td>Thu, 16 Jul 2020</td> <th>  Prob (F-statistic):</th>          <td>1.52e-99</td>
</tr>
<tr>
  <th>Time:</th>                 <td>06:48:40</td>     <th>  Log-Likelihood:    </th>          <td> -771.24</td>
</tr>
<tr>
  <th>No. Observations:</th>      <td>   114</td>      <th>  AIC:               </th>          <td>   1544.</td>
</tr>
<tr>
  <th>Df Residuals:</th>          <td>   113</td>      <th>  BIC:               </th>          <td>   1547.</td>
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
  <th>EstTotalInfected</th> <td>    0.0243</td> <td>    0.000</td> <td>   77.094</td> <td> 0.000</td> <td>    0.024</td> <td>    0.025</td>
</tr>
</table>
<table class="simpletable">
<tr>
  <th>Omnibus:</th>       <td>20.985</td> <th>  Durbin-Watson:     </th> <td>   0.023</td>
</tr>
<tr>
  <th>Prob(Omnibus):</th> <td> 0.000</td> <th>  Jarque-Bera (JB):  </th> <td>  49.388</td>
</tr>
<tr>
  <th>Skew:</th>          <td>-0.670</td> <th>  Prob(JB):          </th> <td>1.89e-11</td>
</tr>
<tr>
  <th>Kurtosis:</th>      <td> 5.933</td> <th>  Cond. No.          </th> <td>    1.00</td>
</tr>
</table><br/><br/>Warnings:<br/>[1] Standard Errors assume that the covariance matrix of the errors is correctly specified.



    The death rate adjusting for time and asymtomatic cases is 2.43%


---
Many things not considered

### Daily new


![png](SA_cov_dr_files/SA_cov_dr_45_0.png)



![png](SA_cov_dr_files/SA_cov_dr_46_0.png)



![png](SA_cov_dr_files/SA_cov_dr_47_0.png)


---

---
