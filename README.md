##  Background & Overview  
Marketing data is often spread across multiple systems—customer records, product catalogs, engagement logs, and unstructured reviews. To unify this data, the project builds a **star-schema marketing data warehouse** in SQL Server, applies **sentiment analysis** on customer reviews using Python, and integrates results into a **Power BI dashboard** for interactive insights.  

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




Credit - [Ali Ahamad](https://www.youtube.com/@aliahmaddata) on YouTube
