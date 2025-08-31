-- inserção de dados queries
use ecommerce;
insert into Clients (Pname, Minit, Lname, CPF, Adress)
values
('Maria','M','Souza','11111111111','Rua Marechal Rondon nº3'),
('Lucas','A','Pereira','22222222222','Travessa Horizonte, nº 12');

-- Exemplo de Product
insert into Product (idProduct, Pname, classification_kids, category, size)
values
('2013','Smartphone', '1', 'Eletrônico', '65'),
('2014','Camiseta', '0', 'Vestimenta', '30');

-- Exemplo de Orders
insert into Orders (idOrderClient, orderStatus, orderDescription, sendValua, PaymentCash)
values
(1, 'confirmado', 'Compra de Smartphone', 25.50, 0),
(1, 'em processamento', 'Compra de Camiseta', 10.00, 1);

-- Exemplo de Store
insert into Store(storeLocation, category, quantity)
values
('Loja 1', 'Eletrônico', 120),
('Loja 2', 'Vestimenta', 250);

-- Exemplo de Supplier
insert into Supplier (SocialName, CNPJ, Contact, location)
values
('Tech Supplies Ltda','11111111000111','11987654321','São Paulo/SP');

-- Exemplo de Seller
insert into Seller (SocialName, CNPJ, CPF, Contact)
values
('1','Heitor Santos', '12345678985447', '55555655555','11987754321'),
('4', 'Vendedor 4', '15975345685', '44444444444', '11988888888');

-- Exemplo de Payment
insert into Payment (PIX, CredCard, DebitCard, Bankslip)
values
('PIX001', NULL, NULL, NULL);


                       
