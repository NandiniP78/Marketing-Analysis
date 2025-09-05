##  Background & Overview  
Marketing data is often spread across multiple systems—customer records, product catalogs, engagement logs, and unstructured reviews. To unify this data, the project builds a **star-schema marketing data warehouse** in SQL Server, applies **sentiment analysis** on customer reviews using Python, and integrates results into a **Power BI dashboard** for interactive insights.  

## Business Problem
ShopEasy, an online retail business, is facing reduced customer engagement and conversion rates despite launching several new online marketing campaigns. They want to conduct a detailed analysis and identify areas for improvement in their marketing strategies.

The pipeline includes:  
- **SQL Server** → Fact & dimension tables for structured data.  
- **Python (NLP)** → Sentiment classification of customer reviews.  
- **Power BI + DAX** → Visualization of KPIs across products, channels, and customer segments.  

## Dataset Overview  
This project integrates both **structured** and **unstructured** marketing data sources:  

- **Customer Dimension (`dim_customers`)**  
  - Attributes: CustomerID, demographics, region, and segmentation details.  

- **Product Dimension (`dim_products`)**  
  - Attributes: ProductID, category, brand, and price range.  

- **Fact Tables**  
  - `fact_customer_journey`: Tracks customer touchpoints across marketing channels (e.g., ads, email, social media).  
  - `fact_customers_review`: Stores product/service reviews enriched with sentiment labels.  
  - `fact_engagement_data`: Contains engagement metrics such as impressions, clicks, conversions.  

- **Customer Reviews Dataset (`customer_review_sentiment.xlsx`)**  
  - Source: Text reviews processed with Python NLP pipeline.  
  - Columns: ReviewID, CustomerID, ProductID, ReviewText, PredictedSentiment (Positive, Neutral, Negative).  

- **Calendar Table (DAX Script)**  
  - Generated using DAX for time-based calculations in Power BI (e.g., YoY growth, monthly trends).  

<img width="1502" height="736" alt="Screenshot 2025-09-02 201712" src="https://github.com/user-attachments/assets/ad7bb29d-8ae0-4fd9-ae17-77406dd66e96" />

## Dashboard
<img width="1338" height="719" alt="Screenshot 2025-09-02 202252" src="https://github.com/user-attachments/assets/3adbf670-e26e-4a8f-ade7-525326c6c2e4" />
<img width="1347" height="726" alt="Screenshot 2025-09-02 202309" src="https://github.com/user-attachments/assets/873b18f3-2c4e-4c7d-9778-33d567d9ff33" />
<img width="1357" height="723" alt="Screenshot 2025-09-02 202325" src="https://github.com/user-attachments/assets/650db2ac-5bdd-4632-9c4f-e768a37446e5" />
<img width="1348" height="727" alt="Screenshot 2025-09-02 202356" src="https://github.com/user-attachments/assets/c75decf1-3404-4dec-a5cb-98575820542a" />

## Overview of Analysis 

### 1. Conversion Performance
- Overall conversion rate: **9.6%**
- Peak months: **January (17.3%)** and **September (12.2%)**
- Lowest months: **April (7.6%)** and **October (7.1%)**
- Top products: **Hockey Stick, Ski Boots, Baseball Glove**
- Low performers: **Running Shoes, Swim Goggles**

### 2. Social Media Engagement
- **9M views**, **2M clicks**, **414K likes**
- Engagement declining steadily after **March**
- Large gap between views and likes → need stronger content engagement strategy

### 3. Customer Reviews
- Average rating: **3.7/5**
- Best-rated products: **Climbing Rope, Swim Goggles, Cycling Helmet**
- Low-rated products: **Yoga Mat, Gold Clubs**

### 4. Engagement Funnel
- High visibility (**9M views**) but sharp drop at likes (**414K**)  
- Suggests improvement needed in **conversion from awareness → engagement**

## 📌 Executive Summary
The dashboard shows strong initial visibility and decent conversion, with seasonal peaks in **January** and **September**. Some products (e.g., Hockey Stick, Ski Boots) perform well, while others underperform. Social media engagement is declining over the year, highlighting the need for renewed marketing strategies. Customer satisfaction is moderate, with certain products requiring quality improvements.










Credit - [Ali Ahamad](https://www.youtube.com/@aliahmaddata) on YouTube
