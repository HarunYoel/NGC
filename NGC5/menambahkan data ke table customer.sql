-- Membuat tabel Customer tanpa AUTO_INCREMENT
CREATE TABLE "Customer" (
    customer_id INT PRIMARY KEY,  -- harus memberikan nilai unik secara manual
    name VARCHAR(255),
    city VARCHAR(255)
)
-- Menambahkan data ke tabel Customer
insert into "Customer" (customer_id, customer_name, city) VALUES (1,'John Doe', 'New York');
insert into "Customer" (customer_id, customer_name, city) VALUES (2,'Jane Smith', 'Los Angeles');
insert into "Customer" (customer_id, customer_name, city) values (3,'David Johnson', 'Chicago');