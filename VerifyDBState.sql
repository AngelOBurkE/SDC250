-- VerifyDBState.sql

-- 1. Check which users have access to the database
SELECT USER_ID, USERNAME, CREATED, PASSWORD_CHANGE_DATE
FROM USER_USERS;

-- 2. Check what tables are present in the database
SELECT * FROM USER_TABLES;

-- 3. Describe the ORDERS table
DESC ORDERS;

-- 4. Describe the PRODUCTLIST table
DESC PRODUCTLIST;

-- 5. Describe the REVIEWS table
DESC REVIEWS;

-- 6. Describe the STOREFRONT table
DESC STOREFRONT;

-- 7. Describe the USERBASE table
DESC USERBASE;

-- 8. Describe the USERLIBRARY table
DESC USERLIBRARY;

-- 9. Display everything in the ORDERS table
SELECT * FROM ORDERS;

-- 10. Display everything in the PRODUCTLIST table
SELECT * FROM PRODUCTLIST;

-- 11. Display everything in the REVIEWS table
SELECT * FROM REVIEWS;

-- 12. Display everything in the STOREFRONT table
SELECT * FROM STOREFRONT;

-- 13. Display everything in the USERBASE table
SELECT * FROM USERBASE;

-- 14. Display everything in the USERLIBRARY table
SELECT * FROM USERLIBRARY;

-- 15. Check what constraints are present in the database
SELECT TABLE_NAME, CONSTRAINT_NAME, CONSTRAINT_TYPE, STATUS
FROM USER_CONSTRAINTS;

-- 16. Check what views are present in the database
SELECT VIEW_NAME, TEXT
FROM USER_VIEWS;

-- 17. Display every USERNAME in alphabetical order
SELECT USERNAME
FROM USERBASE
ORDER BY USERNAME;

-- 18. Display FIRSTNAME, LASTNAME, USERNAME, PASSWORD, and EMAIL of users with yahoo email
SELECT FIRSTNAME, LASTNAME, USERNAME, PASSWORD, EMAIL
FROM USERBASE
WHERE EMAIL LIKE '%@yahoo.%';

-- 19. Display USERNAME, BIRTHDAY, and WALLETFUNDS of users with less than $25
SELECT USERNAME, BIRTHDAY, WALLETFUNDS
FROM USERBASE
WHERE WALLETFUNDS < 25;

-- 20. Display USERID and PRODUCTCODE of users with more than 100 HOURSPLAYED
SELECT USERID, PRODUCTCODE
FROM USERLIBRARY
WHERE HOURSPLAYED > 100;

-- 21. Display PRODUCTCODE of games with less than 10 HOURSPLAYED
SELECT PRODUCTCODE
FROM USERLIBRARY
WHERE HOURSPLAYED < 10;

-- 22. Display every unique PUBLISHER
SELECT DISTINCT PUBLISHER
FROM PRODUCTLIST;

-- 23. Display PRODUCTNAME, RELEASEDATE, PUBLISHER, and GENRE sorted by GENRE
SELECT PRODUCTNAME, RELEASEDATE, PUBLISHER, GENRE
FROM PRODUCTLIST
ORDER BY GENRE;

-- 24. Display PRODUCTCODE and PUBLISHER of products in the 'Strategy' genre
SELECT PRODUCTCODE, PUBLISHER
FROM PRODUCTLIST
WHERE GENRE = 'Strategy';

-- 25. Display PRODUCTCODE, DESCRIPTION, and PRICE of products > $25 sorted by descending price
SELECT PRODUCTCODE, DESCRIPTION, PRICE
FROM PRODUCTLIST
WHERE PRICE > 25
ORDER BY PRICE DESC;

-- 26. Display INVENTORYID and PRICE of all products in STOREFRONT sorted by ascending PRICE
SELECT INVENTORYID, PRICE
FROM STOREFRONT
ORDER BY PRICE ASC;

-- 27. Display PRODUCTCODE and REVIEW for products with a RATING of 1
SELECT PRODUCTCODE, REVIEW
FROM REVIEWS
WHERE RATING = 1;

-- 28. Display PRODUCTCODE and REVIEW for products with RATING >= 4
SELECT PRODUCTCODE, REVIEW
FROM REVIEWS
WHERE RATING >= 4;

-- 29. Display every unique USERID from users who have placed an order
SELECT DISTINCT USERID
FROM ORDERS;

-- 30. Display all order data sorted by earliest PURCHASEDATE
SELECT * FROM ORDERS
ORDER BY PURCHASEDATE;
