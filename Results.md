## Q1 What is the age distribution of patients
Age_groupm |	patient_count |	percentage
|----------|-------------|----------|
0-17 (Minor)	| 703	| 2.04
18-35 (Young Adult)	| 6614	| 19.21
36-55 (Middle-Aged) |	13554 |	39.37
56-75 (Senior) |	10720	 | 31.14
76+ (Elderly) |	2839	| 8.25

**Insights**
Middle-aged adults (36–55) represent the largest patient group
Senior patients (56–75) account for nearly one-third of total cases
Minors form a very small share of the patient population
Healthcare demand is concentrated in working-age and older adults

## Q2 Are certain medical conditions more common in specific age groups?
age_group |	medical_Condition |	patient_count
|---------|-------------------|--------------|
0–17 (Minor)        | Obesity       | 129
0–17 (Minor)        | Arthritis     | 123
0–17 (Minor)        | Cancer        | 122
0–17 (Minor)        | Hypertension  | 117
0–17 (Minor)        | Diabetes      | 113
0–17 (Minor)        | Asthma        | 99
18–35 (Young Adult) | Diabetes      | 1,133
18–35 (Young Adult) | Obesity       | 1,105
18–35 (Young Adult) | Asthma        | 1,101
18–35 (Young Adult) | Hypertension  | 1,099
18–35 (Young Adult) | Arthritis     | 1,091
18–35 (Young Adult) | Cancer        | 1,085
36–55 (Middle-Aged) | Obesity       | 2,325
36–55 (Middle-Aged) | Hypertension  | 2,286
36–55 (Middle-Aged) | Asthma        | 2,282
36–55 (Middle-Aged) | Diabetes      | 2,272
36–55 (Middle-Aged) | Arthritis     | 2,236
36–55 (Middle-Aged) | Cancer        | 2,153
56–75 (Senior)      | Diabetes      | 1,856
56–75 (Senior)      | Obesity       | 1,820
56–75 (Senior)      | Arthritis     | 1,779
56–75 (Senior)      | Cancer        | 1,773
56–75 (Senior)      | Asthma        | 1,751
56–75 (Senior)      | Hypertension  | 1,741
76+ (Elderly)       | Obesity       | 505
76+ (Elderly)       | Diabetes      | 484
76+ (Elderly)       | Hypertension  | 475
76+ (Elderly)       | Cancer        | 471

- Obesity and diabetes consistently rank highest across all age groups
- Disease frequency increases with age, peaking in middle-aged and senior groups
- Minors show significantly lower condition counts compared to adults
- Chronic conditions dominate older age groups, indicating age-driven health risks

## Q3 Are there gender differences in admission rates?

Gender	| total_admissions |	percentage_of_total
|------|------------------|-------------------|
Female	| 16985 |	49.33
Male	| 17445	| 50.67

-- Top 3 conditions for each gender
Gender |  medical_Condition | frequency
|------|--------------------|----------|
Female | Diabetes      | 2,900
Female | Asthma       | 2,875
Female | Hypertension | 2,833
Female | Arthritis    | 2,820
Female | Obesity      | 2,814
Female | Cancer       | 2,743
Male   | Obesity      | 3,070
Male   | Diabetes     | 2,958
Male   | Hypertension | 2,885
Male   | Cancer       | 2,861
Male   | Arthritis    | 2,851
Male   | Asthma       | 2,820

- Obesity and diabetes are the most common conditions across both genders
- Males show higher obesity frequency than females
- Female condition counts are more evenly distributed
- Chronic diseases dominate regardless of gender
 ## Q4 Which blood types appear most frequently?
 
Blood_Type |	frequency	| percentage
|----------|-----------|----------|
A-	| 4417 |	12.83
AB- |	4404 |	12.79
A+ |	4327	| 12.57
O+ |	4326 |	12.56
B- |	4297	| 12.48
B+|	4233 |	12.29
O-|	4227 |	12.28
AB+ |	4199  |	12.2

# Hospital Operations Questions
##  Q5 How many patients are admitted per day / month?
###  Admissions Per Month (The Big Picture)
month	|total_patients
|-----|-------------|
2021-04 |	569
2020-03	| 584
2020-08	| 599
2024-01	| 574
2022-07	| 615
2021-02	| 522
2022-09	| 593
2019-11	| 522
2023-06	| 573
2021-10	| 583
2023-01	| 582
2021-12	| 621
2020-10	| 589
2024-04	| 600
2019-12	| 565
2020-04	| 575
2020-07	| 590
2019-10	| 581
2020-05	| 576
2021-07	| 585
2022-05	| 588
2020-01	| 561
2021-09	| 561
2023-11	| 571
2022-04	| 548
2022-10	| 585
2023-12	| 595
2022-08	| 579
2022-12	| 596
2023-04	| 596
2022-11	| 578
2019-06	| 558
2023-05	| 571
2021-08	| 596
2021-01	| 590
2022-01	| 598
2021-06	| 550
2021-05	| 560
2022-06	| 554
2021-11	| 589
2019-08	| 597
2020-11	| 549
2019-05	| 466
2024-03	| 533
2023-02	| 543
2023-03	| 557
2023-09	| 536
2024-02	| 571
2023-10	| 614
2021-03	| 581
2019-07	| 597
2019-09	| 586
2020-02	| 562
2020-06	| 572
2022-03	| 547
2023-08	| 561
2020-09	| 533
2023-07	| 556
2022-02	| 533
2020-12	| 603
2024-05	| 111

# Data Insights (2019-2024)

- **Range:** 466 – 621 (outlier 111 removed)  
- **Average / Median:** ~573  
- **Stable trend:** Most values fluctuate ±20–30 units, no strong upward/downward trend.  
- **High / Low:** 2021-12 | 621 (high), 2019-05 | 466 (low)  
- **Patterns:** Peaks in mid/late year, minor dips at year start.  
- **Recommendation:** Track months below 550, use cleaned dataset for analysis.  

### Admissions Per Day (The Daily Load)
| avg_patients_per_day |
|----------------------|
|18.8554|


## Q6 What are the most common admission types?
admission_Type	| total_patients |	avg_cost
|--------------|----------------|--------|
Urgent	| 11558 | 	25474.88
Elective	| 11554	| 25353.51
Emergency |	11318 |	25417.11
# Admission Insights

- **Patient counts** are very similar across types (~11,300–11,560).  
- **Average costs** are also close (~25,350–25,475).  
- **Highest avg cost:** Urgent ($25,474.88)  
- **Lowest avg cost:** Elective ($25,353.51)  
- Overall, costs and patient numbers are fairly balanced across admission types.

## Q7 What is the average length of stay?
average_days_stayed
15.5
## Q8 Which medical conditions lead to longer hospital stays?
medical_Condition	 | avg_days_stayed
|------------------|----------------|
Hypertension |	16
Arthritis	| 15.6
Asthma | 	15.4
Cancer	| 15.4
Diabetes	| 15.3
Obesity | 	15.2
# Disease Insights

- **Most prevalent:** Hypertension (16)  
- **Least prevalent:** Obesity (15.2)  
- **Close values:** All diseases are within a narrow range (15.2–16), indicating similar prevalence.  
- Hypertension appears slightly higher, suggesting more attention may be needed for its management.

##  Q9 Are some rooms used more frequently than others?
room_Number| 	times_used
|----------|------------|
204	| 113
492	| 113
167	| 111
263	| 111
143	| 108
432	| 108
486	| 106
193	| 104
216	| 103
251	| 103

# Room Usage Insights

- **Most frequently used rooms:** 204 and 492 (113 times each)  
- **Least frequently used rooms in this sample:** 216 and 251 (103 times)  
- Usage varies slightly between rooms (~103–113 uses), showing **fairly balanced distribution**.  
- Rooms 204 and 492 may need **more monitoring or maintenance** due to higher usage.

## Q10 Are there peak admission periods?

| Admission Year | Admission Month | Total Admissions |
|----------------|----------------|-----------------|
| 2019 | May       | 466 |
| 2019 | June      | 558 |
| 2019 | July      | 597 |
| 2019 | August    | 597 |
| 2019 | September | 586 |
| 2019 | October   | 581 |
| 2019 | November  | 522 |
| 2019 | December  | 565 |
| 2020 | January   | 561 |
| 2020 | February  | 562 |
| 2020 | March     | 584 |
| 2020 | April     | 575 |
| 2020 | May       | 576 |
| 2020 | June      | 572 |
| 2020 | July      | 590 |
| 2020 | August    | 599 |
| 2020 | September | 533 |
| 2020 | October   | 589 |
| 2020 | November  | 549 |
| 2020 | December  | 603 |
| 2021 | January   | 590 |
| 2021 | February  | 522 |
| 2021 | March     | 581 |
| 2021 | April     | 569 |
| 2021 | May       | 560 |
| 2021 | June      | 550 |
| 2021 | July      | 585 |
| 2021 | August    | 596 |
| 2021 | September | 561 |
| 2021 | October   | 583 |
| 2021 | November  | 589 |
| 2021 | December  | 621 |
| 2022 | January   | 598 |
| 2022 | February  | 533 |
| 2022 | March     | 547 |
| 2022 | April     | 548 |
| 2022 | May       | 588 |
| 2022 | June      | 554 |
| 2022 | July      | 615 |
| 2022 | August    | 579 |
| 2022 | September | 593 |
| 2022 | October   | 585 |
| 2022 | November  | 578 |
| 2022 | December  | 596 |
| 2023 | January   | 582 |
| 2023 | February  | 543 |
| 2023 | March     | 557 |
| 2023 | April     | 596 |
| 2023 | May       | 571 |
| 2023 | June      | 573 |
| 2023 | July      | 556 |
| 2023 | August    | 561 |
| 2023 | September | 536 |
| 2023 | October   | 614 |
| 2023 | November  | 571 |
| 2023 | December  | 595 |
| 2024 | January   | 574 |
| 2024 | February  | 571 |
| 2024 | March     | 533 |
| 2024 | April     | 600 |

# Admissions Insights (2019-2024)

- **Total admissions** generally range between 522 and 621 (excluding the outlier 111).  
- **Highest admissions:** 2021-December | 621  
- **Lowest admissions (non-error):** 2019-May | 466  
- **Trend:** Admissions are fairly stable over time, with small month-to-month fluctuations.  
- **Observation:** Peaks tend to occur in mid-to-late year (July–December), while dips appear early in the year (January–March).  


 
