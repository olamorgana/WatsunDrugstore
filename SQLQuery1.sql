-- Create Products table
CREATE TABLE Products (
    ProductId INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(200) NOT NULL,
    Description NVARCHAR(500),
    Category NVARCHAR(100) NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    Stock INT NOT NULL,
    ImageFileName NVARCHAR(200)
);

-- Create Users table
CREATE TABLE Users (
    UserId INT PRIMARY KEY IDENTITY(1,1),
    FullName NVARCHAR(200) NOT NULL,
    Email NVARCHAR(200) NOT NULL UNIQUE,
    Password NVARCHAR(200) NOT NULL,
    Role NVARCHAR(50) DEFAULT 'Customer'
);

-- Create Orders table
CREATE TABLE Orders (
    OrderId INT PRIMARY KEY IDENTITY(1,1),
    CustomerName NVARCHAR(200),
    CustomerEmail NVARCHAR(200),
    Phone NVARCHAR(20),
    Address NVARCHAR(500),
    Postcode NVARCHAR(20),
    State NVARCHAR(100),
    PaymentMethod NVARCHAR(50) DEFAULT 'COD',
    OrderDate DATETIME DEFAULT GETDATE(),
    Subtotal DECIMAL(10,2),
    TaxAmount DECIMAL(10,2),
    TotalAmount DECIMAL(10,2),
    Status NVARCHAR(50) DEFAULT 'Processing'
);

-- Create OrderItems table
CREATE TABLE OrderItems (
    OrderItemId INT PRIMARY KEY IDENTITY(1,1),
    OrderId INT FOREIGN KEY REFERENCES Orders(OrderId),
    ProductId INT,
    ProductName NVARCHAR(200),
    Price DECIMAL(10,2),
    Quantity INT
);

-- Insert 35 products 
-- 10 SKINCARE
INSERT INTO Products (Name, Description, Category, Price, Stock, ImageFileName) VALUES
('The Ordinary Niacinamide 10%', '30ml high-vitamin and mineral blemish formula', 'Skincare', 35.00, 15, 'skincare_01.jpg'),
('CeraVe Hydrating Cleanser', 'Gentle face wash for normal to dry skin', 'Skincare', 28.50, 20, 'skincare_02.jpg'),
('La Roche-Posay Effaclar Duo', 'Anti-acne treatment cream for oily skin', 'Skincare', 45.00, 12, 'skincare_03.jpg'),
('Neutrogena Hydro Boost Gel', 'Water gel moisturizer with hyaluronic acid', 'Skincare', 32.90, 18, 'skincare_04.jpg'),
('COSRX Advanced Snail Mucin', '96% snail secretion filtrate essence', 'Skincare', 38.00, 25, 'skincare_05.jpg'),
('Simple Kind to Skin Toner', 'Alcohol-free toner with pro-vitamin B5', 'Skincare', 15.90, 30, 'skincare_06.jpg'),
('Innisfree Green Tea Serum', 'Hydrating serum with Jeju green tea extract', 'Skincare', 42.00, 10, 'skincare_07.jpg'),
('Avene Thermal Spring Water', 'Soothing and anti-irritating face spray', 'Skincare', 22.00, 22, 'skincare_08.jpg'),
('Paula Choice 2% BHA', 'Salicylic acid exfoliant for pore unclogging', 'Skincare', 55.00, 8, 'skincare_09.jpg'),
('Kiehls Ultra Facial Cream', '24-hour lightweight hydrating moisturizer', 'Skincare', 65.00, 14, 'skincare_10.jpg');

-- 10 COSMETICS
INSERT INTO Products (Name, Description, Category, Price, Stock, ImageFileName) VALUES
('Maybelline Lash Sensational Mascara', 'Waterproof full fan effect volume mascara', 'Cosmetics & Beauty', 42.90, 24, 'cosmetics_01.jpg'),
('LOreal Paris Infallible Foundation', '24H fresh wear liquid foundation SPF 25', 'Cosmetics & Beauty', 38.50, 16, 'cosmetics_02.jpg'),
('Maybelline Super Stay Lipstick', 'Matte ink liquid lipstick long-lasting', 'Cosmetics & Beauty', 25.90, 20, 'cosmetics_03.jpg'),
('Wardah Colorfit Velvet Matte', 'Lightweight matte lip cream with vitamin E', 'Cosmetics & Beauty', 18.90, 35, 'cosmetics_04.jpg'),
('Silkygirl Perfect Sharp Eyeliner', 'Waterproof and smudge-proof liquid eyeliner', 'Cosmetics & Beauty', 15.50, 28, 'cosmetics_05.jpg'),
('Etude House Drawing Eyebrow', 'Auto-pencil eyebrow with natural color', 'Cosmetics & Beauty', 12.90, 40, 'cosmetics_06.jpg'),
('LOreal Paris True Match Blush', 'Natural finish blush with skin tone matching', 'Cosmetics & Beauty', 29.90, 15, 'cosmetics_07.jpg'),
('Revlon ColorStay Eyeshadow', '16-hour longwear eyeshadow palette', 'Cosmetics & Beauty', 32.00, 12, 'cosmetics_08.jpg'),
('Nivea Caring Lip Balm', 'Moisturizing lip care with shea butter', 'Cosmetics & Beauty', 8.50, 50, 'cosmetics_09.jpg'),
('Beauty Blender Makeup Sponge', 'Original makeup sponge for flawless blending', 'Cosmetics & Beauty', 45.00, 10, 'cosmetics_10.jpg');

-- 10 PERSONAL CARE
INSERT INTO Products (Name, Description, Category, Price, Stock, ImageFileName) VALUES
('Head & Shoulders Anti-Dandruff 400ml', 'Cool Menthol shampoo for clean and refreshed scalp', 'Personal Care', 18.50, 3, 'personalcare_01.jpg'),
('Colgate Total Toothpaste 150g', '12-hour antibacterial protection toothpaste', 'Personal Care', 9.90, 45, 'personalcare_02.jpg'),
('Dove Deeply Nourishing Body Wash', 'Nutrium moisture body wash for soft skin', 'Personal Care', 14.50, 30, 'personalcare_03.jpg'),
('Listerine Cool Mint Mouthwash', 'Antiseptic mouthwash for fresh breath', 'Personal Care', 16.90, 25, 'personalcare_04.jpg'),
('Gillette Mach3 Razor', '3-blade razor with lubrication strip', 'Personal Care', 22.00, 18, 'personalcare_05.jpg'),
('Nivea Men Deodorant Roll-On', '48-hour protection anti-perspirant deodorant', 'Personal Care', 11.90, 35, 'personalcare_06.jpg'),
('Pantene Hair Fall Control', 'Shampoo for stronger hair with pro-vitamin', 'Personal Care', 15.50, 20, 'personalcare_07.jpg'),
('Safi Shower Cream 1L', 'Halal shower cream with natural extracts', 'Personal Care', 12.90, 28, 'personalcare_08.jpg'),
('Oral-B Pro 500 Electric Toothbrush', '3D cleaning action electric toothbrush', 'Personal Care', 89.00, 8, 'personalcare_09.jpg'),
('Whisper Ultra Thin Pads 16s', 'Super absorbent thin sanitary pads', 'Personal Care', 8.90, 40, 'personalcare_10.jpg');

-- 5 HEALTH & WELLNESS
INSERT INTO Products (Name, Description, Category, Price, Stock, ImageFileName) VALUES
('Ester-C Vitamin C 500mg', '50 Tablets for immune system booster support', 'Health & Wellness', 55.00, 40, 'health_01.jpg'),
('Blackmores Fish Oil 1000mg', 'Omega-3 supplement for heart and brain health', 'Health & Wellness', 48.00, 22, 'health_02.jpg'),
('Panadol ActiFast 20s', 'Fast pain relief paracetamol tablets', 'Health & Wellness', 12.50, 60, 'health_03.jpg'),
('Yakult Probiotic Drink 5-pack', 'Lactobacillus casei probiotic drink', 'Health & Wellness', 6.50, 50, 'health_04.jpg'),
('Ensure Gold Vanilla 850g', 'Complete balanced nutrition powder for adults', 'Health & Wellness', 78.00, 15, 'health_05.jpg');