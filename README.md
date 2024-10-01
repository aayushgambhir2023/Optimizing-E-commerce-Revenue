**Project Summary: Optimizing E-commerce Revenue**

In this project, I analyzed an e-commerce dataset to assess product profitability. Using advanced SQL queries, I identified the top 5 products with the highest profit margins and the most profitable combinations of brands and product lines.

**Project Steps:**

1. **Data Loading and Cleaning:** Imported and cleaned the dataset by removing irrelevant columns, renaming for clarity, and exporting the cleaned data to a CSV file.

2. **Filtering Approved Orders:** Filtered the dataset to include only "Approved" orders, creating a new DataFrame named 'approved_df.'

3. **Data Processing and Month Indexing:** Selected relevant columns, converted transaction dates to datetime format, and created a year/month column. Calculated a transaction month index to track time since a customer's first purchase.

4. **Cohort Identification:** Grouped customers by their first transaction month to create cohort data, which was stored in the 'cohort_month' DataFrame.

5. **Merging Customer Data:** Combined customer transaction data with cohort information to generate a comprehensive dataset called 'data.'

6. **Cohort Index Calculation:** Added a 'cohort_index' column to represent the time since the customer’s first transaction within their cohort.

7. **Cohort Analysis:** Created a DataFrame ('final_df') to count unique customers per cohort group.

8. **Cohort Data Pivot Table:** Generated a pivot table ('cohort_data') to summarize customer retention over time.

9. **Calculating Retention Rates:** Created a 'cohort_percentage' DataFrame to display customer retention as a percentage of the initial cohort size.
