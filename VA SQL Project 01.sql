USE ecommerce;
select * from ecommerce.users_data;
DESC users_data;

#4
USE ecommerce;
SELECT * FROM users_data LIMIT 100;

#5
USE ecommerce;
SELECT COUNT(DISTINCT country) as dist_country,COUNT(DISTINCT language) as dist_language FROM users_data;

#6
USE ecommerce;
SELECT SUM(socialNbFollowers),gender FROM users_data GROUP BY gender;

#7
#(a)
USE ecommerce;
SELECT COUNT(*) FROM users_data WHERE hasProfilePicture ="True";
#(b)
USE ecommerce;
SELECT COUNT(*) FROM users_data WHERE hasAnyApp ="True";
#(c)
USE ecommerce;
SELECT COUNT(*) FROM users_data WHERE hasAndroidApp ="True";
#(d)
USE ecommerce;
SELECT COUNT(*) FROM users_data WHERE hasIosApp ="True";

#8
USE ecommerce;
SELECT country,SUM(productsBought) FROM users_data GROUP BY country ORDER BY SUM(productsBought) DESC;

#9
USE ecommerce;
SELECT country,AVG(productsSold) FROM users_data GROUP BY country ORDER BY AVG(productsSold) ASC;

#10
USE ecommerce;
SELECT country,SUM(productsPassRate) FROM users_data GROUP BY country ORDER BY SUM(productsPassRate) DESC LIMIT 10;

#11
USE ecommerce;
SELECT language, COUNT(*) FROM users_data GROUP BY language;

#12
USE ecommerce;
SELECT SUM(productsWished),SUM(socialProductsLiked) FROM users_data WHERE gender='F'

#13
USE ecommerce;
SELECT SUM(productsSold),SUM(productsBought) FROM users_data WHERE gender='M'

#14
USE ecommerce;
SELECT country,SUM(productsBought) FROM users_data GROUP BY country ORDER BY SUM(productsBought) DESC;

#15
USE ecommerce;
SELECT productsSold,country FROM users_data WHERE productsSold=0 LIMIT 10;

#16
USE ecommerce;
SELECT daysSinceLastLogin FROM users_data ORDER BY daysSinceLastLogin ASC LIMIT 110;

-- OR

USE ecommerce;
SELECT * FROM users_data ORDER BY daysSinceLastLogin LIMIT 110;

#17
USE ecommerce;
SELECT gender,COUNT(daysSinceLastLogin) FROM users_data WHERE gender='F' AND daysSinceLastLogin >100;

#18
USE ecommerce;
SELECT country, COUNT(*) FROM  users_data WHERE gender='F' ORDER BY country;

#19
USE ecommerce;
SELECT country, COUNT(*) FROM  users_data WHERE gender='M' GROUP BY country;

#20
USE ecommerce;
SELECT AVG(productsSold),AVG(productsBought),country FROM users_data WHERE gender='M' GROUP BY country;