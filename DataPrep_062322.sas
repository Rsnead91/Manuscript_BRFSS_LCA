dm log 'clear';
/*Mplus Prep Syntax*/

libname lca "C:\Users\tuk04132\OneDrive - Temple University\Documents\LCA BRFSS\SAS";


/* Prep raw data sets */

*2015;
data brfss_2015_modv0;
  set lca.LLCP2015;
  	if STATE in (1 4 5 11 13 15 17 19 22 27 28 32 34 38 39 41 44 45 46 47 51 54 55 56 72);
	rename llcpwt = finalwt;
	year = 2015;
	version = 0;
  	keep year version STATE PSU STSTR LLCPWT SEX MARITAL EDUCAG GENHLTH EMPLOY1 INCOMG RACE RACEG21 AGEG BMI5CAT SMOKE100 DRNKANY5 CIMEMLOS CDHOUSE CDASSIST CDHELP CDSOCIAL CDDISCUS;
run;

data brfss_2015_modv1;
  set lca.LLCP15v1;
  	if STATE in (24 26 31 40);
	rename lcpwtv1 = finalwt;
	year = 2015;
	version = 1;
  	keep year version STATE PSU STSTR lcpwtv1 SEX MARITAL EDUCAG GENHLTH EMPLOY1 INCOMG RACE RACEG21 AGEG BMI5CAT SMOKE100 DRNKANY5 CIMEMLOS CDHOUSE CDASSIST  CDHELP CDSOCIAL CDDISCUS;
run;

data brfss_2015_modv2;
  set lca.LLCP15v2;
  	if STATE in (6 8 12 36 48 49);
	rename lcpwtv2 = finalwt;
	year = 2015;
	version = 2;
  	keep year version STATE PSU STSTR lcpwtv2 SEX MARITAL EDUCAG GENHLTH EMPLOY1 INCOMG RACE RACEG21 AGEG BMI5CAT SMOKE100 DRNKANY5 CIMEMLOS CDHOUSE CDASSIST CDHELP CDSOCIAL CDDISCUS;
run;


*2016;
data brfss_2016_modv0;
  set lca.LLCP2016;
  	if STATE in (2 10 16 18 21 25 29 30 33 34 35 37 41 47 50 53);
	rename llcpwt = finalwt;
	year = 2016;
	version = 0;
  	keep year version STATE PSU STSTR LLCPWT SEX MARITAL EDUCAG GENHLTH EMPLOY1 INCOMG RACE RACEG21 AGEG BMI5CAT SMOKE100 DRNKANY5 CIMEMLOS CDHOUSE CDASSIST CDHELP CDSOCIAL CDDISCUS;
run;

data brfss_2016_modv1;
  set lca.LLCP16v1;
  	if STATE in (9 23 49);
	rename lcpwtv1 = finalwt;
	year = 2016;
	version = 1;
  	keep year version STATE PSU STSTR lcpwtv1 SEX MARITAL EDUCAG GENHLTH EMPLOY1 INCOMG RACE RACEG21 AGEG BMI5CAT SMOKE100 DRNKANY5 CIMEMLOS CDHOUSE CDASSIST CDHELP CDSOCIAL CDDISCUS;
run;

data brfss_2016_modv2;
  set lca.LLCP16v2;
  	if STATE in (20);
	rename lcpwtv2 = finalwt;
	year = 2016;
	version = 2;
  	keep year version STATE PSU STSTR lcpwtv2 SEX MARITAL EDUCAG GENHLTH EMPLOY1 INCOMG RACE RACEG21 AGEG BMI5CAT SMOKE100 DRNKANY5 CIMEMLOS CDHOUSE CDASSIST CDHELP CDSOCIAL CDDISCUS;
run;

data brfss_2016_modv3;
  set lca.LLCP16v3;
  	if STATE in (36);
	rename lcpwtv3 = finalwt;
	year = 2016;
	version = 3;
  	keep year version STATE PSU STSTR lcpwtv3 SEX MARITAL EDUCAG GENHLTH EMPLOY1 INCOMG RACE RACEG21 AGEG BMI5CAT SMOKE100 DRNKANY5 CIMEMLOS CDHOUSE CDASSIST CDHELP CDSOCIAL CDDISCUS;
run;


*2017;
data brfss_2017_modv0;
  set lca.LLCP2017;
  	if STATE in (13 15 28 41 72);
	rename LLCPWT = finalwt;
	year = 2017;
	version = 0;
  	keep year version STATE PSU STSTR LLCPWT SEX MARITAL EDUCAG GENHLTH EMPLOY1 INCOMG RACE RACEG21 AGEG BMI5CAT SMOKE100 DRNKANY5 CIMEMLOS CDHOUSE CDASSIST CDHELP CDSOCIAL CDDISCUS;
run;

data brfss_2017_modv2;
  set lca.llcp17v2;
  	if STATE in (26 34 36 49);
	rename LCPWTV2 = finalwt;
	year = 2017;
	version = 2;
  	keep year version STATE PSU STSTR LCPWTV2 SEX MARITAL EDUCAG GENHLTH EMPLOY1 INCOMG RACE RACEG21 AGEG BMI5CAT SMOKE100 DRNKANY5 CIMEMLOS CDHOUSE CDASSIST CDHELP CDSOCIAL CDDISCUS;
run;

data brfss_2017_modv3;
  set lca.llcp17v3;
  	if STATE in (24);
	rename LCPWTV3 = finalwt;
	year = 2017;
	version = 3;
  	keep year version STATE PSU STSTR LCPWTV3 SEX MARITAL EDUCAG GENHLTH EMPLOY1 INCOMG RACE RACEG21 AGEG BMI5CAT SMOKE100 DRNKANY5 CIMEMLOS CDHOUSE CDASSIST CDHELP CDSOCIAL CDDISCUS;
run;


*2018;
data brfss_2018_modv0;
  set lca.LLCP2018;
  	if _STATE in (34 41 42);
	rename 	_LLCPWT = finalwt
			SEX1 = SEX
			_STATE = STATE
			_PSU = PSU
			_STSTR = STSTR
			_EDUCAG = EDUCAG
			_INCOMG = INCOMG
			_RACE = RACE
			_RACEG21 = RACEG21
			_AGE_G = AGEG
			_BMI5CAT = BMI5CAT
	;
	year = 2018;
	version = 0;

  	keep year version _STATE _PSU _STSTR _LLCPWT SEX1 MARITAL _EDUCAG GENHLTH EMPLOY1 _INCOMG _RACE _RACEG21 _AGE_G _BMI5CAT SMOKE100 DRNKANY5 CIMEMLOS CDHOUSE CDASSIST CDHELP CDSOCIAL CDDISCUS;
run;

data brfss_2018_modv1;
  set lca.LLCP18v1;
  	if _STATE in (23);
	rename 	_LCPWTV1 = finalwt
			SEX1 = SEX
			_STATE = STATE
			_PSU = PSU
			_STSTR = STSTR
			_EDUCAG = EDUCAG
			_INCOMG = INCOMG
			_RACE = RACE
			_RACEG21 = RACEG21
			_AGE_G = AGEG
			_BMI5CAT = BMI5CAT
	;
	year = 2018;
	version = 1;

  	keep year version _STATE _PSU _STSTR _LCPWTV1 SEX1 MARITAL _EDUCAG GENHLTH EMPLOY1 _INCOMG _RACE _RACEG21 _AGE_G _BMI5CAT SMOKE100 DRNKANY5 CIMEMLOS CDHOUSE CDASSIST CDHELP CDSOCIAL CDDISCUS;
run;

data brfss_2018_modv2;
  set lca.LLCP18v2;
  	if _STATE in (26 36);
	rename 	_LCPWTV2 = finalwt
			SEX1 = SEX
			_STATE = STATE
			_PSU = PSU
			_STSTR = STSTR
			_EDUCAG = EDUCAG
			_INCOMG = INCOMG
			_RACE = RACE
			_RACEG21 = RACEG21
			_AGE_G = AGEG
			_BMI5CAT = BMI5CAT
	;
	year = 2018;
	version = 2;

  	keep year version _STATE _PSU _STSTR _LCPWTV2 SEX1 MARITAL _EDUCAG GENHLTH EMPLOY1 _INCOMG _RACE _RACEG21 _AGE_G _BMI5CAT SMOKE100 DRNKANY5 CIMEMLOS CDHOUSE CDASSIST CDHELP CDSOCIAL CDDISCUS;
run;
 

*2019;
data brfss_2019_modv0;
  set lca.LLCP2019;
  	if STATE in (1 9 11 12 13 18 19 22 27 28 29 32 35 38 41 42 44 45 46 47 48 51 54 55);
	rename 	LLCPWT = finalwt;
	year = 2019;
	version = 0;
  	keep year version STATE PSU STSTR LLCPWT SEX MARITAL EDUCAG GENHLTH EMPLOY1 INCOMG RACE RACEG21 AGEG BMI5CAT SMOKE100 DRNKANY5 CIMEMLOS CDHOUSE CDASSIST CDHELP CDSOCIAL CDDISCUS;
run;

data brfss_2019_modv1;
  set lca.LLCP19v1;
  	if STATE in (26 31 39 49);
	rename 	LCPWTV1 = finalwt;
	year = 2019;
	version = 1;
  	keep year version STATE PSU STSTR LCPWTV1 SEX MARITAL EDUCAG GENHLTH EMPLOY1 INCOMG RACE RACEG21 AGEG BMI5CAT SMOKE100 DRNKANY5 CIMEMLOS CDHOUSE CDASSIST CDHELP CDSOCIAL CDDISCUS;
run;

data brfss_2019_modv2;
  set lca.LLCP19v2;
  	if STATE in (20 36 40);
	rename 	LCPWTV2 = finalwt;
	year = 2019;
	version = 2;
  	keep year version STATE PSU STSTR LCPWTV2 SEX MARITAL EDUCAG GENHLTH EMPLOY1 INCOMG RACE RACEG21 AGEG BMI5CAT SMOKE100 DRNKANY5 CIMEMLOS CDHOUSE CDASSIST CDHELP CDSOCIAL CDDISCUS;
run;

data brfss_2019_modv3;
  set lca.LLCP19v3;
  	if STATE in (24);
	rename 	LCPWTV3 = finalwt;
	year = 2019;
	version = 3;
  	keep year version STATE PSU STSTR LCPWTV3 SEX MARITAL EDUCAG GENHLTH EMPLOY1 INCOMG RACE RACEG21 AGEG BMI5CAT SMOKE100 DRNKANY5 CIMEMLOS CDHOUSE CDASSIST CDHELP CDSOCIAL CDDISCUS;
run;


*2020;
data brfss_2020_modv0;
  set lca.LLCP2020;
  	if STATE in (2 4 5 10 11 15 16 17 21 23 32 33 37 41 72 50 53 56);
	rename 	LLCPWT = finalwt;
	year = 2020;
	version = 0;
  	keep year version STATE PSU STSTR LLCPWT SEX MARITAL EDUCAG GENHLTH EMPLOY1 INCOMG RACE RACEG21 AGEG BMI5CAT SMOKE100 DRNKANY5 CIMEMLOS CDHOUSE CDASSIST CDHELP CDSOCIAL CDDISCUS;
run;

data brfss_2020_modv1;
  set lca.LLCP20v1;
  	if STATE in (6 26 36 39);
	rename 	LCPWTV1 = finalwt;
	year = 2020;
	version = 1;
  	keep year version STATE PSU STSTR LCPWTV1 SEX MARITAL EDUCAG GENHLTH EMPLOY1 INCOMG RACE RACEG21 AGEG BMI5CAT SMOKE100 DRNKANY5 CIMEMLOS CDHOUSE CDASSIST CDHELP CDSOCIAL CDDISCUS;
run;

data brfss_2020_modv2;
  set lca.LLCP20v2;
  	if STATE in (49);
	rename 	LCPWTV2 = finalwt;
	year = 2020;
	version = 2;
  	keep year version STATE PSU STSTR LCPWTV2 SEX MARITAL EDUCAG GENHLTH EMPLOY1 INCOMG RACE RACEG21 AGEG BMI5CAT SMOKE100 DRNKANY5 CIMEMLOS CDHOUSE CDASSIST CDHELP CDSOCIAL CDDISCUS;
run;


/* Concatenate each year's data */

data lca_cogdecline0;
  set brfss_2015_modv0 brfss_2015_modv1 brfss_2015_modv2 brfss_2016_modv0 brfss_2016_modv1 brfss_2016_modv2 brfss_2016_modv3 brfss_2017_modv0 brfss_2017_modv2 brfss_2017_modv3 brfss_2018_modv0 brfss_2018_modv1 brfss_2018_modv2 brfss_2019_modv0 brfss_2019_modv1 brfss_2019_modv2 brfss_2019_modv3 brfss_2020_modv0 brfss_2020_modv1 brfss_2020_modv2 /*brfss_2015 brfss_2016 brfss_2017 brfss_2018*/;

*	if CIMEMLOS eq 1; /* Subset for only people who experienced memory loss*/

	* re-calculating weight variable:
		1) renamed weight variable to match and concatenated data sets
		2) no cases where need to account for states using different questionnaire versions within same year of survey
		3) adjust for combining multiple years by multiplying the weight variable by the proportion of each year's contribution to the overall sample size
	 see documentation in folder and here: https://www.cdc.gov/brfss/annual_data/2017/pdf/Complex-Smple-Weights-Prep-Module-Data-Analysis-2017-508.pdf;

	/*2015: 29.76%, 2016: 18.54%, 2017: 6.38%, 2018: 4.07%, 2019: 28.50%, 2020: 12.75%*/

	if year eq 2015 then finalwt = finalwt*.2976;
	if year eq 2016 then finalwt = finalwt*.1854;
	if year eq 2017 then finalwt = finalwt*.0638;
	if year eq 2018 then finalwt = finalwt*.0407;
	if year eq 2019 then finalwt = finalwt*.2850;
	if year eq 2020 then finalwt = finalwt*.1275;

	if ageg ge 4; /*Only 45 and greater asked this question.*/

	array m(*) CIMEMLOS CDHOUSE CDASSIST CDHELP CDSOCIAL CDDISCUS BMI5CAT AGEG SMOKE100 DRNKANY5 RACEG21 INCOMG GENHLTH EDUCAG MARITAL SEX;
	do i = 1 to dim(m);
		if m(i) in (7 9 .) then m(i) = 99;
	end;

	if EMPLOY1 in (8 9 .) then EMPLOY1 = 99;

	if CDASSIST in (4 5) then CDHELP = 5;

	if RACE eq 9 then RACE = 99;

	stratapsu = _n_;

	psu_2 = psu*.00000001;

	ststr_2 = ststr*.0001;

	/* 	RECODING DEMOGRAPHICS */

	* SEX;
	if SEX eq 2 then SEX = 0;
*	if SEX eq 99 then SEX = .;

	* Age;
	AGEG_rec = AGEG - 4;

	if AGEG_rec in (1)   then age55_64_bin = 1;
	if AGEG_rec in (0 2) then age55_64_bin = 0;
	if age55_64_bin eq . then age55_64_bin = 99;

	if AGEG_rec in (2)   then age65_bin = 1;
	if AGEG_rec in (0 1) then age65_bin = 0;
	if age65_bin eq .    then age65_bin = 99;

	* Race;
	RACEG21_rec = RACEG21 - 1;
	if RACEG21_rec eq 98 then RACEG21_rec = 99;

	*ref = white;
	if race eq 2               then black = 1;
	if race in (1 3 4 5 6 7 8) then black = 0;
	if black eq .              then black = 99;

	if race eq 3               then aian = 1;
	if race in (1 2 4 5 6 7 8) then aian = 0;
	if aian eq .               then aian = 99;

	if race eq 4               then asian = 1;
	if race in (1 3 2 5 6 7 8) then asian = 0;
	if asian eq .              then asian = 99;

	if race eq 5               then nhpi = 1;
	if race in (1 3 4 2 6 7 8) then nhpi = 0;
	if nhpi eq .               then nhpi = 99;

	if race eq 6               then other = 1;
	if race in (1 3 4 5 2 7 8) then other = 0;
	if other eq .              then other = 99;

	if race eq 7               then multi = 1;
	if race in (1 3 4 5 6 2 8) then multi = 0;
	if multi eq .              then multi = 99;

	if race eq 8               then hisp = 1;
	if race in (1 3 4 5 6 7 2) then hisp = 0;
	if hisp eq .               then hisp = 99;

	if race eq 1           then race4 = 1;
	if race eq 2           then race4 = 2;
	if race in (3 4 5 6 7) then race4 = 3;
	if race eq 8           then race4 = 4;

	if race4 eq 2       then black4 = 1;
	if race4 in (1 3 4) then black4 = 0;
	if black4 eq .      then black4 = 99;

	if race4 eq 3       then other4 = 1;
	if race4 in (1 2 4) then other4 = 0;
	if other4 eq .      then other4 = 99;

	if race4 eq 4       then hisp4 = 1;
	if race4 in (1 2 3) then hisp4 = 0;
	if hisp4 eq .       then hisp4 = 99;

	* Education;
	if educag eq  1      then nohs = 1;
	if educag in (2 3 4) then nohs = 0;
	if nohs eq .         then nohs = 99;

	if educag eq  2      then hsgrad = 1;
	if educag in (1 3 4) then hsgrad = 0;
	if hsgrad eq .       then hsgrad = 99;

	if educag eq  3      then SomeColl = 1;
	if educag in (1 2 4) then SomeColl = 0;
	if SomeColl eq .     then SomeColl = 99;

	* Income;
	if INCOMG in (1)    then INCOMG_4cat = 1; *<15k;
	if INCOMG in (2)    then INCOMG_4cat = 2; *15-25k;
	if INCOMG in (3 4)  then INCOMG_4cat = 3; *25-50k;
	if INCOMG in (5)    then INCOMG_4cat = 4; *50k+;
	if INCOMG_4cat eq . then INCOMG_4cat = 99;

	if incomg in (1)       then incomg_15_bin = 1;
	if incomg in (2 3 4 5) then incomg_15_bin = 0;
	if incomg_15_bin eq .  then incomg_15_bin = 99;

	if incomg in (2)         then incomg_15_25_bin = 1;
	if incomg in (1 3 4 5)   then incomg_15_25_bin = 0;
	if incomg_15_25_bin eq . then incomg_15_25_bin = 99;

	if incomg in (3 4)       then incomg_25_50_bin = 1;
	if incomg in (1 2 5)     then incomg_25_50_bin = 0;
	if incomg_25_50_bin eq . then incomg_25_50_bin = 99;

	* Employment;
	if EMPLOY1 in (1 2)     then EMPLOY1_3cat = 2; *Employed;
	if EMPLOY1 in (7)       then EMPLOY1_3cat = 0; *Retired;
	if EMPLOY1 in (3 4 5 6) then EMPLOY1_3cat = 1; *Unemployed;
	if EMPLOY1_3cat eq .    then EMPLOY1_3cat = 99;

	if EMPLOY1_3cat in (2)   then EMPLOY1_empl = 1;
	if EMPLOY1_3cat in (0 1) then EMPLOY1_empl = 0;
	if EMPLOY1_empl eq .     then EMPLOY1_empl = 99;

	if EMPLOY1_3cat in (1)   then EMPLOY1_unempl = 1;
	if EMPLOY1_3cat in (0 2) then EMPLOY1_unempl = 0;
	if EMPLOY1_unempl eq .   then EMPLOY1_unempl = 99;


	* General Health;
	if GENHLTH in (1 2 3) then GENHLTH_bin = 1;
	if GENHLTH in (4 5)   then GENHLTH_bin = 0;
	if GENHLTH_bin eq .   then GENHLTH_bin = 99;

	* Drinking;
	if DRNKANY5 eq 2 then DRNKANY5 = 0;
	if DRNKANY5 eq . then DRNKANY5 = 99;

	* Smoking;
	if SMOKE100 eq 2 then SMOKE100 = 0;
	if SMOKE100 eq . then SMOKE100 = 99;

	array mx(*) _NUMERIC_;
	do i = 1 to dim(mx);
		if mx(i) eq . then mx(i) = 99;
	end;

	drop i;

run;

proc contents data = lca_cogdecline0 varnum short; run;

proc freq data = lca_cogdecline0;
table CIMEMLOS*(smoke100) / missing;
run;


/*proc freq data = lca_cogdecline0;*/
/*table race RACEG21_rec race*RACEG21_rec / list;*/
/*run;*/
/*Sample is disproportionately White*/

data lca.lca_cogdecline0;
  set lca_cogdecline0;
run;


/* Mplus Vars: SEX age55_64_bin age65_bin RACEG21_rec nohs hsgrad SomeColl incomg_15_bin incomg_15_25_bin incomg_25_50_bin EMPLOY1_empl EMPLOY1_unempl GENHLTH_bin DRNKANY5 SMOKE100*/
/* FREQ Vars: SEX ageg_rec RACEG21_rec educag INCOMG_4cat EMPLOY1_3cat GENHLTH_bin DRNKANY5 SMOKE100*/

proc contents data = lca_cogdecline0 short varnum;
run;
/*Full var list: STATE PSU GENHLTH SEX MARITAL EMPLOY1 SMOKE100 CIMEMLOS CDHOUSE CDASSIST CDHELP CDSOCIAL CDDISCUS STSTR finalwt RACEG21 AGEG BMI5CAT EDUCAG INCOMG DRNKANY5 year version stratapsu psu_2 ststr_2 AGEG_rec age55_64_bin age65_bin RACEG21_rec nohs hsgrad SomeColl INCOMG_4cat incomg_15_bin incomg_15_25_bin incomg_25_50_bin EMPLOY1_3cat EMPLOY1_empl EMPLOY1_unempl GENHLTH_bin*/
proc freq data = lca_cogdecline0;
table GENHLTH SEX MARITAL EMPLOY1 SMOKE100 CIMEMLOS CDHOUSE CDASSIST CDHELP CDSOCIAL CDDISCUS STSTR finalwt RACEG21 AGEG BMI5CAT EDUCAG INCOMG DRNKANY5 year version stratapsu psu_2 ststr_2 AGEG_rec age55_64_bin age65_bin RACEG21_rec nohs hsgrad SomeColl INCOMG_4cat incomg_15_bin incomg_15_25_bin incomg_25_50_bin EMPLOY1_3cat EMPLOY1_empl EMPLOY1_unempl GENHLTH_bin / list nocol nopercent norow missing;
run;

/*
proc surveyfreq data = lca_cogdecline0;
table AGEG SEX RACEG21 EDUCAG INCOMG EMPLOY1 GENHLTH SMOKE100 DRNKANY5;
cluster psu_2;
weight finalwt;
strata ststr_2;
run;
*/

/* Sample before removing respondents from first screener question: 342,513
   Final sample: 32,182
*/

/*proc means data = lca_cogdecline0 sum; var finalwt; run;*/

/* Creating Full Data Set for Bivariate Analysis */

data lca_cogdecline0_full;
  set brfss_2015_modv0 brfss_2015_modv1 brfss_2015_modv2 brfss_2016_modv0 brfss_2016_modv1 brfss_2016_modv2 brfss_2016_modv3 brfss_2017_modv0 brfss_2017_modv2 brfss_2017_modv3 brfss_2018_modv0 brfss_2018_modv1 brfss_2018_modv2 brfss_2019_modv0 brfss_2019_modv1 brfss_2019_modv2 brfss_2019_modv3 brfss_2020_modv0 brfss_2020_modv1 brfss_2020_modv2 /*brfss_2015 brfss_2016 brfss_2017 brfss_2018*/;

	* re-calculating weight variable:
		1) renamed weight variable to match and concatenated data sets
		2) no cases where need to account for states using different questionnaire versions within same year of survey
		3) adjust for combining multiple years by multiplying the weight variable by the proportion of each year's contribution to the overall sample size
	 see documentation in folder and here: https://www.cdc.gov/brfss/annual_data/2017/pdf/Complex-Smple-Weights-Prep-Module-Data-Analysis-2017-508.pdf;

	/*2015: 49.70%, 2016: 31.87%, 2017: 10.99%, 2018: 7.43%*/
/*
	if year eq 2015 then finalwt = finalwt*.4970;
	if year eq 2016 then finalwt = finalwt*.3187;
	if year eq 2017 then finalwt = finalwt*.1099;
	if year eq 2018 then finalwt = finalwt*.0743;
*/
	if ageg ge 4; /*Only 45 and greater asked this question.*/

	array m(*) CIMEMLOS CDHOUSE CDASSIST CDHELP CDSOCIAL CDDISCUS BMI5CAT AGEG SMOKE100 DRNKANY5 RACEG21 INCOMG GENHLTH EDUCAG MARITAL SEX;
	do i = 1 to dim(m);
		if m(i) in (7 9) then m(i) = .;
	end;

	if EMPLOY1 in (8 9) then EMPLOY1 = .;

	if CDASSIST in (4 5) then CDHELP = 5;

	if RACE eq 9 then RACE = .;

	stratapsu = _n_;

	psu_2 = psu*.00000001;

	ststr_2 = ststr*.0001;

	/* 	RECODING DEMOGRAPHICS */

	if SEX eq 2 then SEX = 0;

	AGEG = AGEG - 4;

	RACEG21 = RACEG21 - 1;

	if INCOMG in (3 4) then INCOMG = 3; *25-50k;
	if INCOMG in (5)   then INCOMG = 4; *50k+;

	if EMPLOY1 in (1 2)     then EMPLOY1 = 2; *Employed;
	if EMPLOY1 in (7)       then EMPLOY1 = 0; *Retired;
	if EMPLOY1 in (3 4 5 6) then EMPLOY1 = 1; *Unemployed;

	if GENHLTH in (1 2 3) then GENHLTH = 1;
	if GENHLTH in (4 5)   then GENHLTH = 0;

	if DRNKANY5 eq 2 then DRNKANY5 = 0;

	if SMOKE100 eq 2 then SMOKE100 = 0;

	drop i;

run;

proc freq data = lca_cogdecline0_full;
table year;
run;


/*STATE PSU GENHLTH SEX MARITAL EMPLOY1 SMOKE100 CIMEMLOS CDHOUSE CDASSIST CDHELP CDSOCIAL CDDISCUS STSTR finalwt RACEG21 AGEG BMI5CAT EDUCAG INCOMG DRNKANY5 stratapsu psu_2 ststr_2*/

proc export data = lca_cogdecline0
	outfile="C:\Users\tuk04132\OneDrive - Temple University\Documents\LCA BRFSS\SAS\BRFSS_CogDec_impute.csv"
	dbms=csv
	replace;
	putnames=no;
run;

proc contents data = lca_cogdecline0 varnum; run;

proc print data = lca_cogdecline0 (obs=10);
var psu psu_2 ststr ststr_2;
run;

proc format;
	value ageg
		1 = "1: 18-24"
		2 = "2: 25-34"
		3 = "3: 35-44"
		4 = "4: 45-54"
		5 = "5: 55-64"
		6 = "6: 65 or older"
	;
	value sex
		1 = "1: Male"
		2 = "2: Female"
	;
	value employ1
		1 = "1: Employed for wages"
		2 = "2: Self-employed"
		3 = "3: Out of work for 1 year or more"
		4 = "4: Out of work for less than 1 year"
		5 = "5: A homemaker"
		6 = "6: A student"
		7 = "7: Retired"
	;
	value genhlth
		1 = "1: Excellent"
		2 = "2: Very good"
		3 = "3: Good"
		4 = "4: Fair"
		5 = "5: Poor"
	;
	value smoke100
		1 = "1: Yes"
		2 = "2: No"
	;
	value raceg21
		1 = "1: Non-Hispanic White"
		2 = "2: Non-White or Hispanic"
	;
	value bmi5cat
		1 = "1: Underweight"
		2 = "2: Normal Weight"
		3 = "3: Overweight"
		4 = "4: Obese"
	;
	value educag
		1 = "1: Did not graduate high school"
		2 = "2: Graduated high school"
		3 = "3: Attended Colled or Technical School"
		4 = "4: Graduated from College or Technical School"
	;
	value incomg
		1 = "1: < 15k"
		2 = "2: 15k to < 25k"
		3 = "3: 25k to < 35k"
		4 = "4: 35k to < 50k"
		5 = "5: 50k or more"
	;
	value drnkany5
		1 = "1: Yes"
		2 = "2: No"
	;
run;



proc freq data = lca_cogdecline0;
table smoke100;
run;


/* Descriptive SURVEYFREQ tables*/

data lca_cogdecline0_nomiss;
  set lca.lca_cogdecline0;
  array m(*) cimemlos SEX ageg_rec RACE educag INCOMG_4cat EMPLOY1_3cat GENHLTH_bin DRNKANY5 SMOKE100 CDHOUSE CDASSIST CDHELP CDSOCIAL CDDISCUS AGEG_rec age55_64_bin age65_bin RACEG21_rec black aian asian nhpi other multi hisp race4 black4 other4 hisp4 nohs hsgrad SomeColl INCOMG_4cat incomg_15_bin incomg_15_25_bin incomg_25_50_bin EMPLOY1_3cat EMPLOY1_empl EMPLOY1_unempl GENHLTH_bin;
  do  i = 1 to dim(m);
  	if m(i) eq 99 then m(i) = .;
  end;
run;

proc freq data = lca_cogdecline0_nomiss;
table cimemlos*sex/*(AGEG_rec age55_64_bin age65_bin RACEG21_rec black aian asian nhpi other multi hisp race4 black4 other4 hisp4 nohs hsgrad SomeColl INCOMG_4cat incomg_15_bin incomg_15_25_bin incomg_25_50_bin EMPLOY1_3cat EMPLOY1_empl EMPLOY1_unempl GENHLTH_bin)*/ / chisq nopercent cellchi2;
run;

/*
proc surveyfreq data = lca_cogdecline0_nomiss;
table AGEG SEX RACEG21 EDUCAG INCOMG EMPLOY1 MARITAL GENHLTH SMOKE100 DRNKANY5 BMI5CAT;
cluster psu_2;
strata ststr_2;
weight finalwt;
format GENHLTH GENHLTH. SEX SEX. MARITAL MARITAL. EMPLOY1 EMPLOY1. SMOKE100 SMOKE100. RACEG21 RACEG21. AGEG AGEG. BMI5CAT BMI5CAT. EDUCAG EDUCAG. INCOMG INCOMG. DRNKANY5 DRNKANY5.;
run;
*/

%let allvars = SEX ageg_rec RACE educag INCOMG_4cat EMPLOY1_3cat GENHLTH_bin DRNKANY5 SMOKE100 CDHOUSE CDASSIST CDHELP CDSOCIAL CDDISCUS;

ods trace on;
ods output OneWay = UniFreq_SEX;

proc surveyfreq data = lca_cogdecline0_nomiss;
	table SEX / cl;
	cluster psu_2;
	strata ststr_2;
	weight finalwt;
run;

ods output close;
ods trace off;

proc print data = UniFreq_SEX;
run;



%macro unifreq(var);

ods trace on;
ods output OneWay = UniFreq_&var.;

proc surveyfreq data = lca_cogdecline0_nomiss;
	table &var. / cl;
	cluster psu_2;
	strata ststr_2;
	weight finalwt;
run;

ods output close;
ods trace off;

data UniFreq2_&var.;
  set UniFreq_&var.;
	keep &var. frequency percent lowercl uppercl;
run;

proc sort data = UniFreq2_&var.;
by &var.;
run;

proc transpose data = UniFreq2_&var.
	out = UniFreq2_&var._freq_wide (drop = _name_)
	prefix = freq;
	id &var.;
	var frequency;
run;

proc transpose data = UniFreq2_&var.
	out = UniFreq2_&var._perc_wide (drop = _name_)
	prefix = perc;
	id &var.;
	var percent;
run;

proc transpose data = UniFreq2_&var.
	out = UniFreq2_&var._lcl_wide (drop = _name_)
	prefix = LowerCL;
	id &var.;
	var LowerCL;
run;

proc transpose data = UniFreq2_&var.
	out = UniFreq2_&var._ucl_wide (drop = _name_)
	prefix = UpperCL;
	id &var.;
	var UpperCL;
run;


data UniFreq3_&var.;
  format variable;
  merge UniFreq2_&var._freq_wide UniFreq2_&var._perc_wide UniFreq2_&var._lcl_wide UniFreq2_&var._ucl_wide;
    length variable $20.;
	variable = "&var.";
run;

%mend;

%macro unifreq_run;
%do i = 1 %to %sysfunc(countw(&allvars.));
	%unifreq(%scan(&allvars.,&i.));
%end;
%mend;
%unifreq_run;

data UniFreq;
  set UniFreq3_:;
run;

proc print data = unifreq noobs;
run;




/* Bivariate */


%let covars = AGEG SEX RACE EDUCAG INCOMG EMPLOY1 MARITAL GENHLTH SMOKE100 DRNKANY5 BMI5CAT;

%macro bifreq(var);

ods trace on;
ods output CrossTabs = BiFreq_&var.;
ods output ChiSq     = BiChi_&var.;

proc surveyfreq data = lca_cogdecline0_full;
	table CIMEMLOS*(&var.) / chisq;
	cluster psu_2;
	strata ststr_2;
	weight finalwt;
run;

ods output close;
ods trace off;

data bifreq2_&var.;
  set bifreq_&var.;
	keep CIMEMLOS &var. frequency percent cell;
	cell = cat("D",strip(CIMEMLOS),"E",strip(&var.));
  if &var. ne .;
run;

proc sort data = bifreq2_&var.;
by &var.;
run;

proc transpose data = bifreq2_&var.
	out = bifreq2_&var._freq_wide (drop = _name_)
	prefix = freq_;
	id cell;
	var frequency;
run;

proc transpose data = bifreq2_&var.
	out = bifreq2_&var._perc_wide (drop = _name_)
	prefix = perc_;
	id cell;
	var percent;
run;

data bifreq3_&var.;
  format variable;
  merge bifreq2_&var._freq_wide bifreq2_&var._perc_wide;
	variable = "&var.";
run;

data BiChi2_&var.;
  format variable;
  set BiChi_&var.;
	if _n_ = 6;
	variable = "&var.";
	rename cvalue1 = raoscott_pvalue;
	keep cvalue1 variable;
run;

data bi_&var.;
  merge bifreq3_&var. BiChi2_&var.;
run;

%mend;

%macro bifreq_run;
%do i = 1 %to %sysfunc(countw(&covars.));
	%bifreq(%scan(&covars.,&i.));
%end;
%mend;
%bifreq_run;

data bifreq;
  set bi_:;
run;

proc print data = bifreq noobs;
run;


/* Testing for Missing At Random */
dm log 'clear';
%let missvars = SEX ageg_rec RACE educag INCOMG_4cat EMPLOY1_3cat GENHLTH_bin DRNKANY5 SMOKE100;
options nomprint nosymbolgen;
%macro miss;
	data lca_cogdecline0_mar;
	  set lca_cogdecline0_nomiss;
		array m(*) &missvars.;
			%do i = 1 %to 9;
				%scan(&missvars.,&i.)_miss = 0;
				if %scan(&missvars.,&i.) eq . then %scan(&missvars.,&i.)_miss = 1;
			%end;
	run;
%mend;
%miss;

proc freq data = lca_cogdecline0_mar;
table SEX_miss ageg_rec_miss RACE_miss educag_miss INCOMG_4cat_miss EMPLOY1_3cat_miss GENHLTH_bin_miss DRNKANY5_miss SMOKE100_miss;
run;

title "Do the independent variables predict missingess in: Sex";
proc logistic data = lca_cogdecline0_mar;
class ageg_rec RACE educag INCOMG_4cat EMPLOY1_3cat GENHLTH_bin DRNKANY5 SMOKE100;
model SEX_miss(event='1') = ageg_rec RACE educag INCOMG_4cat EMPLOY1_3cat GENHLTH_bin DRNKANY5 SMOKE100;
run;
/*No covariates predict missingness in sex*/

/*Age has no missing*/

title "Do the independent variables predict missingess in: Race";
proc logistic data = lca_cogdecline0_mar;
class SEX ageg_rec educag INCOMG_4cat EMPLOY1_3cat GENHLTH_bin DRNKANY5 SMOKE100;
model RACE_miss(event='1') = sex ageg_rec educag INCOMG_4cat EMPLOY1_3cat GENHLTH_bin DRNKANY5 SMOKE100;
run;
/*Missingess in Race is predicted by Sex and Education*/

title "Do the independent variables predict missingess in: Education";
proc logistic data = lca_cogdecline0_mar;
class sex ageg_rec RACE INCOMG_4cat EMPLOY1_3cat GENHLTH_bin DRNKANY5 SMOKE100;
model educag_miss(event='1') = sex ageg_rec RACE INCOMG_4cat EMPLOY1_3cat GENHLTH_bin DRNKANY5 SMOKE100;
run;
/*Missingness in Education is predicted by Age and Income*/

title "Do the independent variables predict missingess in: Income";
proc logistic data = lca_cogdecline0_mar;
class sex ageg_rec RACE educag EMPLOY1_3cat GENHLTH_bin DRNKANY5 SMOKE100;
model INCOMG_4cat_miss(event='1') = sex ageg_rec RACE educag EMPLOY1_3cat GENHLTH_bin DRNKANY5 SMOKE100;
run;
/*Missingness in Income is predicted by all covariates except general health*/

title "Do the independent variables predict missingess in: Employment";
proc logistic data = lca_cogdecline0_mar;
class sex ageg_rec RACE educag INCOMG_4cat GENHLTH_bin DRNKANY5 SMOKE100;
model EMPLOY1_3cat_miss(event='1') = sex ageg_rec RACE educag INCOMG_4cat GENHLTH_bin DRNKANY5 SMOKE100;
run;
/*Missingess in Employment is predicted by all covariates*/

title "Do the independent variables predict missingess in: General Health";
proc logistic data = lca_cogdecline0_mar;
class sex ageg_rec RACE educag INCOMG_4cat EMPLOY1_3cat DRNKANY5 SMOKE100;
model GENHLTH_bin_miss(event='1') = sex ageg_rec RACE educag INCOMG_4cat EMPLOY1_3cat DRNKANY5 SMOKE100;
run;
/*Missingness in General Health is predicted by Income*/

title "Do the independent variables predict missingess in: Drinking behavior";
proc logistic data = lca_cogdecline0_mar;
class sex ageg_rec RACE educag INCOMG_4cat EMPLOY1_3cat GENHLTH_bin SMOKE100;
model DRNKANY5_miss(event='1') = sex ageg_rec RACE educag INCOMG_4cat EMPLOY1_3cat GENHLTH_bin SMOKE100;
run;
/*Missingness in Drinking behavior is predicted by Sex and Education*/

title "Do the independent variables predict missingess in: Smoking behavior";
proc logistic data = lca_cogdecline0_mar;
class ageg_rec RACE educag INCOMG_4cat EMPLOY1_3cat GENHLTH_bin DRNKANY5;
model SMOKE100_miss(event='1') = ageg_rec RACE educag INCOMG_4cat EMPLOY1_3cat GENHLTH_bin DRNKANY5;
run;
/*Missingness in smoking behavior is predicted by race*/
