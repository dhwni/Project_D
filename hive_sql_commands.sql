/* create sales table */
CREATE EXTERNAL TABLE sales
(
	Name string,
	Platform string,
	Year_of_Release int,
	Genre string,
	Publisher string,
	NA_Sales float,
	EU_Sales float,
	JP_Sales float,
	Other_Sales float,
	Global_Sales float,
	Critic_Score int,
	Critic_Count int,
	User_Score float,
	User_Count int,
	Developer string,
	Rating char(2)
)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE LOCATION '/game_study'
TBLPROPERTIES("skip.header.line.count"="1");


/* create sales_genre */
CREATE EXTERNAL TABLE sales_genre
(
	Name string,
	Platform string,
	Year_of_Release int,
	Genre string,
	Publisher string,
	NA_Sales float,
	EU_Sales float,
	JP_Sales float,
	Other_Sales float,
	Global_Sales float,
	Critic_Score int,
	Critic_Count int,
	User_Score float,
	User_Count int,
	Developer string,
	Rating char(2)
);

/* Load sales into sales_genre */
INSERT INTO sales_genre
SELECT * FROM sales;

/* check of data is loaded */
select * from sales_genre limit 5;

