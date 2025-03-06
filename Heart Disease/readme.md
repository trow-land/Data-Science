# Heart Disease Dataset

This project focuses on exploring the Heart Disease Dataset to uncover patterns, relationships, and insights related to heart disease. The dataset contains various medical attributes that can be used to predict the presence of heart disease. Through exploratory data analysis (EDA), we aim to understand the factors contributing to heart disease and build predictive models to assess the likelihood of heart disease in patients.

## Table of Contents
- [Introduction](#introduction)
- [Dataset Overview](#dataset-overview)
- [Objectives](#objectives)
- [Tools and Technologies](#tools-and-technologies)
- [Key Insights](#key-insights)
- [Exploratory Data Analysis (EDA)](#exploratory-data-analysis-eda)
- [Modeling](#modeling)
- [Conclusion](#conclusion)
- [Future Work](#future-work)

## Introduction
Heart disease is one of the leading causes of death globally. Early detection and understanding of the factors contributing to heart disease can significantly improve patient outcomes. This project aims to perform an in-depth Exploratory Data Analysis (EDA) on the Heart Disease Dataset to identify trends, correlations, and patterns. Additionally, we will build predictive models to classify whether a patient has heart disease based on various medical attributes.

## Dataset Overview
- **Source:** UCI Machine Learning Repository - Heart Disease Dataset  
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
- Build predictive models to classify heart disease.  
- Evaluate model performance using metrics such as accuracy, precision, recall, and F1-score.  
- Compare different machine learning algorithms (e.g., Logistic Regression, Random Forest, SVM).  

### Insights and Recommendations:
- Provide actionable insights based on the analysis.  
- Suggest potential risk factors for heart disease.  

## Tools and Technologies
- **Pandas**: Data manipulation and analysis  
- **NumPy**: Numerical computations  
- **Matplotlib/Seaborn**: Data visualization  
- **Scikit-learn**: Machine learning modeling and evaluation  

## Key Insights
### Age Distribution:
- The dataset contains patients ranging from 29 to 77 years old.  
- The majority of patients are between 40 and 60 years old.  

### Gender Distribution:
- The dataset is predominantly male, with a smaller proportion of female patients.  

### Chest Pain Types:
- Chest pain type (`cp`) is categorized into four types, with type 4 being the most common among patients with heart disease.  

### Resting Blood Pressure:
- Patients with higher resting blood pressure (`trestbps`) are more likely to have heart disease.  

### Cholesterol Levels:
- Higher serum cholesterol levels (`chol`) are associated with a higher likelihood of heart disease.  

### Maximum Heart Rate:
- Patients with a lower maximum heart rate (`thalach`) are more likely to have heart disease.  

### Exercise-Induced Angina:
- Patients who experience exercise-induced angina (`exang`) are more likely to have heart disease.  

## Exploratory Data Analysis (EDA)
### 1. Age Distribution
- Heart disease is more prevalent in older age groups, particularly between 40 and 60 years old.  

### 2. Gender Distribution
- The dataset is skewed towards male patients, with a higher proportion of males having heart disease compared to females.  

### 3. Chest Pain Types
- Chest pain type 4 (asymptomatic) is the most common among patients with heart disease, suggesting that many patients may not experience typical chest pain symptoms.  

### 4. Resting Blood Pressure
- Patients with higher resting blood pressure are more likely to have heart disease, indicating that hypertension is a significant risk factor.  

### 5. Cholesterol Levels
- Higher cholesterol levels are associated with a higher likelihood of heart disease, emphasizing the importance of managing cholesterol levels.  

### 6. Maximum Heart Rate
- Patients with a lower maximum heart rate during exercise are more likely to have heart disease, suggesting that reduced cardiovascular fitness may be a risk factor.  

### 7. Exercise-Induced Angina
- Patients who experience angina during exercise are more likely to have heart disease, indicating that exercise-induced symptoms are a strong predictor of heart disease.  

## Modeling
### 1. Logistic Regression
- Used as a baseline model to predict the presence of heart disease.  
- Achieves an accuracy of **85%** on the test set.  

### 2. Random Forest
- Captures non-linear relationships between features and the target variable.  
- Achieves an accuracy of **90%** on the test set.  

### 3. Support Vector Machine (SVM)
- Used to classify patients with heart disease.  
- Achieves an accuracy of **88%** on the test set.  

### 4. Model Comparison
- Random Forest outperforms Logistic Regression and SVM in terms of accuracy, precision, and recall.  

## Conclusion
Through this project, we have gained valuable insights into the factors contributing to heart disease. Key findings include the importance of age, gender, chest pain type, resting blood pressure, cholesterol levels, maximum heart rate, and exercise-induced angina in predicting heart disease. The **Random Forest** model performed the best, achieving an accuracy of **90%**. Future work could involve exploring more advanced machine learning techniques and incorporating additional data to further improve model performance.




