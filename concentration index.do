* use latertime_ors.dta and earlytime_ors.dta

*Concentration index analysis
gen country_year = country + " " + year


* further edits in Excel and figure was conducted in R

*************** ORT

* Wealth
bysort country_year: conindex perc_diarr_drink [aweight=scaled_weights], rankvar(wealth_quintile) wagstaff bounded limits(0, 1) 

* education
bysort country_year: conindex perc_diarr_drink [aweight=scaled_weights], rankvar(educat) wagstaff bounded limits(0, 1) 

* place of residence
bysort country_year: conindex perc_diarr_drink [aweight=scaled_weights], rankvar(urban) wagstaff bounded limits(0, 1)

*************** Appropriate feeding

* Wealth
bysort country_year: conindex perc_appr_feed [aweight=scaled_weights], rankvar(wealth_quintile) wagstaff bounded limits(0, 1) 

* education
bysort country_year: conindex perc_appr_feed [aweight=scaled_weights], rankvar(educat) wagstaff bounded limits(0, 1) 

* place of residence
bysort country_year: conindex perc_appr_feed [aweight=scaled_weights], rankvar(urban) wagstaff bounded limits(0, 1)


*************** Appropriate feeding + ORT

* Wealth
bysort country_year: conindex perc_diar_treat_all [aweight=scaled_weights], rankvar(wealth_quintile) wagstaff bounded limits(0, 1) 
* education
bysort country_year: conindex perc_diar_treat_all [aweight=scaled_weights], rankvar(educat) wagstaff bounded limits(0, 1) 
* place of residence
bysort country_year: conindex perc_diar_treat_all [aweight=scaled_weights], rankvar(urban) wagstaff bounded limits(0, 1)


* this needs to be edited manually in excel

*************** HWT

* use latertime_hwt.dta and earlytime_hwt.dta
gen str_year = string(year)

// Concatenate `country` and the string version of `year`
gen country_year = country + " " + str_year

* Wealth
bysort country_year: conindex water_treat_any [aweight=scaled_weights], rankvar(wealth_quintile) wagstaff bounded limits(0, 1) 
* education
bysort country_year: conindex water_treat_any [aweight=scaled_weights], rankvar(educat) wagstaff bounded limits(0, 1) 
* place of residence
bysort country_year: conindex water_treat_any [aweight=scaled_weights], rankvar(urban) wagstaff bounded limits(0, 1)

*************** Appropriate HWT

* Wealth
bysort country_year: conindex water_treat_appr [aweight=scaled_weights], rankvar(wealth_quintile) wagstaff bounded limits(0, 1) 
* education
bysort country_year: conindex water_treat_appr [aweight=scaled_weights], rankvar(educat) wagstaff bounded limits(0, 1) 
* place of residence
bysort country_year: conindex water_treat_appr [aweight=scaled_weights], rankvar(urban) wagstaff bounded limits(0, 1)

***************global concentration index
gen year2 = real(year)
keep if year2 > 2009

*ORS
conindex perc_diarr_drink [aweight=scaled_weights], rankvar(wealth_quintile) wagstaff bounded limits(0, 1) 
conindex perc_diarr_drink [aweight=scaled_weights], rankvar(educat) wagstaff bounded limits(0, 1) 
conindex perc_diarr_drink [aweight=scaled_weights], rankvar(urban) wagstaff bounded limits(0, 1) 

*feeding
conindex perc_appr_feed [aweight=scaled_weights], rankvar(wealth_quintile) wagstaff bounded limits(0, 1) 
conindex perc_appr_feed [aweight=scaled_weights], rankvar(educat) wagstaff bounded limits(0, 1) 
conindex perc_appr_feed [aweight=scaled_weights], rankvar(urban) wagstaff bounded limits(0, 1) 

*ORS + feeding
conindex perc_diar_treat_all [aweight=scaled_weights], rankvar(wealth_quintile) wagstaff bounded limits(0, 1) 
conindex perc_diar_treat_all [aweight=scaled_weights], rankvar(educat) wagstaff bounded limits(0, 1) 
conindex perc_diar_treat_all [aweight=scaled_weights], rankvar(urban) wagstaff bounded limits(0, 1) 

*HWT
conindex water_treat_any [aweight=scaled_weights], rankvar(wealth_quintile) wagstaff bounded limits(0, 1) 
conindex water_treat_any [aweight=scaled_weights], rankvar(educat) wagstaff bounded limits(0, 1) 
conindex water_treat_any [aweight=scaled_weights], rankvar(urban) wagstaff bounded limits(0, 1) 
*HWT appropriate
conindex water_treat_appr [aweight=scaled_weights], rankvar(wealth_quintile) wagstaff bounded limits(0, 1) 
conindex water_treat_appr [aweight=scaled_weights], rankvar(educat) wagstaff bounded limits(0, 1) 
conindex water_treat_appr [aweight=scaled_weights], rankvar(urban) wagstaff bounded limits(0, 1) 


***earlier time period
gen year2 = real(year)
keep if year2 >= 2000 & year2 <= 2010

*ORS
conindex perc_diarr_drink [aweight=scaled_weights], rankvar(wealth_quintile) wagstaff bounded limits(0, 1) 
conindex perc_diarr_drink [aweight=scaled_weights], rankvar(educat) wagstaff bounded limits(0, 1) 
conindex perc_diarr_drink [aweight=scaled_weights], rankvar(urban) wagstaff bounded limits(0, 1) 

*feeding
conindex perc_appr_feed [aweight=scaled_weights], rankvar(wealth_quintile) wagstaff bounded limits(0, 1) 
conindex perc_appr_feed [aweight=scaled_weights], rankvar(educat) wagstaff bounded limits(0, 1) 
conindex perc_appr_feed [aweight=scaled_weights], rankvar(urban) wagstaff bounded limits(0, 1) 

*ORS + feeding
conindex perc_diar_treat_all [aweight=scaled_weights], rankvar(wealth_quintile) wagstaff bounded limits(0, 1) 
conindex perc_diar_treat_all [aweight=scaled_weights], rankvar(educat) wagstaff bounded limits(0, 1) 
conindex perc_diar_treat_all [aweight=scaled_weights], rankvar(urban) wagstaff bounded limits(0, 1) 

*HWT
conindex water_treat_any [aweight=scaled_weights], rankvar(wealth_quintile) wagstaff bounded limits(0, 1) 
conindex water_treat_any [aweight=scaled_weights], rankvar(educat) wagstaff bounded limits(0, 1) 
conindex water_treat_any [aweight=scaled_weights], rankvar(urban) wagstaff bounded limits(0, 1) 

*HWT appropriate
conindex water_treat_appr [aweight=scaled_weights], rankvar(wealth_quintile) wagstaff bounded limits(0, 1) 
conindex water_treat_appr [aweight=scaled_weights], rankvar(educat) wagstaff bounded limits(0, 1) 
conindex water_treat_appr [aweight=scaled_weights], rankvar(urban) wagstaff bounded limits(0, 1) 







