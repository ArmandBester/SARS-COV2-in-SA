---
# COVID19 death rates South Africa
---

#### Get data from:

COVID-19 Data Repository by the Center for Systems Science and Engineering (CSSE) at Johns Hopkins University


https://github.com/CSSEGISandData/COVID-19.git

#### Date and time

    It is now Mon Jul 27 07:05:47 2020 GMT+2


---

### Confirmed cases and deaths

---

#### Table of last 5 rows

    |     | Date                |   Confirmed |   Deaths |   DaysFromFirst |
    |-----|---------------------|-------------|----------|-----------------|
    | 182 | 2020-07-22 00:00:00 |      394948 |     5940 |             139 |
    | 183 | 2020-07-23 00:00:00 |      408052 |     6093 |             140 |
    | 184 | 2020-07-24 00:00:00 |      421996 |     6343 |             141 |
    | 185 | 2020-07-25 00:00:00 |      434200 |     6655 |             142 |
    | 186 | 2020-07-26 00:00:00 |      445433 |     6769 |             143 |



![png](SA_cov_dr_files/SA_cov_dr_11_0.png)



![png](SA_cov_dr_files/SA_cov_dr_12_0.png)



![png](SA_cov_dr_files/SA_cov_dr_15_0.png)


---

### Death Rates

---

For the sake of brevity, the plots and model summaries for model 1 and 2 has been omitted

---
### Model 1
#### Most naive

**The simplest** is to plot deaths against confirmed SARS-COV2 positive people and use the slope to estimate this death rate.

* No account for asymptomatic people
* No adjustment from onset of symptoms to death
* No account for delays in reporting deaths or confirmed cases

    Using this very simple method we see a death rate of 1.53%


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


    Adjusting for time we find a death rate of 3.41%


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
    | 121 | 2020-07-04 00:00:00 |      187977 | 2020-07-22 00:00:00 |     5940 |         125318 |             313295 |
    | 122 | 2020-07-05 00:00:00 |      196750 | 2020-07-23 00:00:00 |     6093 |         131166 |             327916 |
    | 123 | 2020-07-06 00:00:00 |      205721 | 2020-07-24 00:00:00 |     6343 |         137147 |             342868 |
    | 124 | 2020-07-07 00:00:00 |      215855 | 2020-07-25 00:00:00 |     6655 |         143903 |             359758 |
    | 125 | 2020-07-08 00:00:00 |      224665 | 2020-07-26 00:00:00 |     6769 |         149776 |             374441 |



![png](SA_cov_dr_files/SA_cov_dr_38_0.png)





<table class="simpletable">
<caption>OLS Regression Results</caption>
<tr>
  <th>Dep. Variable:</th>         <td>Deaths</td>      <th>  R-squared (uncentered):</th>      <td>   0.977</td> 
</tr>
<tr>
  <th>Model:</th>                   <td>OLS</td>       <th>  Adj. R-squared (uncentered):</th> <td>   0.977</td> 
</tr>
<tr>
  <th>Method:</th>             <td>Least Squares</td>  <th>  F-statistic:       </th>          <td>   5257.</td> 
</tr>
<tr>
  <th>Date:</th>             <td>Mon, 27 Jul 2020</td> <th>  Prob (F-statistic):</th>          <td>5.37e-104</td>
</tr>
<tr>
  <th>Time:</th>                 <td>07:05:49</td>     <th>  Log-Likelihood:    </th>          <td> -914.70</td> 
</tr>
<tr>
  <th>No. Observations:</th>      <td>   126</td>      <th>  AIC:               </th>          <td>   1831.</td> 
</tr>
<tr>
  <th>Df Residuals:</th>          <td>   125</td>      <th>  BIC:               </th>          <td>   1834.</td> 
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
  <th>EstTotalInfected</th> <td>    0.0205</td> <td>    0.000</td> <td>   72.506</td> <td> 0.000</td> <td>    0.020</td> <td>    0.021</td>
</tr>
</table>
<table class="simpletable">
<tr>
  <th>Omnibus:</th>       <td>11.604</td> <th>  Durbin-Watson:     </th> <td>   0.019</td>
</tr>
<tr>
  <th>Prob(Omnibus):</th> <td> 0.003</td> <th>  Jarque-Bera (JB):  </th> <td>  13.398</td>
</tr>
<tr>
  <th>Skew:</th>          <td>-0.584</td> <th>  Prob(JB):          </th> <td> 0.00123</td>
</tr>
<tr>
  <th>Kurtosis:</th>      <td> 4.090</td> <th>  Cond. No.          </th> <td>    1.00</td>
</tr>
</table><br/><br/>Warnings:<br/>[1] Standard Errors assume that the covariance matrix of the errors is correctly specified.



    The death rate adjusting for time and asymtomatic cases is 2.05%


### Look at residuals for model 3


From the plot above, the death rate is lowering at about 50000 confirmed cases


![png](SA_cov_dr_files/SA_cov_dr_42_0.png)


---
Many things not considered

### Daily new


![png](SA_cov_dr_files/SA_cov_dr_46_0.png)



![png](SA_cov_dr_files/SA_cov_dr_47_0.png)



![png](SA_cov_dr_files/SA_cov_dr_48_0.png)


---

---
