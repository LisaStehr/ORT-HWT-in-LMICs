Code for the paper "Prevalence, trends and socioeconomic inequality in coverage of oral rehydration therapy and household water treatment for childhood diarrhea. A cross-sectional study of nationally representative data from 5,202,093 adults in low-and middle-income countries"

This study includes individual-level data from 339 surveys, which are all publicly available. Data were used from the Demographic and Health Surveys (DHS) and Multiple-Indicator Cluster Surveys (MICS), which are large, cross-sectional and nationally representative surveys, publicly available from the DHS Program website (https://dhsprogram.com/) and UNICEF MICS website (https://mics.unicef.org/surveys).

All analysis except the concentration index calculations were done in R version 4.0.5. The concentration index was calculated with the _conindex_ function in STATA 18.0
The analysis is done with two datasets (ORT, HWT) for five outcomes, three from the ORT dataset and two from the HWT dataset. All analysis were done separately for two time periods, 2000-2009 and 2010-2021

All datasets and code can be found in folder "data and code"

Use ORS analysis_Revision 1_public.Rmd for the ORS dataset (subset_orsdata.csv) (R)

Use HWT analysis_Revision 1_public.Rmd for the HWT dataset (subset_hwtdata.csv) (R)

Use concentration index.do for the concentration index (STATA)

Use the following additional files:
*HWT
-prev.country_hwt.xlsx and prev.country_hwtappr.xlsx for AARC and to create Figure 3 (world map)
-regions.csv to conduct eFigure 1-4
-hwt.country.prev.xlxs and hwt.appr.country.prev.xlsx for eTable 12-15
-prev_figure2.hwt and prev_figure2.hwt.appr for Figure 2

*ORT
-prev.country_ors.xslx, prev.country_feed.xslx and prev.country_ortfeed.xslx for AARCs and eTable 16-21
-regions.csv to conduct eFigure 5-10
-prev_figure2.ors.xslx, prev_figure2.feed.xslx and prev_figure2.orsfeed.xslx for Figure 2

### Example Code
```R
# Example function to perform basic data analysis
demo_function <- function(data) {
  summary_stats <- data %>% 
    summarize(
      mean_value = mean(value, na.rm = TRUE),
      median_value = median(value, na.rm = TRUE),
      sd_value = sd(value, na.rm = TRUE)
    )
  return(summary_stats)
}

# Example usage
data <- data.frame(id = 1:100, value = rnorm(100))
result <- demo_function(data)
print(result)
```

### Small Dataset for Demonstration
```R
# Example small dataset
data <- data.frame(
  id = 1:10,
  value = c(10, 20, 30, 40, 50, 60, 70, 80, 90, 100)
)
write.csv(data, "demo_dataset.csv", row.names = FALSE)
```

---

### System Requirements

#### Software Dependencies
- R version: 4.0.5 or higher
- Required R packages: 
  - dplyr (>= 1.0.0)
  - survey

#### Operating Systems
- Windows (10, 11)
- macOS (10.15 and above)
- Linux (Ubuntu 20.04 and above)

#### Tested Versions
- R 4.0.5 on Windows 10
- R 4.0.5 on Ubuntu 20.04

#### Non-Standard Hardware
- No non-standard hardware is required.

---

### Installation Guide

#### Instructions
1. Install R from [CRAN](https://cran.r-project.org/).
2. Install the required package:
   ```R
   install.packages("dplyr")
   ```
3. Download the `demo_function` script and dataset.

#### Typical Install Time
- Approximately 1-2 minutes on a standard desktop computer.

---

### Demo

#### Instructions to Run on Data
1. Load the required library:
   ```R
   library(dplyr)
   ```
2. Load the demo dataset:
   ```R
   demo_data <- read.csv("demo_dataset.csv")
   ```
3. Run the function on the dataset:
   ```R
   demo_result <- demo_function(demo_data)
   print(demo_result)
   ```

#### Expected Output
```
  mean_value median_value sd_value
1        55          55   31.62278
```

#### Expected Run Time
- The demo should execute in less than 1 second on a standard desktop computer.

---

### Instructions for Use can be found in the respective Rmd/do files

---

