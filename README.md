---
# COVID19 death rates South Africa
---

#### Get data from:

COVID-19 Data Repository by the Center for Systems Science and Engineering (CSSE) at Johns Hopkins University


https://github.com/CSSEGISandData/COVID-19.git

#### Date and time

    Last update Thu Sep 17 07:05:45 2020 GMT+2


---

### Confirmed cases and deaths

---

#### Table of last 5 rows

    |     | Date                |   Confirmed |   Deaths |   DaysFromFirst |
    |-----|---------------------|-------------|----------|-----------------|
    | 234 | 2020-09-12 00:00:00 |      648214 |    15427 |             191 |
    | 235 | 2020-09-13 00:00:00 |      649793 |    15447 |             192 |
    | 236 | 2020-09-14 00:00:00 |      650749 |    15499 |             193 |
    | 237 | 2020-09-15 00:00:00 |      651521 |    15641 |             194 |
    | 238 | 2020-09-16 00:00:00 |      653444 |    15705 |             195 |



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

    Using this very simple method we see a death rate of 2.03%


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


    Adjusting for time we find a death rate of 2.55%


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
    | 173 | 2020-08-25 00:00:00 |      613017 | 2020-09-12 00:00:00 |    15427 |         408678 |        1.0217e+06  |
    | 174 | 2020-08-26 00:00:00 |      615701 | 2020-09-13 00:00:00 |    15447 |         410467 |        1.02617e+06 |
    | 175 | 2020-08-27 00:00:00 |      618286 | 2020-09-14 00:00:00 |    15499 |         412190 |        1.03048e+06 |
    | 176 | 2020-08-28 00:00:00 |      620132 | 2020-09-15 00:00:00 |    15641 |         413421 |        1.03355e+06 |
    | 177 | 2020-08-29 00:00:00 |      622551 | 2020-09-16 00:00:00 |    15705 |         415034 |        1.03758e+06 |



![png](SA_cov_dr_files/SA_cov_dr_38_0.png)





<table class="simpletable">
<caption>OLS Regression Results</caption>
<tr>
  <th>Dep. Variable:</th>         <td>Deaths</td>      <th>  R-squared (uncentered):</th>      <td>   0.993</td> 
</tr>
<tr>
  <th>Model:</th>                   <td>OLS</td>       <th>  Adj. R-squared (uncentered):</th> <td>   0.993</td> 
</tr>
<tr>
  <th>Method:</th>             <td>Least Squares</td>  <th>  F-statistic:       </th>          <td>2.406e+04</td>
</tr>
<tr>
  <th>Date:</th>             <td>Thu, 17 Sep 2020</td> <th>  Prob (F-statistic):</th>          <td>4.99e-191</td>
</tr>
<tr>
  <th>Time:</th>                 <td>07:05:47</td>     <th>  Log-Likelihood:    </th>          <td> -1391.9</td> 
</tr>
<tr>
  <th>No. Observations:</th>      <td>   178</td>      <th>  AIC:               </th>          <td>   2786.</td> 
</tr>
<tr>
  <th>Df Residuals:</th>          <td>   177</td>      <th>  BIC:               </th>          <td>   2789.</td> 
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
  <th>EstTotalInfected</th> <td>    0.0153</td> <td> 9.87e-05</td> <td>  155.114</td> <td> 0.000</td> <td>    0.015</td> <td>    0.015</td>
</tr>
</table>
<table class="simpletable">
<tr>
  <th>Omnibus:</th>       <td>33.467</td> <th>  Durbin-Watson:     </th> <td>   0.009</td>
</tr>
<tr>
  <th>Prob(Omnibus):</th> <td> 0.000</td> <th>  Jarque-Bera (JB):  </th> <td>  10.843</td>
</tr>
<tr>
  <th>Skew:</th>          <td> 0.337</td> <th>  Prob(JB):          </th> <td> 0.00442</td>
</tr>
<tr>
  <th>Kurtosis:</th>      <td> 1.996</td> <th>  Cond. No.          </th> <td>    1.00</td>
</tr>
</table><br/><br/>Warnings:<br/>[1] Standard Errors assume that the covariance matrix of the errors is correctly specified.



    The death rate adjusting for time and asymtomatic cases is 1.53%


### Look at residuals for model 3


From the plot above, the death rate is lowering at about 50000 estimated cases


![png](SA_cov_dr_files/SA_cov_dr_42_0.png)



![png](SA_cov_dr_files/SA_cov_dr_45_0.png)


**Region a regression**




<table class="simpletable">
<tr>
          <td>Model:</td>                 <td>OLS</td>       <td>Adj. R-squared (uncentered):</td>   <td>0.999</td>  
</tr>
<tr>
    <td>Dependent Variable:</td>        <td>Deaths</td>                  <td>AIC:</td>             <td>745.7187</td> 
</tr>
<tr>
           <td>Date:</td>          <td>2020-09-17 07:05</td>             <td>BIC:</td>             <td>748.1731</td> 
</tr>
<tr>
     <td>No. Observations:</td>           <td>86</td>               <td>Log-Likelihood:</td>        <td>-371.86</td> 
</tr>
<tr>
         <td>Df Model:</td>                <td>1</td>                <td>F-statistic:</td>         <td>7.686e+04</td>
</tr>
<tr>
       <td>Df Residuals:</td>             <td>85</td>             <td>Prob (F-statistic):</td>     <td>1.88e-127</td>
</tr>
<tr>
  <td>R-squared (uncentered):</td>       <td>0.999</td>                 <td>Scale:</td>             <td>337.55</td>  
</tr>
</table>
<table class="simpletable">
<tr>
          <td></td>          <th>Coef.</th> <th>Std.Err.</th>     <th>t</th>     <th>P>|t|</th> <th>[0.025</th> <th>0.975]</th>
</tr>
<tr>
  <th>EstTotalInfected</th> <td>0.0338</td>  <td>0.0001</td>  <td>277.2326</td> <td>0.0000</td> <td>0.0336</td> <td>0.0340</td>
</tr>
</table>
<table class="simpletable">
<tr>
     <td>Omnibus:</td>    <td>14.147</td>  <td>Durbin-Watson:</td>    <td>0.341</td>
</tr>
<tr>
  <td>Prob(Omnibus):</td>  <td>0.001</td> <td>Jarque-Bera (JB):</td> <td>16.452</td>
</tr>
<tr>
       <td>Skew:</td>      <td>0.847</td>     <td>Prob(JB):</td>      <td>0.000</td>
</tr>
<tr>
     <td>Kurtosis:</td>    <td>4.312</td>  <td>Condition No.:</td>      <td>1</td>  
</tr>
</table>



**Region b regression**




<table class="simpletable">
<tr>
          <td>Model:</td>                 <td>OLS</td>       <td>Adj. R-squared (uncentered):</td>    <td>0.993</td>  
</tr>
<tr>
    <td>Dependent Variable:</td>        <td>Deaths</td>                  <td>AIC:</td>              <td>1489.6713</td>
</tr>
<tr>
           <td>Date:</td>          <td>2020-09-17 07:05</td>             <td>BIC:</td>              <td>1492.1931</td>
</tr>
<tr>
     <td>No. Observations:</td>           <td>92</td>               <td>Log-Likelihood:</td>         <td>-743.84</td> 
</tr>
<tr>
         <td>Df Model:</td>                <td>1</td>                <td>F-statistic:</td>          <td>1.404e+04</td>
</tr>
<tr>
       <td>Df Residuals:</td>             <td>91</td>             <td>Prob (F-statistic):</td>      <td>1.68e-101</td>
</tr>
<tr>
  <td>R-squared (uncentered):</td>       <td>0.994</td>                 <td>Scale:</td>            <td>6.2368e+05</td>
</tr>
</table>
<table class="simpletable">
<tr>
          <td></td>          <th>Coef.</th> <th>Std.Err.</th>     <th>t</th>     <th>P>|t|</th> <th>[0.025</th> <th>0.975]</th>
</tr>
<tr>
  <th>EstTotalInfected</th> <td>0.0153</td>  <td>0.0001</td>  <td>118.4960</td> <td>0.0000</td> <td>0.0150</td> <td>0.0155</td>
</tr>
</table>
<table class="simpletable">
<tr>
     <td>Omnibus:</td>    <td>5668.401</td>  <td>Durbin-Watson:</td>    <td>0.010</td>
</tr>
<tr>
  <td>Prob(Omnibus):</td>   <td>0.000</td>  <td>Jarque-Bera (JB):</td> <td>10.960</td>
</tr>
<tr>
       <td>Skew:</td>      <td>-0.197</td>      <td>Prob(JB):</td>      <td>0.004</td>
</tr>
<tr>
     <td>Kurtosis:</td>     <td>1.356</td>   <td>Condition No.:</td>      <td>1</td>  
</tr>
</table>



---
Many things not considered

### Daily new


![png](SA_cov_dr_files/SA_cov_dr_53_0.png)





    <ggplot: (8786596878821)>




![png](SA_cov_dr_files/SA_cov_dr_54_0.png)





    <ggplot: (8786596874585)>




![png](SA_cov_dr_files/SA_cov_dr_55_0.png)





    <ggplot: (8786596874513)>



---

---
