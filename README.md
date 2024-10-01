**Project Summary: Analyzing E-commerce Product Profitability**

In this project, I aimed to analyze the profitability of products in an e-commerce dataset. I performed various SQL queries to extract valuable insights about product profitability, including the identification of the top 5 products with the highest profit margin, and unique combinations of brands and product lines with the highest profitability. I also utilized Power BI for data visualization to provide a more comprehensive view of the results.

**Project Steps:**

1. **Data Loading and Cleaning:** I began by importing the e-commerce dataset and cleaned it to prepare it for analysis. I removed unnecessary columns and renamed columns for clarity. The cleaned dataset was then exported to a CSV file.

2. **Filtering Approved Orders:** I filtered the dataset to include only the rows with "Approved" order status, creating a new DataFrame named 'approved_df.'

3. **Data Processing and Month Indexing:** I processed the data by selecting relevant columns, converting transaction dates to datetime format, and creating a new column for the year and month. I then calculated a transaction month index to track relative time since a customer's first transaction.

4. **Cohort Identification:** I identified cohorts by grouping data by customer ID and finding the earliest transaction month index for each customer. This cohort information was stored in the 'cohort_month' DataFrame.

5. **Merging Customer Data with Cohort Information:** I merged customer transaction data with cohort month information, creating a comprehensive dataset named 'data.'

6. **Calculating Cohort Index:** I calculated a 'cohort_index' column, representing the relative time since a customer's first transaction within their cohort month.

7. **Customer Cohort Analysis:** I created a DataFrame ('final_df') that counted the number of unique customers within each cohort group.

8. **Creating Cohort Data Pivot Table:** A pivot table ('cohort_data') was created to summarize cohort information, providing a clear overview of customer retention over time.

9. **Calculating Cohort Percentage of Initial Size:** I calculated a 'cohort_percentage' DataFrame, showing the percentage of customers retained over time relative to the initial cohort size.

10. **SQL Analysis:** I performed SQL queries to gain insights into the dataset, including identifying distinct brands and counting unique customers. Additionally, I calculated the total count of approved and unapproved transactions.

11. **Power BI Data Visualization:** As part of the project, data was visualized using Power BI to create interactive dashboards and reports. These visualizations helped provide a more user-friendly and intuitive exploration of the dataset, allowing stakeholders to grasp the insights quickly.

**Project Outcome:**

Dashboard 1 - ![Alt Text](https://github.com/RobinMillford/Analyzing-E-commerce-Transactions---Data-Cleaning-Cohort-Analysis-and-SQL/blob/main/Analyzing-E-commerce-Transactions-Power-BI(Dashbord%20%201).png)

Dashboard 2 - ![Alt Text](https://github.com/RobinMillford/Analyzing-E-commerce-Transactions---Data-Cleaning-Cohort-Analysis-and-SQL/blob/main/Analyzing-E-commerce-Transactions-Power-BI(Dashbord%202).png)

Through SQL analysis and Power BI data visualization, I was able to identify valuable insights about product profitability, customer behavior, and cohort analysis. The project provided a comprehensive understanding of the e-commerce dataset, which can be used for making informed business decisions and optimizing product offerings.

The project demonstrated the importance of combining data analysis with data visualization tools like Power BI to effectively communicate insights and provide actionable recommendations to stakeholders.
