USE cs3413_final;

SELECT
  stores.name,
  product_upc,
  products.product_name,
  sum(quantity) AS amount_sold
FROM (
       SELECT *
       FROM orders
         LEFT JOIN order_product ON orders.id = order_product.order_id
     ) AS A
  INNER JOIN products ON A.product_upc = products.upc
  INNER JOIN stores ON A.store_id = stores.id
GROUP BY product_upc
ORDER BY store_id, sum(quantity) DESC;