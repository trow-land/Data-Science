# Data Science

This space is dedicated to showcasing some of my personal projects and explorations in the field of data science. While much of my work has been done in a professional context and is protected by intellectual property rights, these projects represent my skills and interests in various data science topics.

# Example project:

# Veterans & Disability Data Dashboard

![Royal_British_Legion_logo.png](https://github.com/trow-land/Data-Science/blob/main/Royal%20British%20Legion%20Interactive%20Data%20Tool/images/Royal_British_Legion_logo.png)

## Introduction

This project aimed to create an interactive dashboard using data from the 2021 Census in England & Wales and the 2022 Census in Scotland. The data focuses on veterans and their disabilities in a region, providing insights into the characteristics and needs of veterans and those they live with.

The dashboard utilises various datasets and geographical information to present detailed profiles of veterans, including metrics on disability, health, age, economic activity, and occupation. This tool is designed to be user-friendly and visually appealing, helping stakeholders answer questions such as:

- How many disabled veterans live in Kent?
- What are the ages and genders of disabled veterans in Powys?
- How does the proportion and profile of disabled veterans in Plymouth compare to the non-veteran disabled population?

## Features

- **Interactive Maps**: Visualise the distribution of veterans across different regions.
- **Customisable Plots**: Generate bar charts and other visualisations based on selected areas and indicators.
- **Dynamic Filtering**: Select specific demographics and indicators to refine data views.
- **User-Friendly Interface**: Built with Panel and HoloViews, offering an interactive and intuative navigation experience.

## Usage Guide

### Selecting Areas and Indicators

Use the dropdown menus to select specific regions and veteran indicators. The dashboard will dynamically update the maps and plots based on your selections.

![cearphilly disibility plots](https://github.com/trow-land/Data-Science/blob/main/Royal%20British%20Legion%20Interactive%20Data%20Tool/images/caerphilly_disability.png)

### Customizing Data Views

You can filter data by various demographics such as disability status, general health, age, economic activity, and occupation. This allows for detailed analysis and comparison across multiple regions and veteran groups.

![Veteran Ages Cornwall](https://github.com/trow-land/Data-Science/blob/main/Royal%20British%20Legion%20Interactive%20Data%20Tool/images/vet%20ages%20cornwall.png)

![Richmond and Tower Hamlets Economic Activity](https://github.com/trow-land/Data-Science/blob/main/Royal%20British%20Legion%20Interactive%20Data%20Tool/images/richmond_towerhamlets_economic_act_hover.png)

### Interacting with Maps

Click on the map to select a region, and the plots will (in future) update to show data specific to that area. Hover over areas to see detailed information about the number of veterans per region.

![Wiltshite Total Veterans](https://github.com/trow-land/Data-Science/blob/main/Royal%20British%20Legion%20Interactive%20Data%20Tool/images/wiltshire_total_vets.png)

## Datasets
Veteran data was all obtained from the government 2021 census from the ONS. (eg. [disability data](https://www.ons.gov.uk/datasets/RM143/editions/2021/versions/2))

## Packages
Pandas, geopandas, hvplot, panel

