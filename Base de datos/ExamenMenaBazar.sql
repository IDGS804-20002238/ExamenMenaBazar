Create database ExamenMenaBazar;

Use ExamenMenaBazar;

CREATE TABLE Productos (
    producto_id INT PRIMARY KEY,
    titulo NVARCHAR(255),
    descripcion_producto NVARCHAR(MAX),
    precio DECIMAL(10, 2),
    descuento DECIMAL(5, 2),
    calificacion DECIMAL(3, 2),
    stock INT,
    brand NVARCHAR(100),
    categoria NVARCHAR(100),
    thumbnail NVARCHAR(255)
);

CREATE TABLE imagenes (
    imagen_id INT IDENTITY PRIMARY KEY,
    producto_id INT,
    imagen_url NVARCHAR(255),
    FOREIGN KEY (producto_id) REFERENCES Productos(producto_id)
);

CREATE TABLE ventas (
	venta_id INT IDENTITY PRIMARY KEY,
	titulo_ventas NVARCHAR(255),
	precio_venta DECIMAL(10, 2)
);

INSERT INTO Productos (producto_id, titulo, descripcion_producto, precio, descuento, calificacion, stock, brand, categoria, thumbnail) VALUES
(1, 'Essence Mascara Lash Princess', 'The Essence Mascara Lash Princess is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.', 9.99, 7.17, 4.94, 5, 'Essence', 'beauty', 'https://cdn.dummyjson.com/products/images/beauty/Essence%20Mascara%20Lash%20Princess/thumbnail.png'),
(2, 'Eyeshadow Palette with Mirror', 'The Eyeshadow Palette with Mirror offers a versatile range of eyeshadow shades for creating stunning eye looks. With a built-in mirror, it''s convenient for on-the-go makeup application.', 19.99, 5.5, 3.28, 44, 'Glamour Beauty', 'beauty', 'https://cdn.dummyjson.com/products/images/beauty/Eyeshadow%20Palette%20with%20Mirror/thumbnail.png'),
(3, 'Powder Canister', 'The Powder Canister is a finely milled setting powder designed to set makeup and control shine. With a lightweight and translucent formula, it provides a smooth and matte finish.', 14.99, 18.14, 3.82, 59, 'Velvet Touch', 'beauty', 'https://cdn.dummyjson.com/products/images/beauty/Powder%20Canister/thumbnail.png'),
(4, 'Red Lipstick', 'The Red Lipstick is a classic and bold choice for adding a pop of color to your lips. With a creamy and pigmented formula, it provides a vibrant and long-lasting finish.', 12.99, 19.03, 2.51, 68, 'Chic Cosmetics', 'beauty', 'https://cdn.dummyjson.com/products/images/beauty/Red%20Lipstick/thumbnail.png'),
(5, 'Red Nail Polish', 'The Red Nail Polish offers a rich and glossy red hue for vibrant and polished nails. With a quick-drying formula, it provides a salon-quality finish at home.', 8.99, 2.46, 3.91, 71, 'Nail Couture', 'beauty', 'https://cdn.dummyjson.com/products/images/beauty/Red%20Nail%20Polish/thumbnail.png'),
(6, 'Calvin Klein CK One', 'CK One by Calvin Klein is a classic unisex fragrance, known for its fresh and clean scent. It''s a versatile fragrance suitable for everyday wear.', 49.99, 0.32, 4.85, 17, 'Calvin Klein', 'fragrances', 'https://cdn.dummyjson.com/products/images/fragrances/Calvin%20Klein%20CK%20One/thumbnail.png'),
(7, 'Chanel Coco Noir Eau De', 'Coco Noir by Chanel is an elegant and mysterious fragrance, featuring notes of grapefruit, rose, and sandalwood. Perfect for evening occasions.', 129.99, 18.64, 2.76, 41, 'Chanel', 'fragrances', 'https://cdn.dummyjson.com/products/images/fragrances/Chanel%20Coco%20Noir%20Eau%20De/thumbnail.png'),
(8, 'Dior J''adore', 'J''adore by Dior is a luxurious and floral fragrance, known for its blend of ylang-ylang, rose, and jasmine. It embodies femininity and sophistication.', 89.99, 17.44, 3.31, 91, 'Dior', 'fragrances', 'https://cdn.dummyjson.com/products/images/fragrances/Dior%20J''adore/thumbnail.png'),
(9, 'Dolce Shine Eau de', 'Dolce Shine by Dolce & Gabbana is a vibrant and fruity fragrance, featuring notes of mango, jasmine, and blonde woods. It''s a joyful and youthful scent.', 69.99, 11.47, 2.68, 3, 'Dolce & Gabbana', 'fragrances', 'https://cdn.dummyjson.com/products/images/fragrances/Dolce%20Shine%20Eau%20de/thumbnail.png'),
(10, 'Gucci Bloom Eau de', 'Gucci Bloom by Gucci is a floral and captivating fragrance, with notes of tuberose, jasmine, and Rangoon creeper. It''s a modern and romantic scent.', 79.99, 8.9, 2.69, 93, 'Gucci', 'fragrances', 'https://cdn.dummyjson.com/products/images/fragrances/Gucci%20Bloom%20Eau%20de/thumbnail.png'),
(11, 'Annibale Colombo Bed', 'The Annibale Colombo Bed is a luxurious and elegant bed frame, crafted with high-quality materials for a comfortable and stylish bedroom.', 1899.99, 0.29, 4.14, 47, 'Annibale Colombo', 'furniture', 'https://cdn.dummyjson.com/products/images/furniture/Annibale%20Colombo%20Bed/thumbnail.png'),
(12, 'Annibale Colombo Sofa', 'The Annibale Colombo Sofa is a sophisticated and comfortable seating option, featuring exquisite design and premium upholstery for your living room.', 2499.99, 18.54, 3.08, 16, 'Annibale Colombo', 'furniture', 'https://cdn.dummyjson.com/products/images/furniture/Annibale%20Colombo%20Sofa/thumbnail.png'),
(13, 'Bedside Table African Cherry', 'The Bedside Table in African Cherry is a stylish and functional addition to your bedroom, providing convenient storage space and a touch of elegance.', 299.99, 9.58, 4.48, 16, 'Furniture Co.', 'furniture', 'https://cdn.dummyjson.com/products/images/furniture/Bedside%20Table%20African%20Cherry/thumbnail.png'),
(14, 'Knoll Saarinen Executive Conference Chair', 'The Knoll Saarinen Executive Conference Chair is a modern and ergonomic chair, perfect for your office or conference room with its timeless design.', 499.99, 15.23, 4.11, 47, 'Knoll', 'furniture', 'https://cdn.dummyjson.com/products/images/furniture/Knoll%20Saarinen%20Executive%20Conference%20Chair/thumbnail.png'),
(15, 'Wooden Bathroom Sink With Mirror', 'The Wooden Bathroom Sink with Mirror is a unique and stylish addition to your bathroom, featuring a wooden sink countertop and a matching mirror.', 799.99, 11.22, 3.26, 95, 'Bath Trends', 'furniture', 'https://cdn.dummyjson.com/products/images/furniture/Wooden%20Bathroom%20Sink%20With%20Mirror/thumbnail.png'),
(16, 'Apple', 'Fresh and crisp apples, perfect for snacking or incorporating into various recipes.', 1.99, 1.97, 2.96, 9, 'Fresh Farms', 'groceries', 'https://cdn.dummyjson.com/products/images/groceries/Apple/thumbnail.png'),
(17, 'Beef Steak', 'High-quality beef steak, great for grilling or cooking to your preferred level of doneness.', 12.99, 17.99, 2.83, 96, 'Meat Masters', 'groceries', 'https://cdn.dummyjson.com/products/images/groceries/Beef%20Steak/thumbnail.png'),
(18, 'Cat Food', 'Nutritious cat food formulated to meet the dietary needs of your feline friend.', 8.99, 9.57, 2.88, 13, 'Pet Pal', 'groceries', 'https://cdn.dummyjson.com/products/images/groceries/Cat%20Food/thumbnail.png'),
(19, 'Chicken Meat', 'Fresh and tender chicken meat, suitable for various culinary preparations.', 9.99, 10.46, 4.61, 69, 'Meat Masters', 'groceries', 'https://cdn.dummyjson.com/products/images/groceries/Chicken%20Meat/thumbnail.png'),
(20, 'Cooking Oil', 'Versatile cooking oil suitable for frying, sautéing, and various culinary applications.', 4.99, 18.89, 4.01, 22, 'Kitchen Essentials', 'groceries', 'https://cdn.dummyjson.com/products/images/groceries/Cooking%20Oil/thumbnail.png'),
(21, 'Cucumber', 'Crisp and hydrating cucumbers, ideal for salads, snacks, or as a refreshing side.', 1.49, 11.44, 4.71, 22, 'Fresh Farms', 'groceries', 'https://cdn.dummyjson.com/products/images/groceries/Cucumber/thumbnail.png'),
(22, 'Dog Food', 'Specially formulated dog food designed to provide essential nutrients for your canine companion.', 10.99, 18.15, 2.74, 40, 'Pet Pal', 'groceries', 'https://cdn.dummyjson.com/products/images/groceries/Dog%20Food/thumbnail.png'),
(23, 'Eggs', 'Fresh eggs, a versatile ingredient for baking, cooking, or breakfast.', 2.99, 5.8, 4.46, 10, 'Farm Fresh', 'groceries', 'https://cdn.dummyjson.com/products/images/groceries/Eggs/thumbnail.png'),
(24, 'Fish Steak', 'Quality fish steak, suitable for grilling, baking, or pan-searing.', 14.99, 7, 4.83, 99, 'Sea Harvest', 'groceries', 'https://cdn.dummyjson.com/products/images/groceries/Fish%20Steak/thumbnail.png'),
(25, 'Green Bell Pepper', 'Fresh and vibrant green bell pepper, perfect for adding color and flavor to your dishes.', 1.29, 15.5, 4.28, 89, 'Fresh Farms', 'groceries', 'https://cdn.dummyjson.com/products/images/groceries/Green%20Bell%20Pepper/thumbnail.png'),
(26, 'Green Chili Pepper', 'Spicy green chili pepper, ideal for adding heat to your favorite recipes.', 0.99, 18.51, 4.43, 8, 'Fresh Farms', 'groceries', 'https://cdn.dummyjson.com/products/images/groceries/Green%20Chili%20Pepper/thumbnail.png'),
(27, 'Honey Jar', 'Pure and natural honey in a convenient jar, perfect for sweetening beverages or drizzling over food.', 6.99, 1.91, 3.5, 25, 'Sweet Harvest', 'groceries', 'https://cdn.dummyjson.com/products/images/groceries/Honey%20Jar/thumbnail.png'),
(28, 'Ice Cream', 'Creamy and delicious ice cream, available in various flavors for a delightful treat.', 5.49, 7.58, 3.77, 76, 'Sweet Treats', 'groceries', 'https://cdn.dummyjson.com/products/images/groceries/Ice%20Cream/thumbnail.png'),
(29, 'Juice', 'Refreshing fruit juice, packed with vitamins and great for staying hydrated.', 3.99, 5.45, 3.41, 99, 'Pure Press', 'groceries', 'https://cdn.dummyjson.com/products/images/groceries/Juice/thumbnail.png'),
(30, 'Kiwi', 'Nutrient-rich kiwi, perfect for snacking or adding a tropical twist to your dishes.', 2.49, 10.32, 4.37, 1, 'Tropical Harvest', 'groceries', 'https://cdn.dummyjson.com/products/images/groceries/Kiwi/thumbnail.png');


INSERT INTO imagenes (producto_id, imagen_url) VALUES
(1, 'https://cdn.dummyjson.com/products/images/beauty/Essence%20Mascara%20Lash%20Princess/1.png'),
(2, 'https://cdn.dummyjson.com/products/images/beauty/Eyeshadow%20Palette%20with%20Mirror/1.png'),
(3, 'https://cdn.dummyjson.com/products/images/beauty/Powder%20Canister/1.png'),
(4, 'https://cdn.dummyjson.com/products/images/beauty/Red%20Lipstick/1.png'),
(5, 'https://cdn.dummyjson.com/products/images/beauty/Red%20Nail%20Polish/1.png'),
(6, 'https://cdn.dummyjson.com/products/images/fragrances/Calvin%20Klein%20CK%20One/1.png'),
(6, 'https://cdn.dummyjson.com/products/images/fragrances/Calvin%20Klein%20CK%20One/2.png'),
(6, 'https://cdn.dummyjson.com/products/images/fragrances/Calvin%20Klein%20CK%20One/3.png'),
(7, 'https://cdn.dummyjson.com/products/images/fragrances/Chanel%20Coco%20Noir%20Eau%20De/1.png'),
(7, 'https://cdn.dummyjson.com/products/images/fragrances/Chanel%20Coco%20Noir%20Eau%20De/2.png'),
(7, 'https://cdn.dummyjson.com/products/images/fragrances/Chanel%20Coco%20Noir%20Eau%20De/3.png'),
(8, 'https://cdn.dummyjson.com/products/images/fragrances/Dior%20Jadore/1.png'),
(8, 'https://cdn.dummyjson.com/products/images/fragrances/Dior%20Jadore/2.png'),
(8, 'https://cdn.dummyjson.com/products/images/fragrances/Dior%20Jadore/3.png'),
(9, 'https://cdn.dummyjson.com/products/images/fragrances/Dolce%20Shine%20Eau%20de/1.png'),
(9, 'https://cdn.dummyjson.com/products/images/fragrances/Dolce%20Shine%20Eau%20de/2.png'),
(9, 'https://cdn.dummyjson.com/products/images/fragrances/Dolce%20Shine%20Eau%20de/3.png'),
(10, 'https://cdn.dummyjson.com/products/images/fragrances/Gucci%20Bloom%20Eau%20de/1.png'),
(10, 'https://cdn.dummyjson.com/products/images/fragrances/Gucci%20Bloom%20Eau%20de/2.png'),
(10, 'https://cdn.dummyjson.com/products/images/fragrances/Gucci%20Bloom%20Eau%20de/3.png'),
(11, 'https://cdn.dummyjson.com/products/images/furniture/Annibale%20Colombo%20Bed/1.png'),
(11, 'https://cdn.dummyjson.com/products/images/furniture/Annibale%20Colombo%20Bed/2.png'),
(11, 'https://cdn.dummyjson.com/products/images/furniture/Annibale%20Colombo%20Bed/3.png'),
(12, 'https://cdn.dummyjson.com/products/images/furniture/Annibale%20Colombo%20Sofa/1.png'),
(12, 'https://cdn.dummyjson.com/products/images/furniture/Annibale%20Colombo%20Sofa/2.png'),
(12, 'https://cdn.dummyjson.com/products/images/furniture/Annibale%20Colombo%20Sofa/3.png'),
(13, 'https://cdn.dummyjson.com/products/images/furniture/Bedside%20Table%20African%20Cherry/1.png'),
(13, 'https://cdn.dummyjson.com/products/images/furniture/Bedside%20Table%20African%20Cherry/2.png'),
(13, 'https://cdn.dummyjson.com/products/images/furniture/Bedside%20Table%20African%20Cherry/3.png'),
(14, 'https://cdn.dummyjson.com/products/images/furniture/Knoll%20Saarinen%20Executive%20Conference%20Chair/1.png'),
(14, 'https://cdn.dummyjson.com/products/images/furniture/Knoll%20Saarinen%20Executive%20Conference%20Chair/2.png'),
(14, 'https://cdn.dummyjson.com/products/images/furniture/Knoll%20Saarinen%20Executive%20Conference%20Chair/3.png'),
(15, 'https://cdn.dummyjson.com/products/images/furniture/Wooden%20Bathroom%20Sink%20With%20Mirror/1.png'),
(15, 'https://cdn.dummyjson.com/products/images/furniture/Wooden%20Bathroom%20Sink%20With%20Mirror/2.png'),
(15, 'https://cdn.dummyjson.com/products/images/furniture/Wooden%20Bathroom%20Sink%20With%20Mirror/3.png'),
(16, 'https://cdn.dummyjson.com/products/images/groceries/Apple/1.png'),
(17, 'https://cdn.dummyjson.com/products/images/groceries/Beef%20Steak/1.png'),
(18, 'https://cdn.dummyjson.com/products/images/groceries/Cat%20Food/1.png'),
(19, 'https://cdn.dummyjson.com/products/images/groceries/Chicken%20Meat/1.png'),
(19, 'https://cdn.dummyjson.com/products/images/groceries/Chicken%20Meat/2.png'),
(20, 'https://cdn.dummyjson.com/products/images/groceries/Cooking%20Oil/1.png'),
(21, 'https://cdn.dummyjson.com/products/images/groceries/Cucumber/1.png'),
(22, 'https://cdn.dummyjson.com/products/images/groceries/Dog%20Food/1.png'),
(23, 'https://cdn.dummyjson.com/products/images/groceries/Eggs/1.png'),
(24, 'https://cdn.dummyjson.com/products/images/groceries/Fish%20Steak/1.png'),
(25, 'https://cdn.dummyjson.com/products/images/groceries/Green%20Bell%20Pepper/1.png'),
(26, 'https://cdn.dummyjson.com/products/images/groceries/Green%20Chili%20Pepper/1.png'),
(27, 'https://cdn.dummyjson.com/products/images/groceries/Honey%20Jar/1.png'),
(28, 'https://cdn.dummyjson.com/products/images/groceries/Ice%20Cream/1.png'),
(28, 'https://cdn.dummyjson.com/products/images/groceries/Ice%20Cream/2.png'),
(28, 'https://cdn.dummyjson.com/products/images/groceries/Ice%20Cream/3.png'),
(28, 'https://cdn.dummyjson.com/products/images/groceries/Ice%20Cream/4.png'),
(29, 'https://cdn.dummyjson.com/products/images/groceries/Juice/1.png'),
(30, 'https://cdn.dummyjson.com/products/images/groceries/Kiwi/1.png');


