# sales_dashboard

Problem Statement: A small company Axon, which is a retailer selling classic cars, is facing issues in managing and analyzing their sales data. The sales team is struggling to make sense of the data and they do not have a centralized system to manage and analyze the data. The management is unable to get accurate and up-to-date sales reports, which is affecting the decision-making process.

Aim: The goal of the capstone project is to design and implement a BI solution using PowerBI and SQL that can help the company manage and analyze their sales data effectively. 

About Dataset: The dataset contains business data from 06/01/2003 until 31/05/2005. It consists of 8 tables and a brief description of these table are:
Customers: stores customer’s data.
Products: stores a list of scale model cars.
ProductLines: stores a list of product line categories.
Orders: stores sales orders placed by customers.
OrderDetails: stores sales order line items for each sales order.
Payments: stores payments made by customers based on their accounts.
Employees: stores all employee information as well as the organization structure such as who reports to whom.
Offices: stores sales office data

Steps followed for Analysis:
1.	Data Extraction: Created a new database in MySQL and used it as a data source to load data in PowerBI.

2.	Data Transformation: Performed cleaning of data by using Power Query Editor. It included removing duplicates, rectifying datatype, removing null rows and ensuring data consistency. The cleaned data was loaded to Power BI desktop.

3.	Data Modelling: Managed the different table relationships and created two additional tables as Dim Date and Calculations for using Date Intelligence feature and calculating measures.

4.	Preparing Report: Used different types of visualizations to create dashboards with useful insights and information for the management.

5.	Advanced Analysis: Used MySQL to perform further analysis using the dataset.

6.	Insights: A detailed report was prepared by mentioning all the insights from the dataset.


The insights gained are as follows:

•	2004 had the highest total Sum of Profit at $1.81 Millions, followed by 2003 at 1.32 Millions and 2005 at 0.69 Million.

•	At $3.85 Millions, Classic Cars had the highest sum of Sales and was 1,944% higher than Trains, which had the lowest sum of Sales at $18.8 Millions. Classic Cars accounted for around 40% of Total Sales.

•	It can be seen that the product line of Classic and Vintage Cars covers around 62% of the total orders. The product line of Trains has the lowest number of orders over the 3 years.

•	In both 2003 and 2005, November month had the highest sales which has resulted in highest profits. Whereas in rest of the months the sales has been constant.

•	Among all the Countries, the company has made the highest sales from the customers in USA.

•	The average order value stands at around 29.5k Dollars. The Order Value of 20k-40k had the highest orders at 135, followed by <20k, 40k-50k, and >50k.

•	Almost 93% of the orders has been shipped successfully to the customers. It takes around 3.6 days on an average to ship an order after it has been placed.

•	It seems that the growth by quarter (QoQ%) has been negative in the 1st quarter for all the years(-55 & -48%). This negative growth is attributed to the higher growth of sales in the 4th quarter of each year.

•	It was found that 2001 Ferrari Enzo has received the highest orders and 1952 Alpine Renault 1300 is the most profitable product among all.

•	There has been a growth in sales from the year 2003 to 2004 for all the productlines. However the growth for Classic Cars(22%) has not increased significantly as compared to others(>30%) despite of having the highest volume of sales among all.
