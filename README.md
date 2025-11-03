# Meta-Analysis: Maternal Smoking and Low Birth Weight

A reproducible meta-analysis of the association between maternal smoking during pregnancy and the risk of low birth weight (LBW) in offspring. This project uses data from the prospective cohort studies included in Di et al. (2022).

-   **Data:** `meta_data.csv` (n=23 prospective studies)
-   **Code:** `Analysis.R`
-   **Package(s):** R (v4.3.1) with `meta` and `tidyverse`

---

## 1. Aim

To programmatically calculate the pooled odds ratio (OR) and quantify the heterogeneity for the association between maternal smoking and LBW, based on published epidemiological data.

## 2. Methods

Data for 23 prospective cohort studies were extracted from Di et al., *World J Pediatr* (2022), Fig. 2. Effect sizes (ORs) and 95% CIs were log-transformed, and their standard errors were calculated.

A random-effects meta-analysis was performed using the `metagen` function from the `meta` package (REML method). All analyses were conducted in R.

## 3. Results

The analysis of 23 prospective studies showed a statistically significant association between maternal smoking and low birth weight.

-   **Pooled Odds Ratio (OR): 1.93 (95% CI: 1.75–2.12)**
-   **Heterogeneity (I²): 17.4% (p = 0.23)**

The low, non-significant heterogeneity suggests the studies are in relative agreement. The pooled result indicates that smoking is associated with a **93% higher odds of LBW in infants of smoking mothers compared with non-smokers.**

### Forest Plot

![Forest Plot of 23 Prospective Studies](forest_plot.jpg)
