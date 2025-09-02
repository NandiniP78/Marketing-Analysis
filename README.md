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

## Dashboard
<img width="1338" height="719" alt="Screenshot 2025-09-02 202252" src="https://github.com/user-attachments/assets/3adbf670-e26e-4a8f-ade7-525326c6c2e4" />
<img width="1347" height="726" alt="Screenshot 2025-09-02 202309" src="https://github.com/user-attachments/assets/873b18f3-2c4e-4c7d-9778-33d567d9ff33" />
<img width="1357" height="723" alt="Screenshot 2025-09-02 202325" src="https://github.com/user-attachments/assets/650db2ac-5bdd-4632-9c4f-e768a37446e5" />
<img width="1348" height="727" alt="Screenshot 2025-09-02 202356" src="https://github.com/user-attachments/assets/c75decf1-3404-4dec-a5cb-98575820542a" />








Credit - [Ali Ahamad](https://www.youtube.com/@aliahmaddata) on YouTube
