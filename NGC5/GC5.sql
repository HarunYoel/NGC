-- Membuat tabel Customer tanpa AUTO_INCREMENT
CREATE TABLE "Customer" (
    customer_id INT PRIMARY KEY,  -- harus memberikan nilai unik secara manual
    name VARCHAR(255),
    city VARCHAR(255)
)

--Membuat Table Orders
CREATE TABLE "Orders" (
    order_id INT PRIMARY KEY,  -- Kunci utama, nilai harus diisi secara manual
    customer_id INT,           -- Kunci asing yang merujuk ke tabel Customers
    order_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES "Customer"(customer_id)
);
-- Menambahkan data ke tabel Customer
insert into "Customer" (customer_id, customer_name, city) VALUES (1,'John Doe', 'New York');
insert into "Customer" (customer_id, customer_name, city) VALUES (2,'Jane Smith', 'Los Angeles');
insert into "Customer" (customer_id, customer_name, city) values (3,'David Johnson', 'Chicago');

-- Menambahkan data untuk pesanan pertama
INSERT INTO "Orders" (order_id, customer_id, order_date, total_amount)
VALUES (1, 1, '2022-01-10', 100.00);

-- Menambahkan data untuk pesanan kedua
INSERT INTO "Orders" (order_id, customer_id, order_date, total_amount)
VALUES (2, 1, '2022-02-15', 150.00);

-- Menambahkan data untuk pesanan ketiga
INSERT INTO "Orders" (order_id, customer_id, order_date, total_amount)
VALUES (3, 2, '2022-03-20', 200.00);
-- Menambahkan data untuk pesanan keempat

INSERT INTO "Orders" (order_id, customer_id, order_date, total_amount)
VALUES (4, 3, '2022-04-25', 50.00);

-- Untuk Mendapatkan daftar nama pelanggan beserta jumlah total pesanan
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