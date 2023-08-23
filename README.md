# Manuscript_BRFSS_LCA

The files included in this repository were used to perform the analyses associated with this manuscript: https://doi.org/10.1186/s12889-022-14001-2

Could not upload SAS data because the files were too big. However, all the data can be found here: https://www.cdc.gov/brfss/annual_data/annual_data.htm

After using the CDC's programs to convert BRFSS survey data to .sas7bdat files, DataPrep_062322.sas was used to clean and prep SAS data for analysis, calculate univariate and bivariate statistics, output descriptive statistics to generate manuscript tables, and assess missingness.

All of the code (and output) used to run the latent class analysis, including initial runs and testing different latent classes, as well as the multinomial logistic regression are found in 'Mplus files.zip'.

CogDec_LCA_cprobs_final.csv has the final output from the optimal latent class model, including the probability of which class each individual falls into based on their response patterns.
