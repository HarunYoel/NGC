--Membuat Table
CREATE TABLE "Orders" (
    order_id INT PRIMARY KEY,  -- Kunci utama, nilai harus diisi secara manual
    customer_id INT,           -- Kunci asing yang merujuk ke tabel Customers
    order_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES "Customer"(customer_id)
);

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