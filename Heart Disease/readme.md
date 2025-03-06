# Heart Disease Dataset

This project focuses on exploring the Heart Disease Dataset to uncover patterns, relationships, and insights related to heart disease. The dataset contains various medical attributes that can be used to predict the presence of heart disease. Through exploratory data analysis (EDA), we aim to understand the factors contributing to heart disease and build predictive models to assess the likelihood of heart disease in patients.

## Table of Contents
- [Introduction](#introduction)
- [Dataset Overview](#dataset-overview)
- [Objectives](#objectives)
- [Tools and Technologies](#tools-and-technologies)
- [Exploratory Data Analysis & Key Insights](#exploratory-data-analysis-eda)
- [Modeling](#modeling)
- [Conclusion](#conclusion)

## Introduction
Heart disease is one of the leading causes of death globally. Early detection and understanding of the factors contributing to heart disease can significantly improve patient outcomes. This project aims to perform an in-depth Exploratory Data Analysis (EDA) on the Heart Disease Dataset to identify trends, correlations, and patterns. Additionally, I used predictive models to classify whether a patient has heart disease based on various medical attributes.

## Dataset Overview
- **Source:** [UCI Machine Learning Repository - Heart Disease Dataset](https://archive.ics.uci.edu/dataset/45/heart+disease)
- **File Format:** CSV  
- **Dataset Size:** 303 rows, 14 columns  

### Attributes:
- Age  
- Sex  
- Chest pain type (`cp`)  
- Resting blood pressure (`trestbps`)  
- Serum cholesterol (`chol`)  
- Fasting blood sugar (`fbs`)  
- Resting electrocardiographic results (`restecg`)  
- Maximum heart rate achieved (`thalach`)  
- Exercise-induced angina (`exang`)  
- ST depression induced by exercise relative to rest (`oldpeak`)  
- Slope of the peak exercise ST segment (`slope`)  
- Number of major vessels (`ca`)  
- Thalassemia (`thal`)  
- Target (presence of heart disease)  

## Objectives
The primary objectives of this project are:

### Exploratory Data Analysis (EDA):
- Understand the distribution of key features.  
- Identify correlations between features and the target variable (heart disease).  
- Visualise trends and patterns in the data.  

### Feature Engineering:
- Handle missing values and outliers.  

### Modeling:
- Build predictive models for binary classification of heart disease.  
- Evaluate model performance using metrics such as accuracy, precision, recall, and F1-score.  
- Compare different machine learning algorithms (e.g., Logistic Regression, Random Forest, SVM, Neural Network).  

### Insights and Recommendations:  
- Suggest potential risk factors and warning signs for heart disease.  

## Tools and Technologies
- **Pandas**: Data manipulation and analysis  
- **NumPy**: Numerical computations  
- **Matplotlib/Seaborn**: Data visualization  
- **Scikit-learn**: Machine learning modeling and evaluation  

## Exploratory Data Analysis & Key Insights

### Age Distribution
- Patients range from **29 to 77 years old**, with most between **50 and 65**.
- **Weak correlation (0.23) with heart disease**, meaning age alone is not a strong predictor.

  ![age_dist](https://github.com/trow-land/Data-Science/blob/main/Heart%20Disease/images/age.png)


### Gender Distribution
- The dataset is **predominantly male** (approx. **2:1 ratio**).
- **Weak correlation (0.24) with heart disease**, meaning gender alone is not highly predictive.

  ![gender](https://github.com/trow-land/Data-Science/blob/main/Heart%20Disease/images/heart%20disease%20by%20gender.png)

### Chest Pain Types (`cp`)
- **Strongest positive correlation (0.41) with heart disease**.
- **Type 4 (asymptomatic) is the most common among heart disease patients**, suggesting many may not experience typical symptoms.

### Resting Blood Pressure (`trestbps`)
- **Weak correlation (0.15) with heart disease**, meaning high blood pressure alone is not a strong predictor.

### Cholesterol Levels (`chol`)
- **Very weak correlation (0.08) with heart disease**.
- Cholesterol levels increase with age, but high cholesterol alone is **not a strong predictor**.
- Cholesterol generally inscreases with age.

![cholesterol](https://github.com/trow-land/Data-Science/blob/main/Heart%20Disease/images/age%20vs%20cholesterol.png) ![chol](https://github.com/trow-land/Data-Science/blob/main/Heart%20Disease/images/heart%20disease%20vs%20cholesterol.png)

### Maximum Heart Rate (`thalach`)
- **Strong negative correlation (-0.42) with heart disease**.
- Patients with heart disease tend to have a **lower maximum heart rate**, indicating possible cardiovascular impairment.

![grouped](https://github.com/trow-land/Data-Science/blob/main/Heart%20Disease/images/max%20HR.png) ![split](https://github.com/trow-land/Data-Science/blob/main/Heart%20Disease/images/max%20hr%20by%20gender.png)

### ST Depression (`oldpeak`)
- **Strongest predictor (0.50 correlation) of heart disease**.
- Higher `oldpeak` values suggest greater ischemia and **a higher likelihood of heart disease**.

![dep](https://github.com/trow-land/Data-Science/blob/main/Heart%20Disease/images/st%20depression.png)

### Exercise-Induced Angina (`exang`)
- **Moderate correlation (0.40) with heart disease**.
- Patients who experience angina during exercise are more likely to have heart disease.

### Slope of ST Segment (`slope`)
- **Moderate correlation (0.38) with heart disease**.

## Modeling
Due to the limited dataset size and the significant class imbalance models were trained to detect the presence of heart disease instead of trying to classify each category of heart disease. 
The dataset the following number of samples:

0 (negative)   157
1 (positive)  135

### 1. Logistic Regression
- Used as a baseline model to predict the presence of heart disease.  
- Achieves an accuracy of **86%** on the test set.
- F1 score of **85%**

  ![cm](https://github.com/trow-land/Data-Science/blob/main/Heart%20Disease/images/cm2.png)

### 2. Decision Tree
- Accuracy of **82%** for binary classification
- F1 score of **81%**

### 3. Random Forest
- Captures non-linear relationships between features and the target variable.  
- Achieves an accuracy of **84%** on the test set.
- F1 score of **83%**

### 4. XGBoost
- Captures non-linear relationships between features and the target variable.  
- Achieves an accuracy of **82%** on the test set.
- F1 score of **82%**

### 5. Simple Neural Network
- Achieves an accuracy of **82%** on the test set.
- F1 score of **81%**

### 4. Model Comparison
- Logistic Regression outperforms the other models in terms of accuracy, precision, and recall.  

## Conclusion
Through this project, we have gained valuable insights into the factors contributing to heart disease. Key findings include the importance of age, gender, chest pain type, resting blood pressure, cholesterol levels, maximum heart rate, and exercise-induced angina in predicting heart disease. The **Random Forest** model performed the best, achieving an accuracy of **90%**. Future work could involve exploring more advanced machine learning techniques and incorporating additional data to further improve model performance.




