USE RetailInventoryDB;

-- Query 1: Premium Multi-Table JOIN (Fetch low stock items and supplier contacts)
SELECT 
    p.ProductName, 
    p.StockQuantity, 
    s.SupplierName, 
    s.ContactEmail
FROM Products p
INNER JOIN Suppliers s ON p.SupplierID = s.SupplierID
WHERE p.StockQuantity < 10;

-- Query 2: Data Aggregation (Analyze total inventory capital value value)
SELECT 
    COUNT(ProductID) AS TotalDistinctProducts,
    SUM(StockQuantity) AS TotalUnitsInStock,
    SUM(StockQuantity * Price) AS EstimatedTotalInventoryValue
FROM Products;
