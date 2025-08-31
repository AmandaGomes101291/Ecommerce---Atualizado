-- Pergunta: Quais produtos estão cadastrados?
SELECT * from product;
-- Pergunta: Quais clientes compraram algo?
SELECT c.idClient, c.Pname, c.Lname
FROM Clients c
JOIN Orders o ON c.idClient = o.idOrderClient;

-- Pergunta: Qual vendedor vende quais produtos e em que quantidade?
SELECT s.SocialName AS Vendedor, p.Pname AS Produto, ps.ProdQuantity
FROM productSeller ps
JOIN Seller s ON ps.idPseller = s.idSeller
JOIN Product p ON ps.idProduct = p.idProduct;

-- Pergunta:Quais pedidos estão “em processamento”?
SELECT idOrder, orderDescription, idOrderClient
FROM Orders
WHERE orderStatus = 'em processamento';

-- Pergunta: Quantidade total de produtos em cada loja?
SELECT st.storeLocation AS Loja, SUM(ps.LQuantity) AS TotalProdutos
FROM productStore ps
JOIN Store st ON ps.idLStore = st.idStore
GROUP BY st.storeLocation;

-- Pergunta: Número de pedidos por cliente?
SELECT c.Pname, c.Lname, COUNT(o.idOrder) AS TotalPedidos
FROM Clients c
LEFT JOIN Orders o ON c.idClient = o.idOrderClient
GROUP BY c.idClient;
