-- SQL INSERT statements for Product data extracted from home.html
-- Based on the Product entity model with proper BigDecimal formatting

-- ==========================================
-- CATEGORIES TABLE INSERT STATEMENTS
-- ==========================================
-- Insert Categories first (these IDs are referenced by products)
INSERT INTO categories (id, name, description, image_url, parent_id) VALUES
(1, 'Smartphones', 'Latest smartphones and mobile devices with cutting-edge technology', 'https://via.placeholder.com/300x200?text=Smartphones', NULL),
(2, 'Audio', 'Premium audio equipment including headphones, earbuds, and speakers', 'https://via.placeholder.com/300x200?text=Audio', NULL),
(3, 'Tablets', 'Powerful tablets for work, entertainment, and creativity', 'https://via.placeholder.com/300x200?text=Tablets', NULL),
(4, 'Accessories', 'Essential accessories and add-ons for your devices', 'https://via.placeholder.com/300x200?text=Accessories', NULL);

-- ==========================================
-- PRODUCTS TABLE INSERT STATEMENTS
-- ==========================================
-- Category mapping: 1=Smartphones, 2=Audio, 3=Tablets, 4=Accessories

-- New Arrivals Section (Product IDs: 101-104)
INSERT INTO products (id, name, description, price, sale_price, stock_quantity, is_subscription, category_id, created_at, updated_at, active) VALUES
(101, 'iPhone 15 Pro Titanium - 256GB', 'Latest flagship iPhone with titanium build and advanced camera system', 1299.99, 1099.99, 50, false, 1, NOW(), NOW(), true),
(102, 'Samsung Galaxy S24 Ultra 5G', 'Premium Samsung flagship with S Pen and advanced photography features', 1199.99, 999.99, 35, false, 1, NOW(), NOW(), true),
(103, 'Google Pixel 8 Pro - 512GB', 'Google flagship with advanced AI photography and pure Android experience', 1099.99, 899.99, 40, false, 1, NOW(), NOW(), true),
(104, 'OnePlus 12 - 16GB RAM 512GB', 'High-performance OnePlus flagship with fast charging and premium build', 949.99, 799.99, 25, false, 1, NOW(), NOW(), true);

-- Featured Products Section (Product IDs: 201-206)
INSERT INTO products (id, name, description, price, sale_price, stock_quantity, is_subscription, category_id, created_at, updated_at, active) VALUES
(201, 'iPhone 15 - 128GB', 'Latest iPhone with advanced camera system and A17 Bionic chip', 949.99, 799.99, 60, false, 1, NOW(), NOW(), true),
(202, 'Samsung Galaxy Z Flip 5 - 256GB', 'Innovative foldable smartphone with compact flip design', 1099.99, 899.99, 20, false, 1, NOW(), NOW(), true),
(203, 'Google Pixel 7 - 128GB', 'Google smartphone with excellent camera AI and clean Android experience', 649.99, 499.99, 45, false, 1, NOW(), NOW(), true),
(204, 'Xiaomi 13 Pro - 256GB', 'Xiaomi flagship with Leica camera system and premium performance', 899.99, 699.99, 30, false, 1, NOW(), NOW(), true),
(205, 'Google Pixel 7a - 128GB', 'Mid-range Google phone with flagship camera features at affordable price', 479.99, 379.99, 55, false, 1, NOW(), NOW(), true),
(206, 'Samsung Galaxy S23 - 256GB', 'Samsung flagship with advanced camera system and premium build quality', 799.99, 649.99, 40, false, 1, NOW(), NOW(), true);

-- Modal Products - Smartphone Category (Product IDs: 301-302)
INSERT INTO products (id, name, description, price, sale_price, stock_quantity, is_subscription, category_id, created_at, updated_at, active) VALUES
(301, 'OnePlus 12 Pro 256GB Silky Black', 'OnePlus flagship in premium Silky Black with advanced camera system', 899.99, 799.99, 25, false, 1, NOW(), NOW(), true),
(302, 'Xiaomi 14 Ultra 512GB Photography Edition', 'Ultimate photography smartphone with Leica professional camera system', 799.99, 649.99, 15, false, 1, NOW(), NOW(), true);

-- Modal Products - Audio Category (Product IDs: 401-402)
INSERT INTO products (id, name, description, price, sale_price, stock_quantity, is_subscription, category_id, created_at, updated_at, active) VALUES
(401, 'Bose QuietComfort 45 Noise Cancelling', 'Premium noise-cancelling headphones with superior comfort and sound quality', 329.99, 249.99, 75, false, 2, NOW(), NOW(), true),
(402, 'JBL Charge 5 Portable Speaker', 'Powerful portable Bluetooth speaker with waterproof design and power bank feature', 179.99, 149.99, 100, false, 2, NOW(), NOW(), true);

-- Modal Products - Tablet Category (Product IDs: 501-502)
INSERT INTO products (id, name, description, price, sale_price, stock_quantity, is_subscription, category_id, created_at, updated_at, active) VALUES
(501, 'Samsung Galaxy Tab S9 Ultra 5G', 'Premium large-screen tablet with S Pen and 5G connectivity for productivity', 1299.99, 1099.99, 20, false, 3, NOW(), NOW(), true),
(502, 'Microsoft Surface Pro 9 Intel i7', 'Versatile 2-in-1 tablet with laptop performance and professional features', 1099.99, 899.99, 15, false, 3, NOW(), NOW(), true);

-- Modal Products - Accessories Category (Product IDs: 601-602)
INSERT INTO products (id, name, description, price, sale_price, stock_quantity, is_subscription, category_id, created_at, updated_at, active) VALUES
(601, 'MagSafe Wireless Charger 15W', 'Official Apple MagSafe wireless charger with 15W fast charging for iPhones', 49.99, 39.99, 200, false, 4, NOW(), NOW(), true),
(602, 'Anker 20000mAh Power Bank USB-C PD', 'High-capacity portable charger with USB-C Power Delivery and fast charging', 79.99, 59.99, 150, false, 4, NOW(), NOW(), true);

-- Note: You may need to create ProductImage entries separately for the image URLs found in the HTML
-- The image URLs from the HTML are:
-- Product 101: https://images.unsplash.com/photo-1544228865-7d73678c0f28?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8OXw5NTI4MTEyfHxlbnwwfHx8fHw%3D
-- Product 102: https://images.unsplash.com/photo-1679927006135-3ce598dac969?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MnwxMTQ5MzM2Nnx8ZW58MHx8fHx8
-- And so on for all products...

-- If you have a separate product_images table, you can add INSERT statements like:
-- INSERT INTO product_images (product_id, image_url, is_primary, display_order) VALUES
-- (101, 'https://images.unsplash.com/photo-1544228865-7d73678c0f28?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8OXw5NTI4MTEyfHxlbnwwfHx8fHw%3D', true, 1);

-- Remember to adjust the category_id values based on your actual category table structure

-- ==========================================
-- PRODUCT IMAGES TABLE INSERT STATEMENTS
-- ==========================================
-- Insert statements for product_images table
-- Each product has a primary image and a hover image (where available)

INSERT INTO product_images (product_id, image_url, is_primary, display_order) VALUES
-- New Arrivals Section Products (101-104)
(101, 'https://images.unsplash.com/photo-1544228865-7d73678c0f28?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8OXw5NTI4MTEyfHxlbnwwfHx8fHw%3D', true, 1),
(102, 'https://images.unsplash.com/photo-1679927006135-3ce598dac969?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MnwxMTQ5MzM2Nnx8ZW58MHx8fHx8', true, 1),
(103, 'https://images.unsplash.com/photo-1549818353-17df3ef42850?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8NDh8MTE0OTMzNjZ8fGVufDB8fHx8fA%3D%3D', true, 1),
(104, 'https://images.unsplash.com/photo-1585790050230-5dd28404ccb9?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8NTF8MTE0OTMzNjZ8fGVufDB8fHx8fA%3D%3D', true, 1),

-- Featured Products Section (201-206) - Primary and Hover Images
-- Product 201: iPhone 15
(201, 'https://images.unsplash.com/photo-1609406316639-f7112845cbe0?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MnwyNDc2NjgwfHxlbnwwfHx8fHw%3D', true, 1),
(201, 'https://images.unsplash.com/photo-1600692978168-f59e18a1cfbd?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MnxycmEtdmhwMUpJb3x8ZW58MHx8fHx8', false, 2),

-- Product 202: Samsung Galaxy Z Flip 5
(202, 'https://images.unsplash.com/photo-1589555551611-6311ca7b5199?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXxycmEtdmhwMUpJb3x8ZW58MHx8fHx8', true, 1),
(202, 'https://images.unsplash.com/photo-1609001732440-0d1768eb13b4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8NHxycmEtdmhwMUpJb3x8ZW58MHx8fHx8', false, 2),

-- Product 203: Google Pixel 7
(203, 'https://images.unsplash.com/photo-1600541519467-937869997e34?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8NnxycmEtdmhwMUpJb3x8ZW58MHx8fHx8', true, 1),
(203, 'https://images.unsplash.com/photo-1541096017664-085dd9a616c3?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MTd8cnJhLXZocDFKSW98fGVufDB8fHx8fA%3D%3D', false, 2),

-- Product 204: Xiaomi 13 Pro
(204, 'https://images.unsplash.com/photo-1617689181034-e79239074c13?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MjJ8cnJhLXZocDFKSW98fGVufDB8fHx8fA%3D%3D', true, 1),
(204, 'https://images.unsplash.com/photo-1625383659159-e5bb894a73d4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MzR8cnJhLXZocDFKSW98fGVufDB8fHx8fA%3D%3D', false, 2),

-- Product 205: Google Pixel 7a
(205, 'https://images.unsplash.com/photo-1659080382102-176e51b4f5f4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Z29vZ2xlJTIwcGl4ZWxzfGVufDB8fDB8fHww', true, 1),
(205, 'https://images.unsplash.com/photo-1688529175497-3aa8010abf3b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fGdvb2dsZSUyMHBpeGVsc3xlbnwwfHwwfHx8MA%3D%3D', false, 2),

-- Product 206: Samsung Galaxy S23
(206, 'https://images.unsplash.com/photo-1724322535079-11b08f7f5c88?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjJ8fGdvb2dsZSUyMHBpeGVsc3xlbnwwfHwwfHx8MA%3D%3D', true, 1),
(206, 'https://images.unsplash.com/photo-1669888940542-bf597f76ef39?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mzh8fGdvb2dsZSUyMHBpeGVsc3xlbnwwfHwwfHx8MA%3D%3D', false, 2),

-- Modal Products Section
-- Smartphone Modal Products (301-302)
-- Product 301: OnePlus 12 Pro
(301, 'https://images.unsplash.com/photo-1605236453806-b25e46c7c2e8?q=80&w=1364&auto=format&fit=crop', true, 1),
(301, 'https://images.unsplash.com/photo-1607853202273-797f1c22a38e?q=80&w=1374&auto=format&fit=crop', false, 2),

-- Product 302: Xiaomi 14 Ultra
(302, 'https://images.unsplash.com/photo-1598300042247-d088f8ab3a91?q=80&w=1365&auto=format&fit=crop', true, 1),
(302, 'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?q=80&w=1480&auto=format&fit=crop', false, 2),

-- Audio Modal Products (401-402)
-- Product 401: Bose QuietComfort 45
(401, 'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?q=80&w=1470&auto=format&fit=crop', true, 1),
(401, 'https://images.unsplash.com/photo-1484704849700-f032a568e944?q=80&w=1470&auto=format&fit=crop', false, 2),

-- Product 402: JBL Charge 5 Speaker
(402, 'https://images.unsplash.com/photo-1590658268037-6bf12165a8df?q=80&w=1632&auto=format&fit=crop', true, 1),
(402, 'https://images.unsplash.com/photo-1608043152269-423dbba4e7e1?q=80&w=1470&auto=format&fit=crop', false, 2),

-- Tablet Modal Products (501-502)
-- Product 501: Samsung Galaxy Tab S9 Ultra
(501, 'https://images.unsplash.com/photo-1544117519-31a4b719223d?q=80&w=1470&auto=format&fit=crop', true, 1),
(501, 'https://images.unsplash.com/photo-1561154464-82e9adf32764?q=80&w=1470&auto=format&fit=crop', false, 2),

-- Product 502: Microsoft Surface Pro 9
(502, 'https://images.unsplash.com/photo-1611532736492-de6d4b790f9d?q=80&w=1374&auto=format&fit=crop', true, 1),
(502, 'https://images.unsplash.com/photo-1587614387466-0a72ca909e16?q=80&w=1470&auto=format&fit=crop', false, 2),

-- Accessories Modal Products (601-602)
-- Product 601: MagSafe Wireless Charger
(601, 'https://images.unsplash.com/photo-1498049794561-7780e7231661?q=80&w=1470&auto=format&fit=crop', true, 1),
(601, 'https://images.unsplash.com/photo-1573883430485-b4e3d0aaeeac?q=80&w=1470&auto=format&fit=crop', false, 2),

-- Product 602: Anker Power Bank
(602, 'https://images.unsplash.com/photo-1609592424306-dd2100b0d8a0?q=80&w=1460&auto=format&fit=crop', true, 1),
(602, 'https://images.unsplash.com/photo-1619640492700-e02e6aaad1d5?q=80&w=1469&auto=format&fit=crop', false, 2);

-- Summary:
-- - 16 products total with 28 product images
-- - New Arrivals (101-104): 4 products, 4 images (primary only)
-- - Featured Products (201-206): 6 products, 12 images (primary + hover)
-- - Modal Smartphones (301-302): 2 products, 4 images (primary + hover)  
-- - Modal Audio (401-402): 2 products, 4 images (primary + hover)
-- - Modal Tablets (501-502): 2 products, 4 images (primary + hover)
-- - Modal Accessories (601-602): 2 products, 4 images (primary + hover)
