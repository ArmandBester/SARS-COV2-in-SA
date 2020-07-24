---
# COVID19 death rates South Africa
---

#### Get data from:

COVID-19 Data Repository by the Center for Systems Science and Engineering (CSSE) at Johns Hopkins University


https://github.com/CSSEGISandData/COVID-19.git

#### Date and time

    It is now Fri Jul 24 07:20:34 2020 GMT+2


---

### Confirmed cases and deaths

---

#### Table of last 5 rows

    |     | Date                |   Confirmed |   Deaths |   DaysFromFirst |
    |-----|---------------------|-------------|----------|-----------------|
    | 178 | 2020-07-18 00:00:00 |      350879 |     4948 |             135 |
    | 179 | 2020-07-19 00:00:00 |      364328 |     5033 |             136 |
    | 180 | 2020-07-20 00:00:00 |      373628 |     5173 |             137 |
    | 181 | 2020-07-21 00:00:00 |      381798 |     5368 |             138 |
    | 182 | 2020-07-22 00:00:00 |      394948 |     5940 |             139 |



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


    Adjusting for time we find a death rate of 3.58%


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
    | 117 | 2020-06-30 00:00:00 |      151209 | 2020-07-18 00:00:00 |     4948 |         100806 |             252015 |
    | 118 | 2020-07-01 00:00:00 |      159333 | 2020-07-19 00:00:00 |     5033 |         106222 |             265555 |
    | 119 | 2020-07-02 00:00:00 |      168061 | 2020-07-20 00:00:00 |     5173 |         112040 |             280101 |
    | 120 | 2020-07-03 00:00:00 |      177124 | 2020-07-21 00:00:00 |     5368 |         118082 |             295206 |
    | 121 | 2020-07-04 00:00:00 |      187977 | 2020-07-22 00:00:00 |     5940 |         125318 |             313295 |



![png](SA_cov_dr_files/SA_cov_dr_38_0.png)





<table class="simpletable">
<caption>OLS Regression Results</caption>
<tr>
  <th>Dep. Variable:</th>         <td>Deaths</td>      <th>  R-squared (uncentered):</th>      <td>   0.975</td>
</tr>
<tr>
  <th>Model:</th>                   <td>OLS</td>       <th>  Adj. R-squared (uncentered):</th> <td>   0.975</td>
</tr>
<tr>
  <th>Method:</th>             <td>Least Squares</td>  <th>  F-statistic:       </th>          <td>   4754.</td>
</tr>
<tr>
  <th>Date:</th>             <td>Fri, 24 Jul 2020</td> <th>  Prob (F-statistic):</th>          <td>5.61e-99</td>
</tr>
<tr>
  <th>Time:</th>                 <td>07:20:36</td>     <th>  Log-Likelihood:    </th>          <td> -873.24</td>
</tr>
<tr>
  <th>No. Observations:</th>      <td>   122</td>      <th>  AIC:               </th>          <td>   1748.</td>
</tr>
<tr>
  <th>Df Residuals:</th>          <td>   121</td>      <th>  BIC:               </th>          <td>   1751.</td>
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
  <th>EstTotalInfected</th> <td>    0.0215</td> <td>    0.000</td> <td>   68.952</td> <td> 0.000</td> <td>    0.021</td> <td>    0.022</td>
</tr>
</table>
<table class="simpletable">
<tr>
  <th>Omnibus:</th>       <td>28.221</td> <th>  Durbin-Watson:     </th> <td>   0.021</td>
</tr>
<tr>
  <th>Prob(Omnibus):</th> <td> 0.000</td> <th>  Jarque-Bera (JB):  </th> <td>  58.232</td>
</tr>
<tr>
  <th>Skew:</th>          <td>-0.949</td> <th>  Prob(JB):          </th> <td>2.26e-13</td>
</tr>
<tr>
  <th>Kurtosis:</th>      <td> 5.802</td> <th>  Cond. No.          </th> <td>    1.00</td>
</tr>
</table><br/><br/>Warnings:<br/>[1] Standard Errors assume that the covariance matrix of the errors is correctly specified.



    The death rate adjusting for time and asymtomatic cases is 2.15%


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
