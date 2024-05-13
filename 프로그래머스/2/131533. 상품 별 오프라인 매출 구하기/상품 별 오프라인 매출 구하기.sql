-- 코드를 입력하세요
SELECT PRODUCT_CODE, (PRICE * SALES_AMOUNT) SALES
FROM PRODUCT P INNER JOIN
(SELECT PRODUCT_ID, SUM(SALES_AMOUNT) SALES_AMOUNT
FROM OFFLINE_SALE
GROUP BY PRODUCT_ID) O ON(P.PRODUCT_ID = O.PRODUCT_ID)
GROUP BY PRODUCT_CODE
ORDER BY SALES DESC, PRODUCT_CODE