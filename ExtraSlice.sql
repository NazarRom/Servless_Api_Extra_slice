CREATE TABLE categorias (
    id INT AUTO_INCREMENT NOT NULL,
    nombre_categoria VARCHAR(50) NOT NULL,
    imagen LONGTEXT NULL,
    PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE clientes (
    id INT NOT NULL,
    nombre_cliente VARCHAR(50) NOT NULL,
    direccion VARCHAR(200) NOT NULL,
    telefono VARCHAR(50) NOT NULL,
    email VARCHAR(50) NULL,
    passcifrado LONGBLOB NULL,
    pass VARCHAR(50) NOT NULL,
    salt VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE pedidos (
    id INT NOT NULL,
    fecha_hora DATETIME NOT NULL,
    id_cliente INT NULL,
    PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE productos (
    id INT AUTO_INCREMENT NOT NULL,
    nombre_producto VARCHAR(255) NOT NULL,
    descripcion VARCHAR(255) NULL,
    precio DECIMAL(10, 2) NOT NULL,
    id_restaurante INT NULL,
    PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE productos_pedidos (
    id_pedido INT NOT NULL,
    id_producto INT NOT NULL,
    cantidad INT NOT NULL,
    PRIMARY KEY (id_pedido, id_producto)
) ENGINE=InnoDB;

CREATE TABLE restaurantes (
    id INT AUTO_INCREMENT NOT NULL,
    nombre_restaurante VARCHAR(255) NOT NULL,
    direccion VARCHAR(50) NOT NULL,
    telefono INT NOT NULL,
    id_categoria INT NULL,
    imagen VARCHAR(100) NULL,
    PRIMARY KEY (id)
) ENGINE=InnoDB;

INSERT INTO categorias (id, nombre_categoria, imagen) VALUES (1, 'Sushi', 'sushi.png');
INSERT INTO categorias (id, nombre_categoria, imagen) VALUES (2, 'Pizza', 'porcion-de-pizza.png');
INSERT INTO categorias (id, nombre_categoria, imagen) VALUES (3, 'Mexicana', 'taco.png');
INSERT INTO categorias (id, nombre_categoria, imagen) VALUES (4, 'Postres', 'postre.png');
INSERT INTO categorias (id, nombre_categoria, imagen) VALUES (6, 'Italiana', 'espaguetis.jpg');
INSERT INTO categorias (id, nombre_categoria, imagen) VALUES (8, 'Americana', 'emparedado.png');

INSERT INTO pedidos (id, fecha_hora, id_cliente) VALUES (1, '2014-11-01 00:00:00', 1);
INSERT INTO pedidos (id, fecha_hora, id_cliente) VALUES (2, '2022-01-01 10:00:00', 2);
INSERT INTO pedidos (id, fecha_hora, id_cliente) VALUES (3, '2023-03-24 00:00:00', 1);
INSERT INTO pedidos (id, fecha_hora, id_cliente) VALUES (4, '2023-03-24 00:00:00', 2);
INSERT INTO pedidos (id, fecha_hora, id_cliente) VALUES (5, '2023-03-24 00:00:00', 1);
INSERT INTO pedidos (id, fecha_hora, id_cliente) VALUES (6, '2023-03-24 00:00:00', 1);
INSERT INTO pedidos (id, fecha_hora, id_cliente) VALUES (7, '2023-03-24 00:00:00', 1);
INSERT INTO pedidos (id, fecha_hora, id_cliente) VALUES (8, '2023-03-24 00:00:00', 1);
INSERT INTO pedidos (id, fecha_hora, id_cliente) VALUES (9, '2023-03-24 00:00:00', 1);
INSERT INTO pedidos (id, fecha_hora, id_cliente) VALUES (10, '2023-03-24 00:00:00', 1);
INSERT INTO pedidos (id, fecha_hora, id_cliente) VALUES (11, '2023-03-24 00:00:00', 1);
INSERT INTO pedidos (id, fecha_hora, id_cliente) VALUES (12, '2023-03-24 00:00:00', 1);
INSERT INTO pedidos (id, fecha_hora, id_cliente) VALUES (13, '2023-03-24 00:00:00', 1);
INSERT INTO pedidos (id, fecha_hora, id_cliente) VALUES (14, '2023-03-24 00:00:00', 1);
INSERT INTO pedidos (id, fecha_hora, id_cliente) VALUES (15, '2023-03-24 00:00:00', 1);
INSERT INTO pedidos (id, fecha_hora, id_cliente) VALUES (16, '2023-03-24 00:00:00', 1);
INSERT INTO pedidos (id, fecha_hora, id_cliente) VALUES (17, '2023-03-24 00:00:00', 2);
INSERT INTO pedidos (id, fecha_hora, id_cliente) VALUES (18, '2023-03-24 00:00:00', 2);
INSERT INTO pedidos (id, fecha_hora, id_cliente) VALUES (19, '2023-03-24 00:00:00', 2);
INSERT INTO pedidos (id, fecha_hora, id_cliente) VALUES (20, '2023-03-24 00:00:00', 2);
INSERT INTO pedidos (id, fecha_hora, id_cliente) VALUES (21, '2023-03-24 00:00:00', 2);

INSERT INTO clientes (id, nombre_cliente, direccion, telefono, email, passcifrado, pass, salt)
VALUES (1, 'prueba', 'prueba', 'prueba', 'prueba', X'D46C15962373C2807BFFBEDCF8668A469093C841E886E00ED45CBF831759177694A7FB260C056DF8BEFED4588FC7140CCB094B191F7413333DD1DDD92853E455', 'prueba', 'ðu3¶d¨ëbÂN;Û28Î¶CXïSõOvîJè{^oõÀ?ïð{WS}C÷');

INSERT INTO clientes (id, nombre_cliente, direccion, telefono, email, passcifrado, pass, salt)
VALUES (2, 'Marco', 'C/ Fantasía 12', '644906199', 'noenaz321@gmail.com', X'E83C381B6FF8D091B9502CB6B4F5D2343E5164066A75FE10F4C40B9ABEAA0FBA00C27E9DF8790C815C82556A508283774C96DEEF7A274A55074EDBE0001D618C', 'banana', 'ßQÇ³á©)xQ>H¤«ËôPÎ<|?#UTZÂÁU(-/.Ãà+(áÃ5');

INSERT INTO clientes (id, nombre_cliente, direccion, telefono, email, passcifrado, pass, salt)
VALUES (3, 'Darius', 'C/ Fantasía 12', 'prueba', 'Darius', X'BC31C17513661A560061AD2D3377D26850ADDCB40A53467FCE685574CC62E8573DF6662DD8BE2E0DD092C1BD922BA05B7FA72909AACD1F952D7BEB8B4EAAEA3F', 'banana', '´B¨¶m]uJ)ÛÂÑ-Ó_gÚ"·EÅ)"É·v¶=©ÀP5');

INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (1, N'Gyozas', N'Empanadillas de pollo y vegetales al vapor o fritas con salsa de anguila.', CAST(9.00 AS Decimal(10, 2)), 1);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (2, N'Wakame', N'Ensalada de algas marinas.', CAST(8.00 AS Decimal(10, 2)), 1);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (3, N'Sushi Burger', N'Base de arroz crujiente, atún marinado, wakame, pasta dinamita, aguacate, salsa teriyaki y sésamo.', CAST(15.50 AS Decimal(10, 2)), 1);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (4, N'Coquitos', N'Rellenos de salmón, cangrejo, aguacate, queso crema y cebollin, con salsa de curry con coco y anguila.', CAST(14.00 AS Decimal(10, 2)), 1);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (5, N'Edamame', N'Sal & chilli Flakes.', CAST(8.00 AS Decimal(10, 2)), 1);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (6, N'Sushi Pizza', N'Base de arroz crujiente, salmón, queso crema, cangrejo, wakame, salsa de anguila y sésamo.', CAST(15.50 AS Decimal(10, 2)), 1);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (7, N'Tartar de salmón', N'Tres de cestas de plátano macho rellenas de salmón con trío de salsas.', CAST(15.00 AS Decimal(10, 2)), 1);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (8, N'Ensalada neptuno', N'Ensalada de cangrejo con wakame, atún, salmón, aguacate, mayo-masago y sésamo.', CAST(15.00 AS Decimal(10, 2)), 1);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (9, N'Yakiniku', N'Mix de brochetas: ternera en salsa de ostras, pollo teriyaki, gamba real con sal en escamas y atún en salsa ponzu.', CAST(28.00 AS Decimal(10, 2)), 1);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (10, N'Japan Crunch', N'Hojuelas crujientes de gambas, rellenas de ensalada de cangrejo, sésamo y salsa de anguila.', CAST(12.00 AS Decimal(10, 2)), 1);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (11, N'Double crab roll', N'kanikama, surimi al salsa chili mayo, queso, aguacate y pepino. Crab meat stick, surimi with spicy mayonnaise, cream cheese, avocado and cucumber.', CAST(11.90 AS Decimal(10, 2)), 2);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (12, N'Unagi salmón roll', N'anguila, salmón flambeado and espárragos. Japanese eel and salmon flambe, asparagus and unagi sauce.', CAST(13.90 AS Decimal(10, 2)), 2);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (13, N'Tuna Wasabi', N'Atun rojo flambeado, cebollino, queso y wasabi fresco. Tna flambe, green onion, creamcheese and fresh wasabi.', CAST(15.30 AS Decimal(10, 2)), 2);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (14, N'Chef Roll', N'Salmon flambeado, kanikama picado con mayo, tobiko y pepino. Salmon flambe, chopped crab meat stick, cucumber and mayonnaise.', CAST(13.90 AS Decimal(10, 2)), 2);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (15, N'California Roll', N'surimi, pepino, aguacate, mayonesa, tobiko. Crab meat stick, cucumber, avocado, mayonnaise and tobiko.', CAST(9.50 AS Decimal(10, 2)), 2);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (16, N'Philadelphia Roll', N'queso Philadelphia, pepino, salmón, sésamo. Philadelphia cheese, cucumber, salmon and sesame.', CAST(10.40 AS Decimal(10, 2)), 2);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (17, N'Unagi roll', N'anguila , pepino, queso. Japanese eel, cucumber, cream cheese.', CAST(10.90 AS Decimal(10, 2)), 2);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (18, N'Mango roll', N'salmón, mango, queso. Salmon, mango and cream cheese.', CAST(12.00 AS Decimal(10, 2)), 2);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (19, N'Crazy Salmon Roll', N'salmón, aguacate, mayonesa picante, cebolla crujiente, salsa anguila. Salmon flambe, avocado, spicy mayo, crispy onion and eel sauce.', CAST(13.10 AS Decimal(10, 2)), 2);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (20, N'SIBUYA SALAD', N'Verdes, mango, pollo asado, cherry,sésamo, germinados de soja y aderezo de miel y mostaza', CAST(10.10 AS Decimal(10, 2)), 3);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (21, N'ASIAN GARDEN', N'Verdes, salmón ahumado, aguacate,cebolla roja encurtida, cherys, anacardo y aderezo de vinagreta curry-miel', CAST(10.90 AS Decimal(10, 2)), 3);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (22, N'SUNOMONO ', N'Pepino laminado macerado en vinagre;
y sésamo acompañado de dados de salmón y mango', CAST(10.90 AS Decimal(10, 2)), 3);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (23, N'WAKAME SALAD', N'Alga wakama.can sásamo tobiko v asnecias', CAST(11.00 AS Decimal(10, 2)), 3);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (24, N'SALMON AVOCADO', N' Salmón, aguacate y queso crema cubierto de sésamo', CAST(6.00 AS Decimal(10, 2)), 3);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (25, N'ATUN AVOCADO', N'Atún, aguacate y queso crema cubierto de sésamo', CAST(7.00 AS Decimal(10, 2)), 3);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (26, N'Pan Bao', N'Pan Bao al vapor con atún rojo en teriyaki, huevo de codorniz y cebolla morada encurtida', CAST(13.00 AS Decimal(10, 2)), 4);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (27, N'Langostino', N'Langostino tigre en tempura', CAST(14.00 AS Decimal(10, 2)), 4);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (28, N'Temakys', N'Temakys de foie con mango y salsa Tare', CAST(12.50 AS Decimal(10, 2)), 4);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (29, N'Yakitori', N'Yakitori de pollo con cebolleta japonesa', CAST(10.50 AS Decimal(10, 2)), 4);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (30, N'Edamames', N'Edamames salteados con salsa yakiniku', CAST(5.50 AS Decimal(10, 2)), 4);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (31, N'Ensalada mix', N'Ensalada mix de algas con Krill y Vieira', CAST(9.50 AS Decimal(10, 2)), 4);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (32, N'Sopa Miso ', N'Sopa Miso con cut wakame', CAST(4.50 AS Decimal(10, 2)), 4);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (33, N'Edamame', N'Edamame Sr.Ito', CAST(4.50 AS Decimal(10, 2)), 5);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (34, N'Sunomono', N'Sunomono Sr.Ito con algas y mariscos con aliño especial', CAST(12.50 AS Decimal(10, 2)), 5);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (35, N'Tiradito de corvina', N'Tiradito de corvina con salsa nikkei', CAST(16.90 AS Decimal(10, 2)), 5);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (36, N'Yubiki ', N'Yubiki de vieiras flameadas con toque especial ', CAST(12.90 AS Decimal(10, 2)), 5);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (37, N'Tartar', N'Tartar de atún poco picante y huevo roto o no...', CAST(15.50 AS Decimal(10, 2)), 5);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (38, N'Tartar de langostino', N'Tartar de langostino tigre, salsa acevichada y crujientede piel de bacalao', CAST(13.50 AS Decimal(10, 2)), 5);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (39, N'Salmón', N'Sushi de Salmón', CAST(5.00 AS Decimal(10, 2)), 6);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (40, N'Salmón;
flambeado', N'Sushi de Salmón;
flambeado', CAST(6.00 AS Decimal(10, 2)), 6);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (41, N'Atun', N'Sushi de Atun', CAST(6.00 AS Decimal(10, 2)), 6);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (42, N'Atunflambeado', N'Sushi de Atun;
flambeado', CAST(8.00 AS Decimal(10, 2)), 6);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (43, N'Pez mantequilla', N'Sushi de Pez mantequilla', CAST(9.00 AS Decimal(10, 2)), 6);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (44, N'Pez mantequilla;
flambeado con trufa', N'Sushi de Pez mantequilla;
flambeado con trufa', CAST(10.00 AS Decimal(10, 2)), 6);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (45, N'Edamame', N'Edamame Spicy', CAST(9.00 AS Decimal(10, 2)), 7);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (46, N'Brochetas', N'Brochetas de Zamburiñas', CAST(7.00 AS Decimal(10, 2)), 7);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (47, N'Gyozas', N'Gyozas de Verduras al Curry', CAST(6.00 AS Decimal(10, 2)), 7);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (48, N'Gyozas', N'Gyozas de Carrillera de Cerdo Ibérico', CAST(5.00 AS Decimal(10, 2)), 7);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (49, N'Gyozas', N'Gyozas de Rabo de Buey de Wagyu', CAST(8.00 AS Decimal(10, 2)), 7);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (50, N'Surtido', N'Surtido de Gyozas', CAST(5.00 AS Decimal(10, 2)), 7);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (51, N'Sushi variado', N'7 Niguiris variados y3 makis de atún', CAST(18.90 AS Decimal(10, 2)), 8);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (52, N'Shakedon/Tekkadon', N'Salmón en tazón 15,30/Atún en tazón', CAST(15.90 AS Decimal(10, 2)), 8);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (53, N'Shake-Magurodon', N'Salmón y atún en tazón', CAST(12.90 AS Decimal(10, 2)), 8);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (54, N'Shake maki / Tekka maki', N'12 Rollitos de salmón 3,95/Atún', CAST(20.90 AS Decimal(10, 2)), 8);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (55, N'Rollitos', N'Rollitos vegetales', CAST(2.90 AS Decimal(10, 2)), 8);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (56, N'Tataki', N'Tataki De Atún', CAST(29.00 AS Decimal(10, 2)), 9);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (57, N'Sopa Clara ', N'Sopa Clara Dobin Mushi De Pollo, Marisco & Verduras', CAST(10.00 AS Decimal(10, 2)), 9);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (58, N'Ensalada', N'Estilo Japonés', CAST(13.00 AS Decimal(10, 2)), 9);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (59, N'Mushimono', N'Marisco Con Fideos De Té Verde & Salsa Gin-An De Yuzu', CAST(17.00 AS Decimal(10, 2)), 9);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (60, N'Tempura', N'Ebi', CAST(23.00 AS Decimal(10, 2)), 9);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (61, N'Futomaki House Roll', N'6 piezas (atún toro, vieira, shiso, pepino)', CAST(16.50 AS Decimal(10, 2)), 10);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (62, N'NABE (Hotpot japonés)', N'2 personas', CAST(23.50 AS Decimal(10, 2)), 10);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (63, N'Wafu Yoka', N'Base de caldo hecho con bonito seco y alga Kombu', CAST(14.50 AS Decimal(10, 2)), 10);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (64, N'Tonkotsu Kimchi Ramen', N'Caldo de cerdo cocido a fuego lento, encima Kimchi casero', CAST(15.90 AS Decimal(10, 2)), 10);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (65, N'Tonkotsu Shio', N'Caldo de cerdo cocido a fuego lento 12H', CAST(14.90 AS Decimal(10, 2)), 10);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (66, N'PARMIGIANA DI MELANZANE', N'Lasaña de berenjena, tomate San Marzano ecológico con albahaca, mozzarella di Búfala DOP y queso parmesano Grana Padano. Acompañamos con nuestra focaccina artesana.', CAST(14.90 AS Decimal(10, 2)), 11);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (67, N'PROVOLONE CLASSICO', N'Queso provolone italiano, tomate San Marzano ecológico con albahaca y orégano. Acompañamos con nuestra focaccina artesana.', CAST(12.90 AS Decimal(10, 2)), 11);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (68, N'PROVOLONE TARTUFATO', N'Queso provolone italiano sobre nuestra salsa cremosa de trufa y crema de trufa negra. Acompañamos con nuestra focaccina artesana.', CAST(10.90 AS Decimal(10, 2)), 11);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (69, N'MARGHERITA ', N'Con base de tomate San Marzano ecológico, mozzarella di búfala, tomatitos cherrys y albahaca.', CAST(10.90 AS Decimal(10, 2)), 11);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (70, N'BARBACUE ITALIANA', N'Con nuestra salsa de barbacoa italiana, mozzarella, pollo braseado y pancetta.', CAST(14.90 AS Decimal(10, 2)), 11);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (71, N'Pizza Margarita', N'Pizza con salsa de tomate, queso mozzarella y albahaca', CAST(12.99 AS Decimal(10, 2)), 12);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (72, N'Pizza de pepperoni', N'Pizza con salsa de tomate, queso mozzarella y pepperoni', CAST(14.50 AS Decimal(10, 2)), 12);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (73, N'Pizza Hawaiana', N'Pizza con salsa de tomate, queso mozzarella, jamón y piña', CAST(13.99 AS Decimal(10, 2)), 12);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (74, N'Pizza vegetariana', N'Pizza con salsa de tomate, queso mozzarella, champiñones, pimientos, cebolla y aceitunas', CAST(12.50 AS Decimal(10, 2)), 12);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (75, N'Pizza cuatro quesos', N'Pizza con salsa de tomate, queso mozzarella, gorgonzola, queso de cabra y parmesano', CAST(15.50 AS Decimal(10, 2)), 12);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (76, N'Pizza de salami', N'Pizza con salsa de tomate, queso mozzarella y salami', CAST(13.50 AS Decimal(10, 2)), 12);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (77, N'Pizza de jamón', N'Pizza con salsa de tomate, queso mozzarella y jamón', CAST(12.99 AS Decimal(10, 2)), 13);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (78, N'Pizza BBQ', N'Pizza con salsa BBQ, queso mozzarella, pollo a la parrilla y cebolla', CAST(14.99 AS Decimal(10, 2)), 13);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (79, N'Pizza de atún', N'Pizza con salsa de tomate, queso mozzarella, atún y cebolla', CAST(13.50 AS Decimal(10, 2)), 13);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (80, N'Pizza de chorizo', N'Pizza con salsa de tomate, queso mozzarella, chorizo, cebolla y pimientos', CAST(14.50 AS Decimal(10, 2)), 13);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (81, N'Pizza cuatro quesos', N'Pizza con salsa de tomate, queso mozzarella, gorgonzola, queso de cabra y parmesano', CAST(15.50 AS Decimal(10, 2)), 13);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (82, N'Pizza cuatro quesos', N'Pizza con salsa de tomate, queso mozzarella, gorgonzola, queso de cabra y parmesano', CAST(15.50 AS Decimal(10, 2)), 14);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (83, N'Pizza Margarita doble', N'Pizza con doble porción de salsa de tomate, doble porción de queso mozzarella y albahaca', CAST(15.50 AS Decimal(10, 2)), 14);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (84, N'Pizza de pollo', N'Pizza con salsa de tomate, queso mozzarella, pollo a la parrilla, champiñones y pimientos', CAST(13.50 AS Decimal(10, 2)), 14);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (85, N'Pizza de verduras', N'Pizza con salsa de tomate, queso mozzarella, berenjenas, calabacín, cebolla y pimientos asados', CAST(13.50 AS Decimal(10, 2)), 14);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (86, N'Pizza de la casa', N'Pizza con salsa de tomate, queso mozzarella, pepperoni, salami, jamón, champiñones y aceitunas', CAST(17.50 AS Decimal(10, 2)), 14);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (87, N'Pizza de gambas', N'Pizza con salsa de tomate, queso mozzarella, gambas, cebolla y pimientos asados', CAST(16.50 AS Decimal(10, 2)), 15);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (88, N'Pizza de tres quesos', N'Pizza con salsa de tomate, queso mozzarella, queso cheddar y queso parmesano', CAST(14.50 AS Decimal(10, 2)), 15);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (89, N'Pizza de espinacas', N'Pizza con salsa blanca, queso mozzarella, espinacas, champiñones, cebolla y queso feta', CAST(15.99 AS Decimal(10, 2)), 15);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (90, N'Pizza de carne', N'Pizza con salsa de tomate, queso mozzarella, carne de ternera, pimientos, cebolla y jalapeños', CAST(16.99 AS Decimal(10, 2)), 15);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (91, N'Pizza barbacoa', N'Pizza con salsa barbacoa, queso mozzarella, pollo a la parrilla, bacon, cebolla y pimientos asados', CAST(18.50 AS Decimal(10, 2)), 15);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (92, N'Pizza de champiñones', N'Pizza con salsa de tomate, queso mozzarella, champiñones, cebolla y aceitunas', CAST(13.50 AS Decimal(10, 2)), 15);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (93, N'Pizza de pepperoni y bacon', N'Pizza con salsa de tomate, queso mozzarella, pepperoni, bacon y cebolla', CAST(16.50 AS Decimal(10, 2)), 16);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (94, N'Pizza de camarones', N'Pizza con salsa blanca, queso mozzarella, camarones, ajo y perejil', CAST(17.99 AS Decimal(10, 2)), 16);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (95, N'Pizza de jamón y champiñones', N'Pizza con salsa de tomate, queso mozzarella, jamón y champiñones', CAST(15.50 AS Decimal(10, 2)), 16);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (96, N'Pizza de salmón', N'Pizza con salsa blanca, queso mozzarella, salmón ahumado, rúcula y aceite de oliva', CAST(18.99 AS Decimal(10, 2)), 16);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (97, N'Pizza de pollo y bacon', N'Pizza con salsa de tomate, queso mozzarella, pollo a la parrilla, bacon y champiñones', CAST(16.50 AS Decimal(10, 2)), 16);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (98, N'Pizza de pimiento', N'Pizza con salsa de tomate, queso mozzarella, pimiento rojo, pimiento verde y cebolla', CAST(14.99 AS Decimal(10, 2)), 17);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (99, N'Pizza de queso de cabra', N'Pizza con salsa blanca, queso mozzarella, queso de cabra, nueces y miel', CAST(17.50 AS Decimal(10, 2)), 17);

INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (100, N'Pizza de barbacoa y cebolla', N'Pizza con salsa barbacoa, queso mozzarella, carne de res desmenuzada, cebolla y pimiento', CAST(18.50 AS Decimal(10, 2)), 17);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (101, N'Pizza de berenjenas y parmesano', N'Pizza con salsa de tomate, queso mozzarella, berenjenas, tomate cherry y queso parmesano', CAST(15.50 AS Decimal(10, 2)), 17);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (102, N'Pizza de pollo y champiñones', N'Pizza con salsa de tomate, queso mozzarella, pollo a la parrilla, champiñones, cebolla y pimientos', CAST(16.99 AS Decimal(10, 2)), 17);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (103, N'Pizza de anchoas', N'Pizza con salsa de tomate, queso mozzarella, anchoas, aceitunas y ajo', CAST(14.50 AS Decimal(10, 2)), 18);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (104, N'Pizza de atún y cebolla', N'Pizza con salsa de tomate, queso mozzarella, atún, cebolla y pimientos asados', CAST(15.99 AS Decimal(10, 2)), 18);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (105, N'Pizza de champiñones y rúcula', N'Pizza con salsa de tomate, queso mozzarella, champiñones, rúcula y parmesano', CAST(16.50 AS Decimal(10, 2)), 18);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (106, N'Pizza de salami y pimiento', N'Pizza con salsa de tomate, queso mozzarella, salami, pimiento rojo y pimiento verde', CAST(14.99 AS Decimal(10, 2)), 18);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (107, N'Pizza de berenjenas y calabacín', N'Pizza con salsa de tomate, queso mozzarella, berenjenas, calabacín', CAST(14.99 AS Decimal(10, 2)), 18);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (108, N'Pizza de prosciutto y rúcula', N'Pizza con salsa blanca, queso mozzarella, prosciutto, rúcula y aceite de oliva', CAST(17.50 AS Decimal(10, 2)), 19);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (109, N'Pizza de salchicha y hongos', N'Pizza con salsa de tomate, queso mozzarella, salchicha, hongos y cebolla', CAST(16.99 AS Decimal(10, 2)), 19);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (110, N'Pizza de cuatro quesos', N'Pizza con salsa blanca, queso mozzarella, gorgonzola, queso de cabra y queso parmesano', CAST(17.50 AS Decimal(10, 2)), 19);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (111, N'Pizza vegetariana', N'Pizza con salsa de tomate, queso mozzarella, champiñones, pimientos, cebolla, aceitunas y tomate fresco', CAST(15.50 AS Decimal(10, 2)), 19);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (112, N'Pizza de pepperoni', N'Pizza con salsa de tomate, queso mozzarella y pepperoni', CAST(14.50 AS Decimal(10, 2)), 19);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (113, N'Pizza de pollo y pesto', N'Pizza con salsa de pesto, queso mozzarella, pollo a la parrilla y tomate cherry', CAST(16.99 AS Decimal(10, 2)), 20);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (114, N'Pizza de tres quesos', N'Pizza con salsa blanca, queso mozzarella, queso de cabra y queso parmesano', CAST(15.50 AS Decimal(10, 2)), 20);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (115, N'Pizza de espinacas y huevo', N'Pizza con salsa de tomate, queso mozzarella, espinacas, huevo y champiñones', CAST(16.50 AS Decimal(10, 2)), 20);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (116, N'Pizza de pepperoni y jalapeños', N'Pizza con salsa de tomate, queso mozzarella, pepperoni y jalapeños', CAST(15.99 AS Decimal(10, 2)), 20);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (117, N'Pizza de hongos y aceitunas', N'Pizza con salsa de tomate, queso mozzarella, hongos, aceitunas y cebolla', CAST(14.99 AS Decimal(10, 2)), 20);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (118, N'Spaghetti alla carbonara', N'Pasta italiana cocida al dente, con una salsa cremosa de huevo, queso parmesano, pancetta y pimienta negra', CAST(18.50 AS Decimal(10, 2)), 39);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (119, N'Lasagna bolognesa', N'Capas de pasta con carne de res molida en salsa boloñesa, queso ricotta y queso parmesano', CAST(21.99 AS Decimal(10, 2)), 39);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (120, N'Risotto ai funghi', N'Arroz italiano cocido en caldo de pollo con hongos y queso parmesano', CAST(19.50 AS Decimal(10, 2)), 39);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (121, N'Pizza Margherita', N'Pizza con salsa de tomate, queso mozzarella y albahaca fresca', CAST(14.99 AS Decimal(10, 2)), 39);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (122, N'Fettuccine Alfredo', N'Pasta italiana con una salsa cremosa de mantequilla y queso parmesano', CAST(17.50 AS Decimal(10, 2)), 39);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (123, N'Spaghetti alla puttanesca', N'Pasta italiana con salsa de tomate, anchoas, aceitunas, ajo, alcaparras y perejil', CAST(18.99 AS Decimal(10, 2)), 40);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (124, N'Pollo Parmigiana', N'Pechuga de pollo empanizada cubierta con salsa de tomate, queso mozzarella y queso parmesano', CAST(22.50 AS Decimal(10, 2)), 40);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (125, N'Cannelloni di carne', N'Tubos de pasta rellenos de carne de res, queso ricotta y queso parmesano', CAST(19.99 AS Decimal(10, 2)), 40);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (126, N'Gnocchi alla sorrentina', N'Gnocchi caseros con salsa de tomate, mozzarella fresca y albahaca fresca', CAST(21.50 AS Decimal(10, 2)), 40);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (127, N'Pizza prosciutto e funghi', N'Pizza con salsa de tomate, queso mozzarella, jamón serrano y hongos', CAST(16.99 AS Decimal(10, 2)), 40);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (128, N'Saltimbocca alla romana', N'Filete de ternera con prosciutto y salvia, acompañado de pasta con mantequilla y salvia', CAST(24.50 AS Decimal(10, 2)), 41);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (129, N'Rigatoni alla vodka', N'Pasta italiana con salsa de tomate, vodka, crema, panceta y queso parmesano', CAST(20.99 AS Decimal(10, 2)), 41);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (130, N'Polenta con salsiccia', N'Polenta italiana con salchicha italiana, salsa de tomate y queso parmesano', CAST(18.50 AS Decimal(10, 2)), 41);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (131, N'Caprese salad', N'Ensalada de tomate, mozzarella fresca y albahaca, aderezada con aceite de oliva y vinagre balsámico', CAST(15.99 AS Decimal(10, 2)), 41);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (132, N'Penne arrabiata', N'Pasta italiana con salsa de tomate, ajo, chile y perejil', CAST(18.99 AS Decimal(10, 2)), 41);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (133, N'Linguine alle vongole', N'Pasta italiana con almejas, ajo, vino blanco y perejil', CAST(22.50 AS Decimal(10, 2)), 42);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (134, N'Pizza quattro stagioni', N'Pizza con cuatro secciones diferentes, cada una con un conjunto diferente de ingredientes', CAST(17.99 AS Decimal(10, 2)), 42);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (135, N'Vitello tonnato', N'Filete de ternera con una salsa de atún y alcaparras, acompañado de ensalada de lechuga y tomate', CAST(24.99 AS Decimal(10, 2)), 42);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (136, N'Pollo cacciatore', N'Pechuga de pollo cocida en salsa de tomate, cebolla, ajo y vino blanco, servida con pasta', CAST(22.99 AS Decimal(10, 2)), 42);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (137, N'Ravioli di zucca', N'Raviolis rellenos de calabaza asada, queso ricotta y nuez moscada, con una salsa de mantequilla y salvia', CAST(21.50 AS Decimal(10, 2)), 42);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (138, N'Orecchiette con rapini', N'Pasta italiana con brócoli rabe, ajo, aceite de oliva y queso parmesano', CAST(20.50 AS Decimal(10, 2)), 42);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (139, N'Tacos al pastor', N'Tacos con carne de cerdo marinada en chile adobo, asada en trompo y servida con piña, cebolla y cilantro', CAST(12.99 AS Decimal(10, 2)), 21);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (140, N'Enchiladas verdes', N'Tortillas de maíz rellenas de pollo deshebrado, cubiertas con una salsa de chile verde y queso fresco, y acompañadas de frijoles', CAST(14.50 AS Decimal(10, 2)), 21);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (141, N'Pozole', N'Guiso de maíz cacahuazintle con carne de cerdo, servido con lechuga, rábano, cebolla, orégano, chile y limón', CAST(16.99 AS Decimal(10, 2)), 21);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (142, N'Tamales de rajas con queso', N'Tamales de masa de maíz rellenos de chile poblano y queso fresco, envueltos en hojas de maíz y cocidos al vapor', CAST(13.50 AS Decimal(10, 2)), 21);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (143, N'Chiles en nogada', N'Chiles poblanos rellenos de carne de cerdo y frutas, cubiertos con una salsa de nueces, queso y granada', CAST(19.50 AS Decimal(10, 2)), 21);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (144, N'Fajitas de pollo', N'Tiras de pollo marinadas en especias, asadas con cebolla y pimiento, servidas con tortillas de maíz, guacamole y pico de gallo', CAST(17.99 AS Decimal(10, 2)), 22);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (145, N'Sopes', N'Tortillas de maíz fritas y cubiertas con frijoles, carne, lechuga, queso fresco y salsa', CAST(12.50 AS Decimal(10, 2)), 22);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (146, N'Chiles rellenos de queso', N'Chiles poblanos asados, rellenos de queso fresco, capeados y bañados en salsa de jitomate y acompañados de arroz y frijoles', CAST(14.99 AS Decimal(10, 2)), 22);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (147, N'Guacamole', N'Aguacate machacado con cebolla, chile serrano, tomate y cilantro, servido con totopos', CAST(9.99 AS Decimal(10, 2)), 22);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (148, N'Quesadillas', N'Tortillas de maíz rellenas de queso y acompañadas de salsa y guacamole', CAST(10.50 AS Decimal(10, 2)), 22);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (149, N'Tacos al pastor', N'Tortillas de maíz con carne de cerdo marinada en achiote, piña, cebolla y cilantro', CAST(12.50 AS Decimal(10, 2)), 23);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (150, N'Quesadillas de huitlacoche', N'Tortillas de maíz rellenas de huitlacoche y queso, servidas con crema y salsa de chile pasilla', CAST(14.99 AS Decimal(10, 2)), 23);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (151, N'Enchiladas verdes', N'Tortillas de maíz rellenas de pollo deshebrado, bañadas en salsa verde y queso fresco', CAST(16.50 AS Decimal(10, 2)), 23);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (152, N'Pozole', N'Sopa tradicional de maíz con carne de cerdo, chile, cebolla, cilantro, lechuga y rábano', CAST(18.99 AS Decimal(10, 2)), 23);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (153, N'Chiles en nogada', N'Chiles poblanos rellenos de carne de res y frutas, cubiertos con una salsa de nueces y granada', CAST(21.50 AS Decimal(10, 2)), 23);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (154, N'Taco al Pastor', N'Tortilla de maíz, carne de cerdo adobada, cebolla, piña y cilantro', CAST(2.50 AS Decimal(10, 2)), 24);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (155, N'Chiles Rellenos', N'Chiles poblanos rellenos de queso y bañados en salsa de tomate', CAST(9.99 AS Decimal(10, 2)), 24);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (156, N'Tortilla Chips con Guacamole', N'Tortilla chips con guacamole fresco hecho en casa', CAST(4.50 AS Decimal(10, 2)), 24);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (157, N'Enchiladas Verdes', N'Tortillas de maíz rellenas de pollo, bañadas en salsa verde y gratinadas con queso', CAST(8.75 AS Decimal(10, 2)), 24);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (158, N'Quesadillas de Chorizo', N'Tortillas de harina rellenas de chorizo y queso, acompañadas de salsa y guacamole', CAST(6.50 AS Decimal(10, 2)), 24);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (159, N'Burrito de Carne Asada', N'Tortilla de harina, carne asada, arroz, frijoles, guacamole, queso y crema', CAST(10.25 AS Decimal(10, 2)), 25);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (160, N'Pico de Gallo', N'Tomate, cebolla, cilantro y chile picados, sazonados con limón y sal', CAST(3.25 AS Decimal(10, 2)), 25);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (161, N'Tamales de Elote', N'Masa de maíz rellena de elote y salsa roja, cocidos al vapor', CAST(7.50 AS Decimal(10, 2)), 25);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (162, N'Sopa de Tortilla', N'Caldo de pollo con tiras de tortilla frita, aguacate, queso y crema', CAST(5.99 AS Decimal(10, 2)), 25);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (163, N'Flautas de Pollo', N'Tortillas de maíz rellenas de pollo, fritas y servidas con crema y guacamole', CAST(7.25 AS Decimal(10, 2)), 25);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (164, N'Tacos al pastor', N'Tortillas de maíz rellenas de carne de cerdo adobada, cebolla, piña y cilantro', CAST(12.50 AS Decimal(10, 2)), 26);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (165, N'Chiles en nogada', N'Chiles poblanos rellenos de carne molida, frutas y nueces, cubiertos con una salsa de nuez y granada', CAST(22.99 AS Decimal(10, 2)), 26);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (166, N'Mole poblano', N'Pollo en una salsa espesa y picante de chiles, chocolate, especias y frutos secos', CAST(16.75 AS Decimal(10, 2)), 26);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (167, N'Enchiladas verdes', N'Tortillas de maíz rellenas de pollo, bañadas en salsa verde y queso rallado', CAST(11.25 AS Decimal(10, 2)), 26);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (168, N'Quesadillas', N'Tortillas de maíz rellenas de queso y otros ingredientes, como champiñones, flor de calabaza o chicharrón', CAST(9.50 AS Decimal(10, 2)), 26);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (169, N'Quesadillas', N'Tortillas de maíz rellenas de queso y otros ingredientes, como champiñones, flor de calabaza o chicharrón', CAST(9.50 AS Decimal(10, 2)), 27);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (170, N'Pozole', N'Sopa de maíz con carne de cerdo o pollo, servida con lechuga, rábano, cebolla y limón', CAST(14.99 AS Decimal(10, 2)), 27);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (171, N'Tamales', N'Masa de maíz rellena de carne, pollo, frijoles, queso o chile, envuelta en hojas de maíz o de plátano', CAST(8.75 AS Decimal(10, 2)), 27);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (172, N'Enchiladas verdes', N'Tortillas de maíz rellenas de pollo, bañadas en salsa verde y queso rallado', CAST(11.25 AS Decimal(10, 2)), 27);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (173, N'Quesadillas', N'Tortillas de maíz rellenas de queso y otros ingredientes, como champiñones, flor de calabaza o chicharrón', CAST(9.50 AS Decimal(10, 2)), 27);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (174, N'Quesadillas', N'Tortillas de maíz rellenas de queso y otros ingredientes, como champiñones, flor de calabaza o chicharrón', CAST(9.50 AS Decimal(10, 2)), 28);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (175, N'Pozole', N'Sopa de maíz con carne de cerdo o pollo, servida con lechuga, rábano, cebolla y limón', CAST(14.99 AS Decimal(10, 2)), 28);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (176, N'Tamales', N'Masa de maíz rellena de carne, pollo, frijoles, queso o chile, envuelta en hojas de maíz o de plátano', CAST(8.75 AS Decimal(10, 2)), 28);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (177, N'Enchiladas verdes', N'Tortillas de maíz rellenas de pollo, bañadas en salsa verde y queso rallado', CAST(11.25 AS Decimal(10, 2)), 28);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (178, N'Quesadillas', N'Tortillas de maíz rellenas de queso y otros ingredientes, como champiñones, flor de calabaza o chicharrón', CAST(9.50 AS Decimal(10, 2)), 28);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (179, N'Taco al Pastor', N'Tortilla de maíz, carne de cerdo adobada, cebolla, piña y cilantro', CAST(2.50 AS Decimal(10, 2)), 29);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (180, N'Chiles Rellenos', N'Chiles poblanos rellenos de queso y bañados en salsa de tomate', CAST(9.99 AS Decimal(10, 2)), 29);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (181, N'Tortilla Chips con Guacamole', N'Tortilla chips con guacamole fresco hecho en casa', CAST(4.50 AS Decimal(10, 2)), 29);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (182, N'Enchiladas Verdes', N'Tortillas de maíz rellenas de pollo, bañadas en salsa verde y gratinadas con queso', CAST(8.75 AS Decimal(10, 2)), 29);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (183, N'Quesadillas de Chorizo', N'Tortillas de harina rellenas de chorizo y queso, acompañadas de salsa y guacamole', CAST(6.50 AS Decimal(10, 2)), 29);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (184, N'UNA DE CALAMARES', N'Rebozadas en Panko, fritos y con alioli de gambas. Jalapeños. Zanahoria escabechada. Encurtidlo de pepino. Limón.', CAST(13.50 AS Decimal(10, 2)), 30);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (185, N'GUACAMOLE CASERO', N'Aguacate Hass, servido con nachos nixtamalizados y pico de gallo.', CAST(9.70 AS Decimal(10, 2)), 30);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (186, N'CEVICHE PERUANO DE CORVINA', N'Con leche de tigre de coco, mango, ají amarillo, lima y jengibre.', CAST(15.80 AS Decimal(10, 2)), 30);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (187, N'AREPA REINA PEPIADA (la más famosa de Venezuela)', N'Pollo del corral, aguacate y mahonesa.', CAST(4.75 AS Decimal(10, 2)), 30);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (188, N'ENSALADA DE BERENJENA AHUMADA', N'Mix de lechugas, berenjena ahumada, quinoa, mousse de aguacate. Vinagreta de tamarindo. AMOR', CAST(9.50 AS Decimal(10, 2)), 30);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (189, N'Tiramisú', N'Pastel de capas de bizcocho empapado en café y licor de amaretto, con una crema de queso mascarpone', CAST(6.99 AS Decimal(10, 2)), 31);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (190, N'Cheesecake de fresa', N'Pastel de queso con una base de galletas y una capa de mermelada de fresa por encima', CAST(8.50 AS Decimal(10, 2)), 31);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (191, N'Crepes de chocolate', N'Crepes rellenos de Nutella y acompañados de fresas y chantilly', CAST(6.50 AS Decimal(10, 2)), 31);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (192, N'Flan de cajeta', N'Postre mexicano hecho con huevos, leche condensada, leche evaporada y cajeta, decorado con nueces.', CAST(4.75 AS Decimal(10, 2)), 31);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (193, N'Brownie de nueces', N'Brownie de chocolate con nueces y servido con helado de vainilla', CAST(7.99 AS Decimal(10, 2)), 31);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (194, N'Helado de vainilla', N'Helado cremoso de vainilla, hecho con leche fresca y vainilla de Madagascar', CAST(4.50 AS Decimal(10, 2)), 32);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (195, N'Pudín de pan', N'Postre inglés hecho con pan, leche, huevos, azúcar y canela, acompañado de salsa de caramelo', CAST(6.99 AS Decimal(10, 2)), 32);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (196, N'Mousse de chocolate', N'Postre francés hecho con chocolate negro, huevos, nata y azúcar, servido con frutas rojas', CAST(7.50 AS Decimal(10, 2)), 32);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (197, N'Pastel de manzana', N'Pastel de manzana casero, hecho con manzanas frescas, canela y una crujiente capa de hojaldre', CAST(8.99 AS Decimal(10, 2)), 32);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (198, N'Crema catalana', N'Postre español hecho con leche, huevos, azúcar y una capa de azúcar quemada en la parte superior', CAST(6.50 AS Decimal(10, 2)), 32);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (199, N'Pastel de zanahoria', N'Pastel de zanahoria casero con crema de queso y nueces picadas', CAST(7.99 AS Decimal(10, 2)), 33);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (200, N'Gelatina de tres leches', N'Gelatina de tres leches con fresas naturales y crema batida', CAST(6.50 AS Decimal(10, 2)), 33);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (201, N'Helado de fresa', N'Helado de fresa hecho con frutas frescas y leche fresca', CAST(4.50 AS Decimal(10, 2)), 33);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (202, N'Arroz con leche', N'Postre tradicional hecho con arroz, leche, canela y azúcar', CAST(6.99 AS Decimal(10, 2)), 33);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (203, N'Tarta de limón', N'Tarta de limón con una base de galletas y una capa de merengue', CAST(8.50 AS Decimal(10, 2)), 33);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (204, N'Mousse de limón', N'Postre francés hecho con limón, huevos, nata y azúcar, servido con frutas rojas', CAST(7.50 AS Decimal(10, 2)), 34);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (205, N'Churros con chocolate', N'Deliciosos churros crujientes servidos con una taza de chocolate caliente', CAST(5.99 AS Decimal(10, 2)), 34);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (206, N'Gelatina de frutas', N'Gelatina de frutas naturales con crema batida y frutas frescas', CAST(4.50 AS Decimal(10, 2)), 34);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (207, N'Tarta de frutas', N'Tarta de frutas frescas de temporada sobre una base de masa quebrada', CAST(8.99 AS Decimal(10, 2)), 34);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (208, N'Arroz con leche', N'Postre tradicional mexicano hecho con arroz, leche, canela y azúcar', CAST(6.50 AS Decimal(10, 2)), 34);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (209, N'Tarta de chocolate', N'Tarta de chocolate oscuro, suave y esponjosa, decorada con fresas', CAST(9.50 AS Decimal(10, 2)), 35);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (210, N'Helado de fresa', N'Helado cremoso de fresas naturales, hecho con leche fresca', CAST(4.50 AS Decimal(10, 2)), 35);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (211, N'Crema de vainilla', N'Crema suave y sedosa de vainilla, hecha con huevos, leche y vainilla', CAST(6.99 AS Decimal(10, 2)), 35);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (212, N'Pastel de zanahoria', N'Pastel de zanahoria hecho con nueces, pasas y una capa de crema de queso por encima', CAST(7.99 AS Decimal(10, 2)), 35);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (213, N'Flan de vainilla', N'Postre mexicano hecho con huevos, leche condensada, leche evaporada y vainilla, decorado con caramelo', CAST(6.50 AS Decimal(10, 2)), 35);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (214, N'Tiramisú', N'Postre italiano hecho con bizcochos mojados en café, mascarpone y cacao en polvo', CAST(8.50 AS Decimal(10, 2)), 36);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (215, N'Crepes de Nutella', N'Crepes suaves rellenos de Nutella y servidos con frutas frescas', CAST(6.99 AS Decimal(10, 2)), 36);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (216, N'Cheesecake de fresa', N'Tarta de queso con una base de galleta y una capa de fresas frescas encima', CAST(7.50 AS Decimal(10, 2)), 36);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (217, N'Galletas de chocolate', N'Galletas de chocolate crujientes y suaves por dentro, servidas con una bola de helado', CAST(5.99 AS Decimal(10, 2)), 36);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (218, N'Tarta de manzana', N'Tarta de manzana casera con una capa crujiente de hojaldre por encima', CAST(7.50 AS Decimal(10, 2)), 36);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (219, N'Cheesecake de fresa', N'Tarta de queso suave y cremosa, con una capa de mermelada de fresa por encima', CAST(8.99 AS Decimal(10, 2)), 37);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (220, N'Flan napolitano', N'Postre mexicano hecho con huevos, leche condensada, leche evaporada y vainilla, con un toque de queso crema', CAST(7.50 AS Decimal(10, 2)), 37);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (221, N'Tiramisú', N'Postre italiano hecho con bizcochos de soletilla empapados en café y crema de mascarpone', CAST(9.50 AS Decimal(10, 2)), 37);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (222, N'Galletas de chocolate', N'Deliciosas galletas de chocolate caseras, hechas con chocolate oscuro y mantequilla', CAST(4.99 AS Decimal(10, 2)), 37);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (223, N'Cupcakes de vainilla', N'Cupcakes de vainilla esponjosos, decorados con una capa de frosting de crema de mantequilla', CAST(5.50 AS Decimal(10, 2)), 37);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (224, N'Crema catalana', N'Postre español hecho con crema pastelera cubierta con una capa de caramelo quemado', CAST(6.99 AS Decimal(10, 2)), 37);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (225, N'Mousse de chocolate', N'Postre francés hecho con chocolate oscuro, huevos y nata montada, servido con fresas frescas', CAST(7.50 AS Decimal(10, 2)), 38);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (226, N'Pastel de manzana', N'Pastel de manzana casero, hecho con manzanas frescas, canela y una capa crujiente por encima', CAST(8.99 AS Decimal(10, 2)), 38);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (227, N'Brownie de nueces', N'Brownie de chocolate oscuro y nueces, servido caliente con una bola de helado de vainilla', CAST(5.99 AS Decimal(10, 2)), 38);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (228, N'Chocoflan', N'Postre mexicano hecho con una capa de flan de vainilla sobre una capa de pastel de chocolate', CAST(8.50 AS Decimal(10, 2)), 38);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (229, N'Tiramisú', N'Postre italiano hecho con bizcochos de soletilla empapados en café y crema de mascarpone', CAST(9.50 AS Decimal(10, 2)), 38);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (230, N'Spaghetti alla carbonara', N'Spaghetti con una salsa de huevo, panceta y queso pecorino romano', CAST(12.99 AS Decimal(10, 2)), 43);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (231, N'Pizza margherita', N'Pizza clásica italiana con salsa de tomate, mozzarella y albahaca', CAST(10.50 AS Decimal(10, 2)), 43);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (232, N'Penne all arrabbiata', N'Penne con una salsa picante de tomate, ajo y guindilla', CAST(11.50 AS Decimal(10, 2)), 43);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (233, N'Lasagne alla bolognese', N'Lasagna con carne de ternera, salsa bechamel y queso parmesano', CAST(14.99 AS Decimal(10, 2)), 43);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (234, N'Osso buco alla milanese', N'Rabo de ternera guisado en vino blanco, servido con risotto alla milanese', CAST(17.50 AS Decimal(10, 2)), 43);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (235, N'Risotto ai funghi porcini', N'Risotto cremoso con setas porcini y queso parmesano', CAST(13.99 AS Decimal(10, 2)), 44);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (236, N'Carpaccio di manzo', N'Finas lonchas de ternera cruda con rúcula, parmesano y aceite de oliva', CAST(15.50 AS Decimal(10, 2)), 44);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (237, N'Bruschetta al pomodoro', N'Rebanadas de pan tostado con tomates frescos, ajo y albahaca', CAST(7.50 AS Decimal(10, 2)), 44);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (238, N'Polenta e gorgonzola', N'Polenta cremosa con queso gorgonzola y nueces', CAST(9.99 AS Decimal(10, 2)), 44);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (239, N'Gnocchi alla sorrentina', N'Gnocchi de patata con una salsa de tomate casera y mozzarella fresca', CAST(12.50 AS Decimal(10, 2)), 44);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (240, N'Fettuccine Alfredo', N'Fettuccine con salsa de queso parmesano y mantequilla', CAST(13.50 AS Decimal(10, 2)), 45);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (241, N'Pizza quattro formaggi', N'Pizza con cuatro tipos de queso: gorgonzola, mozzarella, parmesano y provolone', CAST(11.99 AS Decimal(10, 2)), 45);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (242, N'Saltimbocca alla romana', N'Filetes de ternera con jamón serrano y salvia, servidos con patatas al horno', CAST(16.50 AS Decimal(10, 2)), 45);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (243, N'Insalata caprese', N'Ensalada con tomate, mozzarella fresca y albahaca', CAST(8.99 AS Decimal(10, 2)), 45);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (244, N'Tiramisú', N'Postre de bizcochos empapados en café y crema de mascarpone', CAST(6.99 AS Decimal(10, 2)), 45);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (245, N'Hamburguesa clásica', N'Carne de res a la parrilla, queso cheddar, lechuga, tomate y cebolla', CAST(9.50 AS Decimal(10, 2)), 46);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (246, N'Costillas BBQ', N'Costillas de cerdo marinadas en salsa BBQ y asadas a la parrilla', CAST(15.99 AS Decimal(10, 2)), 46);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (247, N'Pollo frito', N'Muslos de pollo empanados y fritos, servidos con patatas fritas', CAST(12.50 AS Decimal(10, 2)), 46);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (248, N'Perrito caliente', N'Salchicha con mostaza, ketchup y cebolla, servido con patatas fritas', CAST(7.99 AS Decimal(10, 2)), 46);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (249, N'Sándwich de pastrami', N'Pastrami, queso suizo, mostaza y pepinillos en pan de centeno', CAST(11.50 AS Decimal(10, 2)), 46);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (250, N'Hamburguesa con queso', N'Hamburguesa con queso cheddar, lechuga, tomate y cebolla', CAST(9.99 AS Decimal(10, 2)), 47);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (251, N'Costillas a la barbacoa', N'Costillas de cerdo con salsa barbacoa, servidas con patatas fritas', CAST(14.50 AS Decimal(10, 2)), 47);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (252, N'Hot dog', N'Salchicha caliente en un panecillo, con mostaza, ketchup y cebolla', CAST(5.99 AS Decimal(10, 2)), 47);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (253, N'Ensalada césar', N'Lechuga romana con pollo a la parrilla, parmesano y crutones', CAST(11.50 AS Decimal(10, 2)), 47);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (254, N'Pollo frito', N'Pechuga de pollo frita con patatas fritas y ensalada', CAST(12.99 AS Decimal(10, 2)), 47);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (255, N'Sándwich de pastrami', N'Sándwich de pastrami caliente con mostaza y pepinillos', CAST(8.99 AS Decimal(10, 2)), 48);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (256, N'Macarrones con queso', N'Macarrones al horno con una salsa cremosa de queso cheddar', CAST(7.50 AS Decimal(10, 2)), 48);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (257, N'Perrito chili cheese', N'Salchicha caliente con chili con carne y queso cheddar', CAST(6.99 AS Decimal(10, 2)), 48);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (258, N'Alitas de pollo picantes', N'Alitas de pollo fritas y bañadas en una salsa picante', CAST(10.99 AS Decimal(10, 2)), 48);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (259, N'S mores', N'Postre de malvaviscos tostados con chocolate y galletas graham', CAST(5.99 AS Decimal(10, 2)), 48);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (260, N'BUN BAN', N'Hamburguesa al plato (sin pan), acompañada de pepinillo', CAST(10.99 AS Decimal(10, 2)), 49);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (261, N'CHEEZEBRGR', N'Queso cheddar, pepinillo, lechuga, tomate, cebolla roja macerada, y salsa burnout mayo', CAST(12.50 AS Decimal(10, 2)), 49);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (262, N'CHILIBRGR', N'Doble capa de queso americano, chili con carne casero, pepinillo, y nuestra salsa chipotle mayo', CAST(12.99 AS Decimal(10, 2)), 49);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (263, N'HOLY CAMOLY', N'Hamburguesa vegetal BEYOND BURGER®, doble queso cheddar, guacamole casero, cebolla frita y salsa chipotle mayo', CAST(15.99 AS Decimal(10, 2)), 49);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (264, N'VEGAN MEGHAN', N'hamburguesa vegetariana BEYOND BURGER®, queso cheddar, lechuga, tomate, cebolla morada, pepinillo y salsa burnout', CAST(10.99 AS Decimal(10, 2)), 49);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (265, N'Filete con patatas fritas', N'Filete de ternera con patatas fritas y ensalada', CAST(18.50 AS Decimal(10, 2)), 50);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (266, N'Pizza de pepperoni', N'Pizza con salsa de tomate, queso mozzarella y pepperoni', CAST(11.99 AS Decimal(10, 2)), 50);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (267, N'Costillas de cerdo a la miel', N'Costillas de cerdo con salsa de miel y mostaza', CAST(14.99 AS Decimal(10, 2)), 50);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (268, N'Tarta de manzana', N'Tarta de manzana con una corteza crujiente y rellena de manzanas', CAST(7.99 AS Decimal(10, 2)), 50);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (269, N'Pollo a la parrilla', N'Pechuga de pollo a la parrilla con arroz y verduras', CAST(12.50 AS Decimal(10, 2)), 50);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (270, N'Cheese fries', N'Patatas fritas con queso fundido y bacon', CAST(8.50 AS Decimal(10, 2)), 51);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (271, N'Cheese steak', N'Bocadillo de carne de ternera y queso, típico de Filadelfia', CAST(11.99 AS Decimal(10, 2)), 51);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (272, N'Ensalada Cobb', N'Ensalada con pollo a la parrilla, aguacate, bacon, huevo y queso azul', CAST(12.50 AS Decimal(10, 2)), 51);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (273, N'Pollo a la brasa', N'Pollo asado a la parrilla, servido con patatas y ensalada', CAST(14.99 AS Decimal(10, 2)), 51);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (274, N'Burrito de carne', N'Burrito relleno de carne de res, arroz, frijoles y queso', CAST(10.50 AS Decimal(10, 2)), 51);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (275, N'Sopa de maíz', N'Sopa cremosa de maíz con trocitos de tocino', CAST(6.99 AS Decimal(10, 2)), 52);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (276, N'Bistec con patatas fritas', N'Bistec a la parrilla con patatas fritas y ensalada', CAST(17.50 AS Decimal(10, 2)), 52);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (277, N'Tarta de manzana', N'Tarta de manzana casera con helado de vainilla', CAST(7.50 AS Decimal(10, 2)), 52);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (278, N'Barbacoa de cerdo desmenuzado', N'Carne de cerdo cocida a fuego lento con salsa barbacoa, servida con panecillos', CAST(13.99 AS Decimal(10, 2)), 52);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (279, N'Brownie con helado', N'Brownie de chocolate caliente con helado de vainilla', CAST(6.50 AS Decimal(10, 2)), 52);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (280, N'Bistec a la parrilla', N'Bistec de carne de res a la parrilla, servido con papas fritas y ensalada', CAST(16.99 AS Decimal(10, 2)), 53);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (281, N'Sándwich de queso a la parrilla', N'Pan tostado con queso fundido, servido con papas fritas', CAST(7.50 AS Decimal(10, 2)), 53);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (282, N'Ensalada de pollo', N'Ensalada con pollo a la parrilla, lechuga, tomate, huevo y queso', CAST(12.50 AS Decimal(10, 2)), 53);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (283, N'Costillas a la miel', N'Costillas de cerdo con salsa de miel y mostaza, servidas con patatas fritas', CAST(15.99 AS Decimal(10, 2)), 53);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (284, N'Sopa de maíz', N'Sopa cremosa de maíz con panceta y cebolla', CAST(6.99 AS Decimal(10, 2)), 53);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (285, N'Sándwich de pollo frito', N'Sándwich de pollo frito con lechuga, tomate y mayonesa, servido con papas fritas', CAST(8.99 AS Decimal(10, 2)), 54);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (286, N'Nachos con queso', N'Nachos cubiertos de queso cheddar derretido, jalapeños y crema agria', CAST(9.50 AS Decimal(10, 2)), 54);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (287, N'Hamburguesa con bacon', N'Hamburguesa con bacon, queso cheddar, lechuga, tomate y cebolla', CAST(10.99 AS Decimal(10, 2)), 54);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (288, N'Pollo a la parmesana', N'Pechuga de pollo empanada, cubierta con salsa de tomate y queso parmesano', CAST(13.50 AS Decimal(10, 2)), 54);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (289, N'Tarta de manzana', N'Tarta de manzana recién horneada con helado de vainilla', CAST(6.99 AS Decimal(10, 2)), 54);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (290, N'Sándwich de pollo a la parrilla', N'Sándwich con pechuga de pollo a la parrilla, tocino, queso y lechuga', CAST(11.99 AS Decimal(10, 2)), 55);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (291, N'Costillas de ternera', N'Costillas de ternera a la parrilla con salsa BBQ', CAST(16.50 AS Decimal(10, 2)), 55);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (292, N'Huevos benedictinos', N'Panecillos ingleses con jamón, huevos poché y salsa holandesa', CAST(10.99 AS Decimal(10, 2)), 55);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (293, N'Pizza de pepperoni', N'Pizza con salsa de tomate, queso mozzarella y pepperoni', CAST(12.99 AS Decimal(10, 2)), 55);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (294, N'Chili con carne', N'Carne molida con frijoles, tomate, cebolla y especias, servido con tortillas de maíz', CAST(9.50 AS Decimal(10, 2)), 55);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (295, N'Tarta de manzana', N'Tarta de manzana recién horneada con helado de vainilla', CAST(6.99 AS Decimal(10, 2)), 55);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (296, N'Ensalada Cobb', N'Ensalada con lechuga, pollo, tocino, aguacate, tomate, huevo duro y queso azul', CAST(13.99 AS Decimal(10, 2)), 56);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (297, N'Tarta de manzana', N'Tarta de manzana con una capa crujiente de azúcar glas', CAST(6.99 AS Decimal(10, 2)), 56);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (298, N'Pollo al horno', N'Pechuga de pollo al horno con patatas al romero', CAST(14.50 AS Decimal(10, 2)), 56);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (299, N'Nachos con queso', N'Nachos con salsa de queso fundido, jalapeños y guacamole', CAST(8.99 AS Decimal(10, 2)), 56);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (300, N'Sándwich de queso a la parrilla', N'Sándwich de pan blanco con queso cheddar fundido', CAST(5.50 AS Decimal(10, 2)), 56);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (301, N'Tarta de manzana', N'Tarta de manzana recién horneada con helado de vainilla', CAST(6.99 AS Decimal(10, 2)), 56);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (327, N'Big Mac', N' Dos jugosas hamburguesas de carne 100% vacuno español, lechuga fresca y crujiente, cebolla, pepinillo, queso Cheddar fundido y nuestra inimitable salsa secreta.', CAST(5.99 AS Decimal(10, 2)), 57);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (328, N'Pollo al horno', N'El ineludible bocado de pollo crujiente con salsa fina y lechuga, en pan con semilla de sésamo.', CAST(3.50 AS Decimal(10, 2)), 57);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (329, N'Signature Huevo Doble Benedictine', N'Signature Huevo Benedictine de McDonalds. Con doble carne 100% vacuno español, bacon, queso gouda, cebolla crispy, huevo, pan de semillas de amapola y una espectacular y cremosa salsa holandesa.', CAST(8.99 AS Decimal(10, 2)), 57);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (330, N'McExtreme Bacon Doble', N'Disfruta el doble con su deliciosa carne 100% vacuno español acompañada de queso, bacon, cebolla blanca y nuestra inconfundible salsa de bacon. Nuestra McExtreme de McDonalds más emblemática, ahora con mucho más de lo que te gusta.', CAST(5.50 AS Decimal(10, 2)), 57);
INSERT productos (id, nombre_producto, descripcion, precio, id_restaurante) VALUES (331, N'CBO', N'Deliciosa hamburguesa con tus tres ingredientes favoritos: Chicken, Bacon, Onion. Delicioso pollo, crujiente bacon y el sabor sorprendente de nuestro crispy onion, con lechuga, queso cheddar, una salsa original y un pan único.', CAST(5.99 AS Decimal(10, 2)), 57);

INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (1, 1, 1);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (1, 2, 3);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (2, 2, 4);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (8, 20, 3);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (8, 21, 2);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (9, 20, 1);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (9, 21, 2);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (10, 20, 2);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (10, 21, 3);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (11, 20, 2);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (11, 21, 3);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (12, 20, 4);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (12, 21, 3);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (13, 20, 3);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (13, 21, 4);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (14, 20, 3);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (14, 21, 4);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (14, 22, 3);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (14, 24, 5);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (15, 51, 3);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (15, 52, 4);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (15, 54, 3);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (15, 55, 4);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (16, 46, 4);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (17, 1, 1);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (17, 2, 1);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (18, 20, 1);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (18, 22, 1);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (18, 23, 1);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (18, 24, 1);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (19, 20, 4);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (19, 21, 5);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (20, 20, 2);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (20, 21, 4);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (21, 26, 5);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (21, 27, 2);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (22, 20, 3);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (22, 21, 3);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (22, 22, 3);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (23, 20, 2);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (23, 21, 3);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (23, 22, 4);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (24, 33, 5);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (24, 34, 2);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (24, 35, 4);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (25, 20, 3);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (25, 21, 2);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (26, 20, 1);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (26, 21, 1);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (26, 22, 1);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (26, 23, 1);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (26, 24, 1);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (26, 25, 1);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (27, 66, 5);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (27, 67, 5);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (27, 68, 5);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (27, 69, 5);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (27, 70, 5);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (27, 113, 5);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (27, 114, 5);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (27, 115, 5);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (28, 26, 4);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (28, 27, 3);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (28, 28, 4);
INSERT productos_pedidos (id_pedido, id_producto, cantidad) VALUES (29, 21, 1);

INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (1, N'Sakale', N'Calle del Molino de Viento 4, 28004 Madrid España', 918656322, 1, N'SAKALE.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (2, N'Maximos', N'Menendez Pelayo 53 Local 2, 28009 Madrid España', 919306434, 1, N'MaximoSushi.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (3, N'Sibuya Urban Sushi Bar Chueca', N'Calle Santo Tome 5, 28004 Madrid España', 913198393, 1, N'Sibuya.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (4, N'Sto Globo Sushi Room', N'Calle de Santa Teresa 8, 28004 Madrid España', 917793452, 1, N'StoGlobo.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (5, N'Sr. Ito', N'Calle Pelayo 60, 28004 Madrid España', 910816615, 1, N'SrIto.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (6, N'Kaiten Sushi Madrid', N'C. De San Bernardo, 10, 28015 Madrid 10, 28015 Mad', 915233392, 1, N'Kaiten.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (7, N'DokiDOki', N'Calle de Villalar , 4, 28001 Madrid España', 917793649, 1, N'DokiDoki.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (8, N'Naomi', N'Calle Avila 14, 28020 Madrid España', 915722304, 1, N'Naomi.jpeg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (9, N'Miyama', N'Paseo de La Castellana, 45, 28046 Madrid España', 913910026, 1, N'Miyama.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (10, N'Yokaloka', N'Calle de Santa Isabel, 5 Mercado de Antón Martín, ', 610602722, 1, N'YOKALOKA.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (11, N'Pizzart Villa Luchana', N'Luchana 17, 28010 Madrid España', 911088990, 2, N'PizzartVillaLuchana.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (12, N'Pizzart Villa Canalejas', N'Calle Arlabán 1, 28014 Madrid España', 916225706, 2, N'PizzartVillaCanalejas.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (13, N'Pizzart Fuencarral', N'Fuencarral 58, 28004 Madrid España', 911088991, 2, N'PizzartFuencarral.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (14, N'La Pizzateca', N'Calle León 35, 28014 Madrid España', 913693210, 2, N'LaPizzateca.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (15, N'Araldo Arte del Gusto', N'Calle los Madrazo, 28014 Madrid España', 911384165, 2, N'AraldoArtedelGusto.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (16, N'Brew Wild Pizza Bar', N'Echegaray, 23, 28014 Madrid España', 913483586, 2, N'BrewWildPizzaBar.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (17, N'Pizzeria Vesuvio -Hortaleza', N'Calle Hortaleza 4, 28004 Madrid España', 915215171, 2, N'PizzeriaVesuvioHortaleza.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (18, N'Massa Pizza', N'Calle Augusto Figueroa, 21, 28004 Madrid España', 912307869, 2, N'MassaPizza.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (19, N'Pizzeria Fratelli', N'Calle Quero, 83-85 Bajo, 28024 Madrid España', 918285061, 2, N'PizzeriaFratelli.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (20, N'Pizzeria El Trebol', N'Calle de la Cruz 3, 28012 Next to Plaza Canalejas,', 915212153, 2, N'PizzeriaElTrebol.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (21, N'Santita Virgen de los Peligros', N'Calle de la Virgen de los Peligros 10, 28013 Madri', 911088047, 3, N'SantitaVirgendelosPeligros.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (22, N'Santita Fuencarral', N'Calle Fuencarral 74 esquina calle Benficiencia, 28', 911088048, 3, N'SantitaFuencarral.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (23, N'Cherry Pecas', N'Paseo de San Francisco de Sales 17, 28003 Madrid E', 645762200, 3, N'CherryPecas.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (24, N'Bakan Madrid', N'Plaza Independencia 5, 28001 Madrid España', 911382684, 3, N'BakanMadrid.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (25, N'Tacos & Tapas', N'Calle Redondilla, 7 Barrio Palacio, 28005 Madrid E', 917298351, 3, N'Tacos&Tapas.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (26, N'Nacho Bravo', N'Paseo de las Delicias 139, 28045 Madrid España', 915306497, 3, N'NachoBravo.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (27, N'Mawey Taco Bar - Gran Vía', N'Calle de San Bernardo 5 Local 2, 28013 Madrid Espa', 918785201, 3, N'MaweyTacoBar-GranVía.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (28, N'Mawey Taco Bar - Olid', N'Calle Olid 6, 28010 Madrid España', 910117103, 3, N'MaweyTacoBar-Olid.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (29, N'Casa Jaguar Madrid', N'Calle Caños del Peral, 9, 28013 Madrid España', 910245712, 3, N'CasaJaguarMadrid.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (30, N'Tamán', N'Calle Alfonso VI, 6, 28005 Madrid España', 910640996, 3, N'Taman.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (31, N'Periplo Café', N'Calle de Modesto Lafuente, 4,, 28010 Madrid España', 622638974, 4, N'PeriploCafe.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (32, N'Motteau', N'Calle San Pedro 9, 28014 Madrid España', 810523201, 4, N'Motteau.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (33, N'GIOELIA Cremeria, Madrid Atocha', N'Giolatto c/ Atocha, 42, 28012 Madrid España', 911256050, 4, N'GIOELIACremeria.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (34, N'Kalua Helado Artesanal', N'Calle Fuencarral 131 Heladería Kalúa, 28010 Madrid', 914454292, 4, N'KaluaHeladoArtesanal.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (35, N'Zúccaru', N'Calle Vergara 16, 28013 Madrid España', 653861414, 4, N'Zuccaru.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (36, N'Mimis Crepería', N'Calle Postas 17, 28012 Madrid España', 915235566, 4, N'MimisCreperia.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (37, N'Bellamia Heladeria', N'Calle Perez Galdos 3, 28004 Madrid España', 910256506, 4, N'BellamiaHeladeria.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (38, N'Mistura Ice Cream', N'Calle Ciudad Rodrigo 6, 28012 Madrid España', 810524641, 4, N'MisturaIceCream.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (39, N'Pastamore', N'Calle Alcalá, 191, 28009 Madrid España', 919915474, 6, N'Pastamore.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (40, N'Pizzart Villa Luchana', N'Luchana 17, 28010 Madrid España', 911088990, 6, N'PizzartVillaLuchanaItaliano.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (41, N'Peppe Fusco The Italian', N'Fuencarral 139, 28010 Madrid España', 910259350, 6, N'PeppeFuscoTheItalian.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (42, N'Trattoria Pulcinella', N'C/ de Regueros, 7, 28004 Madrid España', 913197363, 6, N'TrattoriaPulcinella.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (43, N'Oven Mozzarella', N'Calle Preciados 11 Esquina Callejón De Preciados, ', 911178800, 6, N'OvenMozzarella.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (44, N'Oven Mozzarella Gran Vía 55', N'C / Gran Vía, 55 Oven, Steakburger y Pura Kaffeina', 910059749, 6, N'OvenMozzarellaGranVía55.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (45, N'Lettera Trattoria moderna', N'Calle de la Reina 20, 28004 Madrid España', 918053342, 6, N'LetteraTrattoriamoderna.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (46, N'Steakburger Gran Vía 16', N'Gran Vía, 16, 28013 Madrid España', 911088045, 8, N'SteakburgerGranVía16.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (47, N'Johnny Rockets', N'Calle Aracne S/n S/n, 28022 Madrid España', 626430364, 8, N'JohnnyRockets.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (48, N'Alright', N'Calle de Pedro Rico, 41 Lateral Avda de la Ilustra', 912190725, 8, N'Alright.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (49, N'Burnout Burgers', N'Calle Fuencarral, 148, 28010 Madrid España', 699736391, 8, N'BurnoutBurgers.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (50, N'New York Burger General Yagüe', N'Calle General Yague 5, 28020 Madrid España', 917703079, 8, N'NewYorkBurgerGeneralYagüe.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (51, N'Foodtruck', N'Calle San Lucas 11, 28004 Madrid España', 911893696, 8, N'Foodtruck.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (52, N'Anauco', N'Calle de la Reina 25, 28004 Madrid España', 671764248, 8, N'Anauco.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (53, N'Skyline Diner', N'Calle de Jesus 14 Esquina a calle de Santa María, ', 913896700, 8, N'SkylineDiner.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (54, N'Beefcious', N'Paseo Tierra de Melide 42 Las Tablas, 28050 Madrid', 914273517, 8, N'Beefcious.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (55, N'Goiko - Princesa 26', N'Princesa, 26, 28015 Madrid España', 910603929, 8, N'Goiko-Princesa26.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (56, N'Burger King', N'Calle Bravo Murillo 377 Metro Plaza De Castilla, 2', 913148330, 8, N'BurgerKing.jpg');
INSERT restaurantes (id, nombre_restaurante, direccion, telefono, id_categoria, imagen) VALUES (57, N'McDonalds', N'C/ Gran Vi­a, 55, 28013 Madrid España', 915479909, 8, N'McDonalds.jpg');
