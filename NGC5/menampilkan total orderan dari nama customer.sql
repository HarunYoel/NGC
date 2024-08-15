SELECT 
    "Customer".customer_name AS customer_name, 
    COUNT("Orders".order_id) AS total_orders
FROM 
    "Customer" "Customer"
LEFT JOIN 
    "Orders" "Orders"
ON 
    "Customer".customer_id = "Orders".customer_id
GROUP BY 
    "Customer".customer_name;