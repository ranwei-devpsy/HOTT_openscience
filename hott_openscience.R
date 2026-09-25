# HOTT analysis
# version date: 20260309


# Packages -----------------------------------------------------
library(ppcor)
library(QuantPsyc)
library(parameters)
library(mediation)

df_hott_full <- read.csv(file = "data/df_hott_full_20260309.csv", header = TRUE)

# Descriptive statistics: participant demographics and Table 2 (HOTT descriptives) ----
summary(df_hott_full$child_age_months_v1)

sd(df_hott_full$child_age_months_v1)

table(df_hott_full$child_female)
table(df_hott_full$parent_female)

summary(df_hott_full$parent_edu_years)
sd(df_hott_full$parent_edu_years)

table(df_hott_full$parent_income)
21/71
26/71
24/71

table(df_hott_full$child_ethnicity)
37/71
13/71
1/71
1/71
19/71

summary(df_hott_full$speak)
summary(df_hott_full$speak_v2)
sd(df_hott_full$speak, na.rm = TRUE)

summary(df_hott_full$alphabet_total)
sd(df_hott_full$alphabet_total, na.rm = TRUE)
summary(df_hott_full$rhyme_total)
sd(df_hott_full$rhyme_total, na.rm = TRUE)

# Find all rows with missing data in the "speak" column
df_hott_full$id[is.na(df_hott_full$speak)]
df_hott_full$id[is.na(df_hott_full$speak_v2)]

summary(df_hott_full$quils_overall_raw)
sd(df_hott_full$quils_overall_raw, na.rm = TRUE)
df_hott_full$id[is.na(df_hott_full$quils_overall_raw)]

summary(df_hott_full$quils_vocab_raw)
sd(df_hott_full$quils_vocab_raw, na.rm = TRUE)
df_hott_full$id[is.na(df_hott_full$quils_vocab_raw)]

summary(df_hott_full$quils_syntax_raw)
mean(df_hott_full$quils_syntax_raw, na.rm = TRUE)
sd(df_hott_full$quils_syntax_raw, na.rm = TRUE)
df_hott_full$id[is.na(df_hott_full$quils_syntax_raw)]

summary(df_hott_full$quils_process_raw)
mean(df_hott_full$quils_process_raw, na.rm = TRUE)
sd(df_hott_full$quils_process_raw, na.rm = TRUE)
df_hott_full$id[is.na(df_hott_full$quils_process_raw)]

summary(df_hott_full$totalprt_totalutt)
mean(df_hott_full$totalprt_totalutt, na.rm = TRUE)
sd(df_hott_full$totalprt_totalutt, na.rm = TRUE)

summary(df_hott_full$totalchi_totalutt)
mean(df_hott_full$totalchi_totalutt, na.rm = TRUE)
sd(df_hott_full$totalchi_totalutt, na.rm = TRUE)

summary(df_hott_full$mlu_morphemes)
mean(df_hott_full$mlu_morphemes, na.rm = TRUE)
sd(df_hott_full$mlu_morphemes, na.rm = TRUE)

summary(df_hott_full$vocd_prt)
mean(df_hott_full$vocd_prt, na.rm = TRUE)
sd(df_hott_full$vocd_prt, na.rm = TRUE)

summary(df_hott_full$vocd_chi)
mean(df_hott_full$vocd_chi, na.rm = TRUE)
sd(df_hott_full$vocd_chi, na.rm = TRUE)

summary(df_hott_full$totalprt_hottcodes_4c)
mean(df_hott_full$totalprt_hottcodes_4c, na.rm = TRUE)
sd(df_hott_full$totalprt_hottcodes_4c, na.rm = TRUE)

summary(df_hott_full$totalprt_hottcodes_4c_pct)
mean(df_hott_full$totalprt_hottcodes_4c_pct, na.rm = TRUE)
sd(df_hott_full$totalprt_hottcodes_4c_pct, na.rm = TRUE)

summary(df_hott_full$totalchi_hottcodes_4c)
mean(df_hott_full$totalchi_hottcodes_4c, na.rm = TRUE)
sd(df_hott_full$totalchi_hottcodes_4c, na.rm = TRUE)

summary(df_hott_full$totalchi_hottcodes_4c_pct)
mean(df_hott_full$totalchi_hottcodes_4c_pct, na.rm = TRUE)
sd(df_hott_full$totalchi_hottcodes_4c_pct, na.rm = TRUE)

summary(df_hott_full$totalprt_inf)
mean(df_hott_full$totalprt_inf, na.rm = TRUE)
sd(df_hott_full$totalprt_inf, na.rm = TRUE)

summary(df_hott_full$totalprt_inf_pct)
mean(df_hott_full$totalprt_inf_pct, na.rm = TRUE)
sd(df_hott_full$totalprt_inf_pct, na.rm = TRUE)

summary(df_hott_full$totalchi_inf)
mean(df_hott_full$totalchi_inf, na.rm = TRUE)
sd(df_hott_full$totalchi_inf, na.rm = TRUE)

summary(df_hott_full$totalchi_inf_pct)
mean(df_hott_full$totalchi_inf_pct, na.rm = TRUE)
sd(df_hott_full$totalchi_inf_pct, na.rm = TRUE)

summary(df_hott_full$totalprt_com)
mean(df_hott_full$totalprt_com, na.rm = TRUE)
sd(df_hott_full$totalprt_com, na.rm = TRUE)

summary(df_hott_full$totalprt_com_pct)
mean(df_hott_full$totalprt_com_pct, na.rm = TRUE)
sd(df_hott_full$totalprt_com_pct, na.rm = TRUE)

summary(df_hott_full$totalchi_com)
mean(df_hott_full$totalchi_com, na.rm = TRUE)
sd(df_hott_full$totalchi_com, na.rm = TRUE)

summary(df_hott_full$totalchi_com_pct)
mean(df_hott_full$totalchi_com_pct, na.rm = TRUE)
sd(df_hott_full$totalchi_com_pct, na.rm = TRUE)

summary(df_hott_full$totalprt_abs)
mean(df_hott_full$totalprt_abs, na.rm = TRUE)
sd(df_hott_full$totalprt_abs, na.rm = TRUE)

summary(df_hott_full$totalprt_abs_pct)
mean(df_hott_full$totalprt_abs_pct, na.rm = TRUE)
sd(df_hott_full$totalprt_abs_pct, na.rm = TRUE)

summary(df_hott_full$totalchi_abs)
mean(df_hott_full$totalchi_abs, na.rm = TRUE)
sd(df_hott_full$totalchi_abs, na.rm = TRUE)

summary(df_hott_full$totalchi_abs_pct)
mean(df_hott_full$totalchi_abs_pct, na.rm = TRUE)
sd(df_hott_full$totalchi_abs_pct, na.rm = TRUE)

summary(df_hott_full$totalprt_hie)
mean(df_hott_full$totalprt_hie, na.rm = TRUE)
sd(df_hott_full$totalprt_hie, na.rm = TRUE)

summary(df_hott_full$totalprt_hie_pct)
mean(df_hott_full$totalprt_hie_pct, na.rm = TRUE)
sd(df_hott_full$totalprt_hie_pct, na.rm = TRUE)

summary(df_hott_full$totalchi_hie)
mean(df_hott_full$totalchi_hie, na.rm = TRUE)
sd(df_hott_full$totalchi_hie, na.rm = TRUE)

summary(df_hott_full$totalchi_hie_pct)
mean(df_hott_full$totalchi_hie_pct, na.rm = TRUE)
sd(df_hott_full$totalchi_hie_pct, na.rm = TRUE)



summary(df_hott_full$totalprt_fac_4c)
mean(df_hott_full$totalprt_fac_4c, na.rm = TRUE)
sd(df_hott_full$totalprt_fac_4c, na.rm = TRUE)

summary(df_hott_full$totalprt_fac_4c_pct)
mean(df_hott_full$totalprt_fac_4c_pct, na.rm = TRUE)
sd(df_hott_full$totalprt_fac_4c_pct, na.rm = TRUE)

summary(df_hott_full$totalchi_fac_4c)
mean(df_hott_full$totalchi_fac_4c, na.rm = TRUE)
sd(df_hott_full$totalchi_fac_4c, na.rm = TRUE)

summary(df_hott_full$totalchi_fac_4c_pct)
mean(df_hott_full$totalchi_fac_4c_pct, na.rm = TRUE)
sd(df_hott_full$totalchi_fac_4c_pct, na.rm = TRUE)



summary(df_hott_full$totalprt_str_4c)
mean(df_hott_full$totalprt_str_4c, na.rm = TRUE)
sd(df_hott_full$totalprt_str_4c, na.rm = TRUE)

summary(df_hott_full$totalprt_str_4c_pct)
mean(df_hott_full$totalprt_str_4c_pct, na.rm = TRUE)
sd(df_hott_full$totalprt_str_4c_pct, na.rm = TRUE)

summary(df_hott_full$totalchi_str_4c)
mean(df_hott_full$totalchi_str_4c, na.rm = TRUE)
sd(df_hott_full$totalchi_str_4c, na.rm = TRUE)

summary(df_hott_full$totalchi_str_4c_pct)
mean(df_hott_full$totalchi_str_4c_pct, na.rm = TRUE)
sd(df_hott_full$totalchi_str_4c_pct, na.rm = TRUE)



summary(df_hott_full$totalprt_give_4c)
mean(df_hott_full$totalprt_give_4c, na.rm = TRUE)
sd(df_hott_full$totalprt_give_4c, na.rm = TRUE)

summary(df_hott_full$totalprt_give_4c_pct)
mean(df_hott_full$totalprt_give_4c_pct, na.rm = TRUE)
sd(df_hott_full$totalprt_give_4c_pct, na.rm = TRUE)

summary(df_hott_full$totalchi_give_4c)
mean(df_hott_full$totalchi_give_4c, na.rm = TRUE)
sd(df_hott_full$totalchi_give_4c, na.rm = TRUE)

summary(df_hott_full$totalchi_give_4c_pct)
mean(df_hott_full$totalchi_give_4c_pct, na.rm = TRUE)
sd(df_hott_full$totalchi_give_4c_pct, na.rm = TRUE)



summary(df_hott_full$totalprt_ask_4c)
mean(df_hott_full$totalprt_ask_4c, na.rm = TRUE)
sd(df_hott_full$totalprt_ask_4c, na.rm = TRUE)

summary(df_hott_full$totalprt_ask_4c_pct)
mean(df_hott_full$totalprt_ask_4c_pct, na.rm = TRUE)
sd(df_hott_full$totalprt_ask_4c_pct, na.rm = TRUE)

summary(df_hott_full$totalchi_ask_4c)
mean(df_hott_full$totalchi_ask_4c, na.rm = TRUE)
sd(df_hott_full$totalchi_ask_4c, na.rm = TRUE)

summary(df_hott_full$totalchi_ask_4c_pct)
mean(df_hott_full$totalchi_ask_4c_pct, na.rm = TRUE)
sd(df_hott_full$totalchi_ask_4c_pct, na.rm = TRUE)

# how many children used hott?
1 - sum(df_hott_full$totalchi_hottcodes_4c == 0, na.rm = TRUE)/71

cor.test(df_hott_full$totalprt_hottcodes_4c_pct, df_hott_full$totalchi_hottcodes_4c_pct)

# Examining the roles of parental education and knowledge (SPEAK) ----------------------
pcor.test(df_hott_full$parent_edu_years, df_hott_full$totalprt_hottcodes_4c_pct, df_hott_full$child_age_months_v1)
pcor.test(df_hott_full$parent_edu_years, df_hott_full$totalchi_hottcodes_4c_pct, df_hott_full$child_age_months_v1)

# removing families with NAs in speak 
vec_speak <- c("speak", "totalprt_hottcodes_4c_pct", "totalchi_hottcodes_4c_pct", "child_age_months_v1")
df_hott_omitnainspeak <- subset(df_hott_full, select = vec_speak)
# Keep only complete cases
df_hott_omitnainspeak <- df_hott_omitnainspeak[complete.cases(df_hott_omitnainspeak), ]
dim(df_hott_omitnainspeak)
pcor.test(df_hott_omitnainspeak$speak, df_hott_omitnainspeak$totalprt_hottcodes_4c_pct, df_hott_omitnainspeak$child_age_months_v1)
pcor.test(df_hott_omitnainspeak$speak, df_hott_omitnainspeak$totalchi_hottcodes_4c_pct, df_hott_omitnainspeak$child_age_months_v1)

# variable distribution
hist(df_hott_full$totalchi_hottcodes_4c_pct)
hist(df_hott_full$totalprt_hottcodes_4c_pct)

df_hott_full$totalprt_hottcodes_4c_pct_log <- log(100*df_hott_full$totalprt_hottcodes_4c_pct + 1)
df_hott_full$totalchi_hottcodes_4c_pct_log <- log(100*df_hott_full$totalchi_hottcodes_4c_pct + 1)

# Predicting quils --------------------------------------------------------

# Are parental and child talk quantity related to QUILS scores?

exq_overall_prt <- lm(df_hott_full$quils_overall_raw ~ df_hott_full$totalprt_totalutt + df_hott_full$child_age_months_v1 + df_hott_full$parent_edu_years)
summary(exq_overall_prt) #nonsig
exq_overall_chi <- lm(df_hott_full$quils_overall_raw ~ df_hott_full$totalchi_totalutt + df_hott_full$child_age_months_v1 + df_hott_full$parent_edu_years)
summary(exq_overall_chi) #nonsig

exq_vocab_prt <- lm(df_hott_full$quils_vocab_raw ~ df_hott_full$totalprt_totalutt + df_hott_full$child_age_months_v1 + df_hott_full$parent_edu_years)
summary(exq_vocab_prt) #nonsig
exq_vocab_chi <- lm(df_hott_full$quils_vocab_raw ~ df_hott_full$totalchi_totalutt + df_hott_full$child_age_months_v1 + df_hott_full$parent_edu_years)
summary(exq_vocab_chi) #nonsig

exq_syntax_prt <- lm(df_hott_full$quils_syntax_raw ~ df_hott_full$totalprt_totalutt + df_hott_full$child_age_months_v1 + df_hott_full$parent_edu_years)
summary(exq_syntax_prt) #nonsig
exq_syntax_chi <- lm(df_hott_full$quils_syntax_raw ~ df_hott_full$totalchi_totalutt + df_hott_full$child_age_months_v1 + df_hott_full$parent_edu_years)
summary(exq_syntax_chi) #nonsig

exq_process_prt <- lm(df_hott_full$quils_process_raw ~ df_hott_full$totalprt_totalutt + df_hott_full$child_age_months_v1 + df_hott_full$parent_edu_years)
summary(exq_process_prt) #nonsig
exq_process_chi <- lm(df_hott_full$quils_process_raw ~ df_hott_full$totalchi_totalutt + df_hott_full$child_age_months_v1 + df_hott_full$parent_edu_years)
summary(exq_process_chi) #nonsig

exq_alpha_prt <- lm(df_hott_full$alphabet_total ~ df_hott_full$totalprt_totalutt + df_hott_full$child_age_months_v1 + df_hott_full$parent_edu_years)
summary(exq_alpha_prt) #nonsig
exq_alpha_chi <- lm(df_hott_full$alphabet_total ~ df_hott_full$totalchi_totalutt + df_hott_full$child_age_months_v1 + df_hott_full$parent_edu_years)
summary(exq_alpha_chi) #nonsig

exq_rhyme_prt <- lm(df_hott_full$rhyme_total ~ df_hott_full$totalprt_totalutt + df_hott_full$child_age_months_v1 + df_hott_full$parent_edu_years)
summary(exq_rhyme_prt) #nonsig
exq_rhyme_chi <- lm(df_hott_full$rhyme_total ~ df_hott_full$totalchi_totalutt + df_hott_full$child_age_months_v1 + df_hott_full$parent_edu_years)
summary(exq_rhyme_chi) #nonsig

# Does treatment/control condition relate to quils scores? 

grpcheck_overall <- lm(df_hott_full$quils_overall_raw ~ df_hott_full$treatment + df_hott_full$child_age_months_v1 + df_hott_full$parent_edu_years)
summary(grpcheck_overall) #nonsig
grpcheck_vocab <- lm(df_hott_full$quils_vocab_raw ~ df_hott_full$treatment + df_hott_full$child_age_months_v1 + df_hott_full$parent_edu_years)
summary(grpcheck_vocab) #nonsig
grpcheck_syntax <- lm(df_hott_full$quils_syntax_raw ~ df_hott_full$treatment + df_hott_full$child_age_months_v1 + df_hott_full$parent_edu_years)
summary(grpcheck_syntax) #nonsig
grpcheck_process <- lm(df_hott_full$quils_process_raw ~ df_hott_full$treatment + df_hott_full$child_age_months_v1 + df_hott_full$parent_edu_years)
summary(grpcheck_process) #nonsig
grpcheck_alpha <- lm(df_hott_full$alphabet_total ~ df_hott_full$treatment + df_hott_full$child_age_months_v1 + df_hott_full$parent_edu_years)
summary(grpcheck_alpha) #nonsig
grpcheck_rhyme <- lm(df_hott_full$rhyme_total ~ df_hott_full$treatment + df_hott_full$child_age_months_v1 + df_hott_full$parent_edu_years)
summary(grpcheck_rhyme) #nonsig

grpcheck_chi_hott <- lm(df_hott_full$totalchi_hottcodes_4c ~ df_hott_full$treatment + df_hott_full$child_age_months_v1 + df_hott_full$parent_edu_years)
summary(grpcheck_chi_hott) #nonsig
grpcheck_prt_hott <- lm(df_hott_full$totalprt_hottcodes_4c ~ df_hott_full$treatment + df_hott_full$child_age_months_v1 + df_hott_full$parent_edu_years)
summary(grpcheck_prt_hott) #nonsig


# Table 4: Regressions predicting QUILS raw scores -------------------------------------

t4_m1 <- lm(quils_overall_raw ~ child_age_months_v1 + parent_edu_years + totalprt_hottcodes_4c_pct_log, data = df_hott_full)
parameters::model_parameters(t4_m1, standardize = "refit")
lm.beta(t4_m1)
summary(t4_m1)

t4_m2 <- lm(quils_overall_raw ~ child_age_months_v1 + parent_edu_years + totalchi_hottcodes_4c_pct_log, data = df_hott_full)
summary(t4_m2)

t4_m3 <- lm(quils_overall_raw ~ child_age_months_v1 + parent_edu_years + totalprt_hottcodes_4c_pct_log + mlu_morphemes + vocd_prt, data = df_hott_full)
summary(t4_m3)

# vocab

t4_m4 <- lm(quils_vocab_raw ~ child_age_months_v1 + parent_edu_years + totalprt_hottcodes_4c_pct_log, data = df_hott_full)
summary(t4_m4)

t4_m5 <- lm(quils_vocab_raw ~ child_age_months_v1 + parent_edu_years + totalchi_hottcodes_4c_pct_log, data = df_hott_full)
summary(t4_m5)

t4_m6 <- lm(quils_vocab_raw ~ child_age_months_v1 + parent_edu_years + totalprt_hottcodes_4c_pct_log + mlu_morphemes + vocd_prt, data = df_hott_full)
summary(t4_m6)

# syntax

t4_m7 <- lm(quils_syntax_raw ~ child_age_months_v1 + parent_edu_years + totalprt_hottcodes_4c_pct_log, data = df_hott_full)
summary(t4_m7)

t4_m8 <- lm(quils_syntax_raw ~ child_age_months_v1 + parent_edu_years + totalchi_hottcodes_4c_pct_log, data = df_hott_full)
summary(t4_m8)

t4_m9 <- lm(quils_syntax_raw ~ child_age_months_v1 + parent_edu_years + totalprt_hottcodes_4c_pct_log + mlu_morphemes + vocd_prt, data = df_hott_full)
summary(t4_m9)

# process

t4_m10 <- lm(quils_process_raw ~ child_age_months_v1 + parent_edu_years + totalprt_hottcodes_4c_pct_log, data = df_hott_full)
summary(t4_m10)

t4_m11 <- lm(quils_process_raw ~ child_age_months_v1 + parent_edu_years + totalchi_hottcodes_4c_pct_log, data = df_hott_full)
summary(t4_m11)

t4_m12 <- lm(quils_process_raw ~ child_age_months_v1 + parent_edu_years + totalprt_hottcodes_4c_pct_log + mlu_morphemes + vocd_prt, data = df_hott_full)
summary(t4_m12)

# Table 5: Regressions predicting PALS raw scores -------------------------------------

t5_m1 <- lm(alphabet_total ~ child_age_months_v1 + parent_edu_years + totalprt_hottcodes_4c_pct_log, data = df_hott_full)
summary(t5_m1)

t5_m2 <- lm(alphabet_total ~ child_age_months_v1 + parent_edu_years + totalchi_hottcodes_4c_pct_log, data = df_hott_full)
summary(t5_m2)

t5_m3 <- lm(rhyme_total ~ child_age_months_v1 + parent_edu_years + totalprt_hottcodes_4c_pct_log, data = df_hott_full)
summary(t5_m3)

t5_m4 <- lm(rhyme_total ~ child_age_months_v1 + parent_edu_years + totalchi_hottcodes_4c_pct_log, data = df_hott_full)
summary(t5_m4)


# Testing structure versus surface HOTT -----------------------------------

hist(df_hott_full$totalprt_str_4c_pct)
hist(df_hott_full$totalprt_fac_4c_pct)
# both right skewed 

df_hott_full$totalprt_str_4c_pct_log <- log(100*df_hott_full$totalprt_str_4c_pct + 1)
df_hott_full$totalprt_fac_4c_pct_log <- log(100*df_hott_full$totalprt_fac_4c_pct + 1)

# Table 6 (Models 1-2): Structure vs. surface HOTT predicting QUILS overall -----------
t6_str <- lm(quils_overall_raw ~ child_age_months_v1 + parent_edu_years + totalprt_str_4c_pct_log, data = df_hott_full)
summary(t6_str)

t6_fac <- lm(quils_overall_raw ~ child_age_months_v1 + parent_edu_years + totalprt_fac_4c_pct_log, data = df_hott_full)
summary(t6_fac)


# Table S3: Structure vs. surface HOTT predicting QUILS subscales ---------------------

s3_m1 <- lm(quils_vocab_raw ~ child_age_months_v1 + parent_edu_years + totalprt_str_4c_pct_log, data = df_hott_full)
summary(s3_m1)

s3_m2 <- lm(quils_vocab_raw ~ child_age_months_v1 + parent_edu_years + totalprt_fac_4c_pct_log, data = df_hott_full)
summary(s3_m2)

s3_m3 <- lm(quils_syntax_raw ~ child_age_months_v1 + parent_edu_years + totalprt_str_4c_pct_log, data = df_hott_full)
summary(s3_m3)

s3_m4 <- lm(quils_syntax_raw ~ child_age_months_v1 + parent_edu_years + totalprt_fac_4c_pct_log, data = df_hott_full)
summary(s3_m4)

s3_m5 <- lm(quils_process_raw ~ child_age_months_v1 + parent_edu_years + totalprt_str_4c_pct_log, data = df_hott_full)
summary(s3_m5)

s3_m6 <- lm(quils_process_raw ~ child_age_months_v1 + parent_edu_years + totalprt_fac_4c_pct_log, data = df_hott_full)
summary(s3_m6)


# provision versus elicitation ----------------------------------------------------------------

hist(df_hott_full$totalprt_give_4c_pct)
hist(df_hott_full$totalprt_ask_4c_pct)
# both right skewed 

df_hott_full$totalprt_ask_4c_pct_log <- log(100*df_hott_full$totalprt_ask_4c_pct + 1)
df_hott_full$totalprt_give_4c_pct_log <- log(100*df_hott_full$totalprt_give_4c_pct + 1)

# Table 6 (Models 3-4): Elicitation vs. provision of HOTT predicting QUILS overall ----
t6_ask <- lm(quils_overall_raw ~ child_age_months_v1 + parent_edu_years + totalprt_ask_4c_pct_log, data = df_hott_full)
summary(t6_ask)

t6_give <- lm(quils_overall_raw ~ child_age_months_v1 + parent_edu_years + totalprt_give_4c_pct_log, data = df_hott_full)
summary(t6_give)

# Table S4: Elicitation vs. provision of HOTT predicting QUILS subscales --------------
s4_m1 <- lm(quils_vocab_raw ~ child_age_months_v1 + parent_edu_years + totalprt_ask_4c_pct_log, data = df_hott_full)
summary(s4_m1)

s4_m2 <- lm(quils_vocab_raw ~ child_age_months_v1 + parent_edu_years + totalprt_give_4c_pct_log, data = df_hott_full)
summary(s4_m2)

s4_m3 <- lm(quils_syntax_raw ~ child_age_months_v1 + parent_edu_years + totalprt_ask_4c_pct_log, data = df_hott_full)
summary(s4_m3)

s4_m4 <- lm(quils_syntax_raw ~ child_age_months_v1 + parent_edu_years + totalprt_give_4c_pct_log, data = df_hott_full)
summary(s4_m4)

s4_m5 <- lm(quils_process_raw ~ child_age_months_v1 + parent_edu_years + totalprt_ask_4c_pct_log, data = df_hott_full)
summary(s4_m5)

s4_m6 <- lm(quils_process_raw ~ child_age_months_v1 + parent_edu_years + totalprt_give_4c_pct_log, data = df_hott_full)
summary(s4_m6)

cor.test(df_hott_full$totalprt_ask_4c_pct_log, df_hott_full$totalchi_hottcodes_4c_pct)


# parent and child HOTT simultaneously considered -------------------------

# Table 6 (Model 5): Parent and child HOTT predicting QUILS overall -------------------
t6_prtchi <- lm(quils_overall_raw ~ child_age_months_v1 + parent_edu_years + totalprt_hottcodes_4c_pct_log + totalchi_hottcodes_4c_pct_log, data = df_hott_full)
summary(t6_prtchi)

# Table S5: Parent and child HOTT predicting QUILS subscales --------------------------
s5_m1 <- lm(quils_vocab_raw ~ child_age_months_v1 + parent_edu_years + totalprt_hottcodes_4c_pct_log + totalchi_hottcodes_4c_pct_log, data = df_hott_full)
summary(s5_m1)

s5_m2 <- lm(quils_syntax_raw ~ child_age_months_v1 + parent_edu_years + totalprt_hottcodes_4c_pct_log + totalchi_hottcodes_4c_pct_log, data = df_hott_full)
summary(s5_m2)

s5_m3 <- lm(quils_process_raw ~ child_age_months_v1 + parent_edu_years + totalprt_hottcodes_4c_pct_log + totalchi_hottcodes_4c_pct_log, data = df_hott_full)
summary(s5_m3)


# Mediation analysis ------------------------------------------------------

df_hott_qfull <- df_hott_full[ , c("totalprt_hottcodes_4c_pct_log", "totalchi_hottcodes_4c_pct_log", 
                                   "parent_edu_years", "child_age_months_v1", 
                                   "quils_overall_raw")]
df_hott_qfull <- na.omit(df_hott_qfull)
mxa_qfull <- lm(quils_overall_raw ~ totalprt_hottcodes_4c_pct_log + parent_edu_years + child_age_months_v1, data=df_hott_qfull)
ymxa_qfull <- lm(quils_overall_raw ~ totalprt_hottcodes_4c_pct_log + totalchi_hottcodes_4c_pct_log + parent_edu_years + child_age_months_v1, data=df_hott_qfull)
set.seed(1000)
m1a_qfull <- mediate(mxa_qfull, ymxa_qfull, treat="totalprt_hottcodes_4c_pct_log",
                     mediator="totalchi_hottcodes_4c_pct_log", sims=5000, boot=TRUE, boot.ci.type="bca")
summary(m1a_qfull) 
summary(mxa_qfull)
med_qfull <- lm(totalchi_hottcodes_4c_pct_log ~ totalprt_hottcodes_4c_pct_log + parent_edu_years + child_age_months_v1, data=df_hott_qfull)
summary(med_qfull)
med2_qfull <- lm(quils_overall_raw ~ totalchi_hottcodes_4c_pct_log + parent_edu_years + child_age_months_v1, data=df_hott_qfull)
summary(med2_qfull)
summary(ymxa_qfull)


df_hott_qvocab <- df_hott_full[ , c("totalprt_hottcodes_4c_pct_log", "totalchi_hottcodes_4c_pct_log", 
                                    "parent_edu_years", "child_age_months_v1", 
                                    "quils_vocab_raw")]
df_hott_qvocab <- na.omit(df_hott_qvocab)
mxa_qvocab <- lm(quils_vocab_raw ~ totalprt_hottcodes_4c_pct_log + parent_edu_years + child_age_months_v1, data=df_hott_qvocab)
ymxa_qvocab <- lm(quils_vocab_raw ~ totalprt_hottcodes_4c_pct_log + totalchi_hottcodes_4c_pct_log + parent_edu_years + child_age_months_v1, data=df_hott_qvocab)
set.seed(1000)
m1a_vocab <- mediate(mxa_qvocab, ymxa_qvocab, treat="totalprt_hottcodes_4c_pct_log",
                     mediator="totalchi_hottcodes_4c_pct_log", sims=5000, boot=TRUE, boot.ci.type="bca")
summary(m1a_vocab) 


df_hott_qsyntax <- df_hott_full[ , c("totalprt_hottcodes_4c_pct_log", "totalchi_hottcodes_4c_pct_log", 
                                     "parent_edu_years", "child_age_months_v1", 
                                     "quils_syntax_raw")]
df_hott_qsyntax <- na.omit(df_hott_qsyntax)
mxa_qsyntax <- lm(quils_syntax_raw ~ totalprt_hottcodes_4c_pct_log + parent_edu_years + child_age_months_v1, data=df_hott_qsyntax)
ymxa_qsyntax <- lm(quils_syntax_raw ~ totalprt_hottcodes_4c_pct_log + totalchi_hottcodes_4c_pct_log + parent_edu_years + child_age_months_v1, data=df_hott_qsyntax)
set.seed(1000)
m1a_syntax <- mediate(mxa_qsyntax, ymxa_qsyntax, treat="totalprt_hottcodes_4c_pct_log",
                      mediator="totalchi_hottcodes_4c_pct_log", sims=5000, boot=TRUE, boot.ci.type="bca")
summary(m1a_syntax) 


df_hott_qprocess <- df_hott_full[ , c("totalprt_hottcodes_4c_pct_log", "totalchi_hottcodes_4c_pct_log", 
                                      "parent_edu_years", "child_age_months_v1", 
                                      "quils_process_raw")]
df_hott_qprocess <- na.omit(df_hott_qprocess)
mxa_qprocess <- lm(quils_process_raw ~ totalprt_hottcodes_4c_pct_log + parent_edu_years + child_age_months_v1, data=df_hott_qprocess)
ymxa_qprocess <- lm(quils_process_raw ~ totalprt_hottcodes_4c_pct_log + totalchi_hottcodes_4c_pct_log + parent_edu_years + child_age_months_v1, data=df_hott_qprocess)
set.seed(1000)
m1a_process <- mediate(mxa_qprocess, ymxa_qprocess, treat="totalprt_hottcodes_4c_pct_log",
                       mediator="totalchi_hottcodes_4c_pct_log", sims=5000, boot=TRUE, boot.ci.type="bca")
summary(m1a_process) 
summary(mxa_qprocess)
med_qprocess <- lm(totalchi_hottcodes_4c_pct_log ~ totalprt_hottcodes_4c_pct_log + parent_edu_years + child_age_months_v1, data=df_hott_qprocess)
summary(med_qprocess)
med2_qprocess <- lm(quils_process_raw ~ totalchi_hottcodes_4c_pct_log + parent_edu_years + child_age_months_v1, data=df_hott_qprocess)
summary(med2_qprocess)
summary(ymxa_qprocess)


df_hott_alpha <- df_hott_full[ , c("totalprt_hottcodes_4c_pct_log", "totalchi_hottcodes_4c_pct_log", 
                                   "parent_edu_years", "child_age_months_v1", 
                                   "alphabet_total")]
df_hott_alpha <- na.omit(df_hott_alpha)
mxa_alpha <- lm(alphabet_total ~ totalprt_hottcodes_4c_pct_log + parent_edu_years + child_age_months_v1, data=df_hott_alpha)
ymxa_alpha <- lm(alphabet_total ~ totalprt_hottcodes_4c_pct_log + totalchi_hottcodes_4c_pct_log + parent_edu_years + child_age_months_v1, data=df_hott_alpha)
set.seed(1000)
m1a_alpha <- mediate(mxa_alpha, ymxa_alpha, treat="totalprt_hottcodes_4c_pct_log",
                     mediator="totalchi_hottcodes_4c_pct_log", sims=5000, boot=TRUE, boot.ci.type="bca")
summary(m1a_alpha) 


df_hott_rhyme <- df_hott_full[ , c("totalprt_hottcodes_4c_pct_log", "totalchi_hottcodes_4c_pct_log", 
                                   "parent_edu_years", "child_age_months_v1", 
                                   "rhyme_total")]
df_hott_rhyme <- na.omit(df_hott_rhyme)
mxa_rhyme <- lm(rhyme_total ~ totalprt_hottcodes_4c_pct_log + parent_edu_years + child_age_months_v1, data=df_hott_rhyme)
ymxa_rhyme <- lm(rhyme_total ~ totalprt_hottcodes_4c_pct_log + totalchi_hottcodes_4c_pct_log + parent_edu_years + child_age_months_v1, data=df_hott_rhyme)
set.seed(1000)
m1a_rhyme <- mediate(mxa_rhyme, ymxa_rhyme, treat="totalprt_hottcodes_4c_pct_log",
                     mediator="totalchi_hottcodes_4c_pct_log", sims=5000, boot=TRUE, boot.ci.type="bca")
summary(m1a_rhyme) 



# =========================================================================
# Supplementary Information (SI) ------------------------------------------
# =========================================================================

# List of utterance-total variables (from SI setup chunk)
pct_vars <- grep("totalutt", names(df_hott_full), value = TRUE, ignore.case = TRUE)
pct_vars

# Table S1: Descriptive statistics --------------------------------

##OVERALL PRT
#frequency
summary(df_hott_full$narprt_hottcodes_4c)
mean(df_hott_full$narprt_hottcodes_4c, na.rm = TRUE)
sd(df_hott_full$narprt_hottcodes_4c, na.rm = TRUE)

#density 
summary(df_hott_full$narprt_hottcodes_4c_pct)
mean(df_hott_full$narprt_hottcodes_4c_pct, na.rm = TRUE)
sd(df_hott_full$narprt_hottcodes_4c_pct, na.rm = TRUE)

##OVERALL CHI
#frequency
summary(df_hott_full$narchi_hottcodes_4c)
mean(df_hott_full$narchi_hottcodes_4c, na.rm = TRUE)
sd(df_hott_full$narchi_hottcodes_4c, na.rm = TRUE)

#density
summary(df_hott_full$narchi_hottcodes_4c_pct)
mean(df_hott_full$narchi_hottcodes_4c_pct, na.rm = TRUE)
sd(df_hott_full$narchi_hottcodes_4c_pct, na.rm = TRUE)

##INF PRT
#frequency
summary(df_hott_full$narprt_inf)
mean(df_hott_full$narprt_inf, na.rm = TRUE)
sd(df_hott_full$narprt_inf, na.rm = TRUE)

#density 
summary(df_hott_full$narprt_inf_pct)
mean(df_hott_full$narprt_inf_pct, na.rm = TRUE)
sd(df_hott_full$narprt_inf_pct, na.rm = TRUE)

##INF CHI
#frequency
summary(df_hott_full$narchi_inf)
mean(df_hott_full$narchi_inf, na.rm = TRUE)
sd(df_hott_full$narchi_inf, na.rm = TRUE)

#density 
summary(df_hott_full$narchi_inf_pct)
mean(df_hott_full$narchi_inf_pct, na.rm = TRUE)
sd(df_hott_full$narchi_inf_pct, na.rm = TRUE)

##COMP PRT
#frequency
summary(df_hott_full$narprt_com)
mean(df_hott_full$narprt_com, na.rm = TRUE)
sd(df_hott_full$narprt_com, na.rm = TRUE)

#density 
summary(df_hott_full$narprt_com_pct)
mean(df_hott_full$narprt_com_pct, na.rm = TRUE)
sd(df_hott_full$narprt_com_pct, na.rm = TRUE)

##COMP CHI
#frequency
summary(df_hott_full$narchi_com)
mean(df_hott_full$narchi_com, na.rm = TRUE)
sd(df_hott_full$narchi_com, na.rm = TRUE)

#density 
summary(df_hott_full$narchi_com_pct)
mean(df_hott_full$narchi_com_pct, na.rm = TRUE)
sd(df_hott_full$narchi_com_pct, na.rm = TRUE)

##ABS PRT
#frequency
summary(df_hott_full$narprt_abs)
mean(df_hott_full$narprt_abs, na.rm = TRUE)
sd(df_hott_full$narprt_abs, na.rm = TRUE)

#density 
summary(df_hott_full$narprt_abs_pct)
mean(df_hott_full$narprt_abs_pct, na.rm = TRUE)
sd(df_hott_full$narprt_abs_pct, na.rm = TRUE)

##ABS CHI
#frequency
summary(df_hott_full$narchi_abs)
mean(df_hott_full$narchi_abs, na.rm = TRUE)
sd(df_hott_full$narchi_abs, na.rm = TRUE)

#density 
summary(df_hott_full$narchi_abs_pct)
mean(df_hott_full$narchi_abs_pct, na.rm = TRUE)
sd(df_hott_full$narchi_abs_pct, na.rm = TRUE)


##HIE PRT
#frequency
summary(df_hott_full$narprt_hie)
mean(df_hott_full$narprt_hie, na.rm = TRUE)
sd(df_hott_full$narprt_hie, na.rm = TRUE)

#density 
summary(df_hott_full$narprt_hie_pct)
mean(df_hott_full$narprt_hie_pct, na.rm = TRUE)
sd(df_hott_full$narprt_hie_pct, na.rm = TRUE)

##HIE CHI
#frequency
summary(df_hott_full$narchi_hie)
mean(df_hott_full$narchi_hie, na.rm = TRUE)
sd(df_hott_full$narchi_hie, na.rm = TRUE)

#density 
summary(df_hott_full$narchi_hie_pct)
mean(df_hott_full$narchi_hie_pct, na.rm = TRUE)
sd(df_hott_full$narchi_hie_pct, na.rm = TRUE)


##SURFACE PRT

summary(df_hott_full$narprt_fac_4c)
mean(df_hott_full$narprt_fac_4c, na.rm = TRUE)
sd(df_hott_full$narprt_fac_4c, na.rm = TRUE)

summary(df_hott_full$narprt_fac_4c_pct)
mean(df_hott_full$narprt_fac_4c_pct, na.rm = TRUE)
sd(df_hott_full$narprt_fac_4c_pct, na.rm = TRUE)


##SURFACE CHI

summary(df_hott_full$narchi_fac_4c)
mean(df_hott_full$narchi_fac_4c, na.rm = TRUE)
sd(df_hott_full$narchi_fac_4c, na.rm = TRUE)

summary(df_hott_full$narchi_fac_4c_pct)
mean(df_hott_full$narchi_fac_4c_pct, na.rm = TRUE)
sd(df_hott_full$narchi_fac_4c_pct, na.rm = TRUE)


##STRUCTURE PRT
summary(df_hott_full$narprt_str_4c)
mean(df_hott_full$narprt_str_4c, na.rm = TRUE)
sd(df_hott_full$narprt_str_4c, na.rm = TRUE)

summary(df_hott_full$narprt_str_4c_pct)
mean(df_hott_full$narprt_str_4c_pct, na.rm = TRUE)
sd(df_hott_full$narprt_str_4c_pct, na.rm = TRUE)

##STRUCTURE CHI

summary(df_hott_full$narchi_str_4c)
mean(df_hott_full$narchi_str_4c, na.rm = TRUE)
sd(df_hott_full$narchi_str_4c, na.rm = TRUE)

summary(df_hott_full$narchi_str_4c_pct)
mean(df_hott_full$narchi_str_4c_pct, na.rm = TRUE)
sd(df_hott_full$narchi_str_4c_pct, na.rm = TRUE)


##GIVE PRT


summary(df_hott_full$narprt_give_4c)
mean(df_hott_full$narprt_give_4c, na.rm = TRUE)
sd(df_hott_full$narprt_give_4c, na.rm = TRUE)

summary(df_hott_full$narprt_give_4c_pct)
mean(df_hott_full$narprt_give_4c_pct, na.rm = TRUE)
sd(df_hott_full$narprt_give_4c_pct, na.rm = TRUE)

##GIVE CHI

summary(df_hott_full$narchi_give_4c)
mean(df_hott_full$narchi_give_4c, na.rm = TRUE)
sd(df_hott_full$narchi_give_4c, na.rm = TRUE)

summary(df_hott_full$narchi_give_4c_pct)
mean(df_hott_full$narchi_give_4c_pct, na.rm = TRUE)
sd(df_hott_full$narchi_give_4c_pct, na.rm = TRUE)

##ASK PRT

summary(df_hott_full$narprt_ask_4c)
mean(df_hott_full$narprt_ask_4c, na.rm = TRUE)
sd(df_hott_full$narprt_ask_4c, na.rm = TRUE)

summary(df_hott_full$narprt_ask_4c_pct)
mean(df_hott_full$narprt_ask_4c_pct, na.rm = TRUE)
sd(df_hott_full$narprt_ask_4c_pct, na.rm = TRUE)

##ASK CHI


summary(df_hott_full$narchi_ask_4c)
mean(df_hott_full$narchi_ask_4c, na.rm = TRUE)
sd(df_hott_full$narchi_ask_4c, na.rm = TRUE)

summary(df_hott_full$narchi_ask_4c_pct)
mean(df_hott_full$narchi_ask_4c_pct, na.rm = TRUE)
sd(df_hott_full$narchi_ask_4c_pct, na.rm = TRUE)


# Table S2: Descriptive statistics --------------

df_hott_full$p3prt_hottcodes_4c <- df_hott_full$p1prt_hottcodes_4c + df_hott_full$p2prt_hottcodes_4c
df_hott_full$p3chi_hottcodes_4c <- df_hott_full$p1chi_hottcodes_4c + df_hott_full$p2chi_hottcodes_4c

df_hott_full$p3prt_inf_4c <- df_hott_full$p1prt_inf + df_hott_full$p2prt_inf
df_hott_full$p3chi_inf_4c <- df_hott_full$p1chi_inf + df_hott_full$p2chi_inf

df_hott_full$p3prt_com_4c <- df_hott_full$p1prt_com + df_hott_full$p2prt_com
df_hott_full$p3chi_com_4c <- df_hott_full$p1chi_com + df_hott_full$p2chi_com

df_hott_full$p3prt_abs_4c <- df_hott_full$p1prt_abs + df_hott_full$p2prt_abs
df_hott_full$p3chi_abs_4c <- df_hott_full$p1chi_abs + df_hott_full$p2chi_abs

df_hott_full$p3prt_hie_4c <- df_hott_full$p1prt_hie + df_hott_full$p2prt_hie
df_hott_full$p3chi_hie_4c <- df_hott_full$p1chi_hie + df_hott_full$p2chi_hie

df_hott_full$p3prt_fac_4c <- df_hott_full$p1prt_fac_4c + df_hott_full$p2prt_fac_4c
df_hott_full$p3chi_fac_4c <- df_hott_full$p1chi_fac_4c + df_hott_full$p2chi_fac_4c

df_hott_full$p3prt_str_4c <- df_hott_full$p1prt_str_4c + df_hott_full$p2prt_str_4c
df_hott_full$p3chi_str_4c <- df_hott_full$p1chi_str_4c + df_hott_full$p2chi_str_4c

df_hott_full$p3prt_give_4c <- df_hott_full$p1prt_give_4c + df_hott_full$p2prt_give_4c
df_hott_full$p3chi_give_4c <- df_hott_full$p1chi_give_4c + df_hott_full$p2chi_give_4c

df_hott_full$p3prt_ask_4c <- df_hott_full$p1prt_ask_4c + df_hott_full$p2prt_ask_4c
df_hott_full$p3chi_ask_4c <- df_hott_full$p1chi_ask_4c + df_hott_full$p2chi_ask_4c

#creating variables for pct
#p3 is both pizza visits 

df_hott_full$p3prt_totalutt <- df_hott_full$p1prt_totalutt + df_hott_full$p2prt_totalutt
df_hott_full$p3chi_totalutt <- df_hott_full$p1chi_totalutt+ df_hott_full$p2chi_totalutt


df_hott_full$p3prt_hottcodes_4c_pct <- df_hott_full$p3prt_hottcodes_4c/df_hott_full$p3prt_totalutt
df_hott_full$p3chi_hottcodes_4c_pct <-df_hott_full$p3chi_hottcodes_4c/df_hott_full$p3chi_totalutt

df_hott_full$p3prt_inf_4c_pct <- df_hott_full$p3prt_inf_4c/df_hott_full$p3prt_totalutt
df_hott_full$p3chi_inf_4c_pct <- df_hott_full$p3chi_inf_4c/df_hott_full$p3chi_totalutt

df_hott_full$p3prt_com_4c_pct <- df_hott_full$p3prt_com_4c/df_hott_full$p3prt_totalutt
df_hott_full$p3chi_com_4c_pct <- df_hott_full$p3chi_com_4c/df_hott_full$p3chi_totalutt

df_hott_full$p3prt_abs_4c_pct <- df_hott_full$p3prt_abs_4c/df_hott_full$p3prt_totalutt
df_hott_full$p3chi_abs_4c_pct <- df_hott_full$p3chi_abs_4c/df_hott_full$p3chi_totalutt

df_hott_full$p3prt_hie_4c_pct <-df_hott_full$p3prt_hie_4c/df_hott_full$p3prt_totalutt
df_hott_full$p3chi_hie_4c_pct <- df_hott_full$p3chi_hie_4c/df_hott_full$p3chi_totalutt

df_hott_full$p3prt_fac_4c_pct <- df_hott_full$p3prt_fac_4c/df_hott_full$p3prt_totalutt
df_hott_full$p3chi_fac_4c_pct <- df_hott_full$p3chi_fac_4c/df_hott_full$p3chi_totalutt

df_hott_full$p3prt_str_4c_pct <- df_hott_full$p3prt_str_4c/df_hott_full$p3prt_totalutt
df_hott_full$p3chi_str_4c_pct <- df_hott_full$p3chi_str_4c/df_hott_full$p3chi_totalutt

df_hott_full$p3prt_give_4c_pct <-df_hott_full$p3prt_give_4c/df_hott_full$p3prt_totalutt
df_hott_full$p3chi_give_4c_pct <- df_hott_full$p3chi_give_4c/df_hott_full$p3chi_totalutt

df_hott_full$p3prt_ask_4c_pct <- df_hott_full$p3prt_ask_4c/df_hott_full$p3prt_totalutt
df_hott_full$p3chi_ask_4c_pct <- df_hott_full$p3chi_ask_4c/df_hott_full$p3chi_totalutt

##OVERALL PRT
#frequency
summary(df_hott_full$p3prt_hottcodes_4c)
mean(df_hott_full$p3prt_hottcodes_4c, na.rm = TRUE)
sd(df_hott_full$p3prt_hottcodes_4c, na.rm = TRUE)

#density 
summary(df_hott_full$p3prt_hottcodes_4c_pct)
mean(df_hott_full$p3prt_hottcodes_4c_pct, na.rm = TRUE)
sd(df_hott_full$p3prt_hottcodes_4c_pct, na.rm = TRUE)

##OVERALL CHI
#frequency
summary(df_hott_full$p3chi_hottcodes_4c)
mean(df_hott_full$p3chi_hottcodes_4c, na.rm = TRUE)
sd(df_hott_full$p3chi_hottcodes_4c, na.rm = TRUE)

#density
summary(df_hott_full$p3chi_hottcodes_4c_pct)
mean(df_hott_full$p3chi_hottcodes_4c_pct, na.rm = TRUE)
sd(df_hott_full$p3chi_hottcodes_4c_pct, na.rm = TRUE)

##INF PRT
#frequency
summary(df_hott_full$p3prt_inf_4c)
mean(df_hott_full$p3prt_inf_4c, na.rm = TRUE)
sd(df_hott_full$p3prt_inf_4c, na.rm = TRUE)

#density 
summary(df_hott_full$p3prt_inf_4c_pct)
mean(df_hott_full$p3prt_inf_4c_pct, na.rm = TRUE)
sd(df_hott_full$p3prt_inf_4c_pct, na.rm = TRUE)

##INF CHI
#frequency
summary(df_hott_full$p3chi_inf_4c)
mean(df_hott_full$p3chi_inf_4c, na.rm = TRUE)
sd(df_hott_full$p3chi_inf_4c, na.rm = TRUE)

#density 
summary(df_hott_full$p3chi_inf_4c_pct)
mean(df_hott_full$p3chi_inf_4c_pct, na.rm = TRUE)
sd(df_hott_full$p3chi_inf_4c_pct, na.rm = TRUE)

##COMP PRT
#frequency
summary(df_hott_full$p3prt_com_4c)
mean(df_hott_full$p3prt_com_4c, na.rm = TRUE)
sd(df_hott_full$p3prt_com_4c, na.rm = TRUE)

#density 
summary(df_hott_full$p3prt_com_4c_pct)
mean(df_hott_full$p3prt_com_4c_pct, na.rm = TRUE)
sd(df_hott_full$p3prt_com_4c_pct, na.rm = TRUE)

##COMP CHI
#frequency
summary(df_hott_full$p3chi_com_4c)
mean(df_hott_full$p3chi_com_4c, na.rm = TRUE)
sd(df_hott_full$p3chi_com_4c, na.rm = TRUE)

#density 
summary(df_hott_full$p3chi_com_4c_pct)
mean(df_hott_full$p3chi_com_4c_pct, na.rm = TRUE)
sd(df_hott_full$p3chi_com_4c_pct, na.rm = TRUE)

##ABS PRT
#frequency
summary(df_hott_full$p3prt_abs_4c)
mean(df_hott_full$p3prt_abs_4c, na.rm = TRUE)
sd(df_hott_full$p3prt_abs_4c, na.rm = TRUE)

#density 
summary(df_hott_full$p3prt_abs_4c_pct)
mean(df_hott_full$p3prt_abs_4c_pct, na.rm = TRUE)
sd(df_hott_full$p3prt_abs_4c_pct, na.rm = TRUE)

##ABS CHI
#frequency
summary(df_hott_full$p3chi_abs_4c)
mean(df_hott_full$p3chi_abs_4c, na.rm = TRUE)
sd(df_hott_full$p3chi_abs_4c, na.rm = TRUE)

#density 
summary(df_hott_full$p3chi_abs_4c_pct)
mean(df_hott_full$p3chi_abs_4c_pct, na.rm = TRUE)
sd(df_hott_full$p3chi_abs_4c_pct, na.rm = TRUE)


##HIE PRT
#frequency
summary(df_hott_full$p3prt_hie_4c)
mean(df_hott_full$p3prt_hie_4c, na.rm = TRUE)
sd(df_hott_full$p3prt_hie_4c, na.rm = TRUE)

#density 
summary(df_hott_full$p3prt_hie_4c_pct)
mean(df_hott_full$p3prt_hie_4c_pct, na.rm = TRUE)
sd(df_hott_full$p3prt_hie_4c_pct, na.rm = TRUE)

##HIE CHI
#frequency
summary(df_hott_full$p3chi_hie_4c)
mean(df_hott_full$p3chi_hie_4c, na.rm = TRUE)
sd(df_hott_full$p3chi_hie_4c, na.rm = TRUE)

#density 
summary(df_hott_full$p3chi_hie_4c_pct)
mean(df_hott_full$p3chi_hie_4c_pct, na.rm = TRUE)
sd(df_hott_full$p3chi_hie_4c_pct, na.rm = TRUE)


##SURFACE PRT

summary(df_hott_full$p3prt_fac_4c)
mean(df_hott_full$p3prt_fac_4c, na.rm = TRUE)
sd(df_hott_full$p3prt_fac_4c, na.rm = TRUE)

summary(df_hott_full$p3prt_fac_4c_pct)
mean(df_hott_full$p3prt_fac_4c_pct, na.rm = TRUE)
sd(df_hott_full$p3prt_fac_4c_pct, na.rm = TRUE)


##SURFACE CHI

summary(df_hott_full$p3chi_fac_4c)
mean(df_hott_full$p3chi_fac_4c, na.rm = TRUE)
sd(df_hott_full$p3chi_fac_4c, na.rm = TRUE)

summary(df_hott_full$p3chi_fac_4c_pct)
mean(df_hott_full$p3chi_fac_4c_pct, na.rm = TRUE)
sd(df_hott_full$p3chi_fac_4c_pct, na.rm = TRUE)


##STRUCTURE PRT
summary(df_hott_full$p3prt_str_4c)
mean(df_hott_full$p3prt_str_4c, na.rm = TRUE)
sd(df_hott_full$p3prt_str_4c, na.rm = TRUE)

summary(df_hott_full$p3prt_str_4c_pct)
mean(df_hott_full$p3prt_str_4c_pct, na.rm = TRUE)
sd(df_hott_full$p3prt_str_4c_pct, na.rm = TRUE)

##STRUCTURE CHI

summary(df_hott_full$p3chi_str_4c)
mean(df_hott_full$p3chi_str_4c, na.rm = TRUE)
sd(df_hott_full$p3chi_str_4c, na.rm = TRUE)

summary(df_hott_full$p3chi_str_4c_pct)
mean(df_hott_full$p3chi_str_4c_pct, na.rm = TRUE)
sd(df_hott_full$p3chi_str_4c_pct, na.rm = TRUE)


##GIVE PRT


summary(df_hott_full$p3prt_give_4c)
mean(df_hott_full$p3prt_give_4c, na.rm = TRUE)
sd(df_hott_full$p3prt_give_4c, na.rm = TRUE)

summary(df_hott_full$p3prt_give_4c_pct)
mean(df_hott_full$p3prt_give_4c_pct, na.rm = TRUE)
sd(df_hott_full$p3prt_give_4c_pct, na.rm = TRUE)

##GIVE CHI

summary(df_hott_full$p3chi_give_4c)
mean(df_hott_full$p3chi_give_4c, na.rm = TRUE)
sd(df_hott_full$p3chi_give_4c, na.rm = TRUE)

summary(df_hott_full$p3chi_give_4c_pct)
mean(df_hott_full$p3chi_give_4c_pct, na.rm = TRUE)
sd(df_hott_full$p3chi_give_4c_pct, na.rm = TRUE)

##ASK PRT

summary(df_hott_full$p3prt_ask_4c)
mean(df_hott_full$p3prt_ask_4c, na.rm = TRUE)
sd(df_hott_full$p3prt_ask_4c, na.rm = TRUE)

summary(df_hott_full$p3prt_ask_4c_pct)
mean(df_hott_full$p3prt_ask_4c_pct, na.rm = TRUE)
sd(df_hott_full$p3prt_ask_4c_pct, na.rm = TRUE)

##ASK CHI


summary(df_hott_full$p3chi_ask_4c)
mean(df_hott_full$p3chi_ask_4c, na.rm = TRUE)
sd(df_hott_full$p3chi_ask_4c, na.rm = TRUE)

summary(df_hott_full$p3chi_ask_4c_pct)
mean(df_hott_full$p3chi_ask_4c_pct, na.rm = TRUE)
sd(df_hott_full$p3chi_ask_4c_pct, na.rm = TRUE)
