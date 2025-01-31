# **UK Traffic Accident Data**

This project explores a dataset of UK road traffic accidents between the years 2005 and 2014 (with the exception of 2008). The dataset is accompanied by geographic data and road congestion data.

---

## **Table of Contents**
1. [Introduction](#introduction)
2. [Dataset Overview](#dataset-overview)
3. [Objectives](#objectives)
4. [Tools and Technologies](#tools-and-technologies)
5. [Key Insights](#key-insights)


---

## **Introduction**

Exploratory Data Analysis will be conducted on this dataset to establish trends over time in the parameters of this dataset. The dataset contains a breadth of information which allows us to cross examine the relationships between such as weather, time of day or month to the number of accidents in a specific region of the UK. Due to the quality of this dataset this project is expected to grow over time as more insights are uncovered.

---

## **Dataset Overview**

- **Source**: [Kaggle]([https://www.kaggle.com/datasets/daveianhickey/2000-16-traffic-flow-england-scotland-wales?resource=download)).
- **File Formats**: CSV.
- **Dataset Size**: 1.6 million


---

## **Objectives**

Initially the project will look to answer some questions such as:

1) How does day of the week impact acccidents?
2) How does time of day impact accidents?
3) How have the number of accidents changed over time?
4) How do road conditions and weather conditions effect accidents numbers and severity?
5) Can we forecast the 2012 to 2015 data from the previous data?

The results where possible will be visualised with Matplotlib.

---

## Tools and Technologies
- **Pandas**: Dataset manipulation
- **Matplotlib**: Plot generation

## Key Insights

1. **How does the day of the week affect the number of accidents?**:
    - Accidents are fairly even throughout the week
    - Most accidents in the UK occur on saturday
    - Monday is the day with the least accidents
  
      
![Categories_pie](https://github.com/trow-land/Data-Science/blob/main/UK%20Traffic%20Accidents/images/weekday_bar.png)        ![Categories](https://github.com/trow-land/Data-Science/blob/main/UK%20Traffic%20Accidents/images/weekday_pie.png)

2. **How does the time of day impact the number of accidents?**:
    - The line graph below shows that there are two spikes in the number of accidents which coincide with rush hour either side of the working day.
    - The number of accidents is higher throughout the day than at night.
    - The accident rate drops off sharply once people arrive at work
  
   
      ![items](https://github.com/trow-land/Data-Science/blob/main/UK%20Traffic%20Accidents/images/time_of_day.png)
      
3. **How has the total number of accidents changed over time?**:
    - The number of accidents on britains roads looks to be on a slow downward trend as shown by the trend line
    - The decline is not very steep, suggesting a slow reduction in accident numbers over the decade.
    - There are regular fluctuations in accident counts, possibly indicating seasonal trends
  
      
![Top Items](https://github.com/trow-land/Data-Science/blob/main/UK%20Traffic%20Accidents/images/accidents%20over%20time.png)    



