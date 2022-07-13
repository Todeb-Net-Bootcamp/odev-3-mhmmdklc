### odev-3
1. Veritabanı oluştur(tablolar konusunda tamamen serbestsin)
2. Oluşturduğun veritabanına uygun verileri ekle
3. Geriye en az 1 tablo döndüren ve 1 değer döndüren fonksiyon oluştur
4. En az 1 tane stored procedure oluştur
5. Script çıkar
6. Ödev için açılacak repository içerisine 15 temmuz saat 23.00'a kadar yükle

# Son Teslim Tarihi: 15/07/2022 23:00


### 1. Stored Procedures

We can easily add book to table with this stored procedur. 

```
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spAddNewBook]
@AuthorID DECIMAL(3,0),
@GenreID DECIMAL(2,0),
@Title VARCHAR(50),
@Price VARCHAR(50),
@PageCount INT,
@PublisherID INT

AS 
BEGIN
INSERT into Books (AuthorID, GenreID, Title, Price, [PageCount], PublisherID )
VALUES (@AuthorID, @GenreID, @Title, @Price, @PageCount, @PublisherID)


SELECT * FROM Books

END
GO

```


<img width="1199" alt="3- AddNewBook" src="https://user-images.githubusercontent.com/105243448/178730646-b232cc5c-cd6d-4bb1-a94b-73a45e0875b0.png">


### 2. Scalar Valued Function 

We add the discounted price column to our table with this function, 
We determine the discount rate. 
The BooksFullDetail table is a view we created.


<img width="1105" alt="1- CalculatePriseWithDiscount" src="https://user-images.githubusercontent.com/105243448/178731640-2fdaeba9-0b69-43ba-b469-d19bab8b1691.png">

### 3. Table Valued Function

We create a complex table using data from 7 different tables with Func_OrdersForGenre.


```

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[Func_OrdersForGenre]
(
@GenreID INT

)
RETURNS TABLE
AS
RETURN
(
SELECT  Books.Title as "Book Title", Genre.Genre, Authors.AuthorFirstName, Authors.AuthorLastName, 
Publisher.Name as "Publisher Name", Books.Price, Customers.FirstName as "Customer FirstName", 
Customers.LastName as "Customer LastName" , Customers.PhoneNumber as "Customer Phone Number" FROM Books

INNER JOIN Authors ON Books.AuthorID = Authors.AuthorID

INNER JOIN Genre ON Books.GenreID = Genre.GenreID

INNER JOIN Publisher ON Publisher.PublisherID = Books.PublisherID

INNER JOIN OrderDetails ON OrderDetails.BookID = Books.BookID

INNER JOIN Orders ON Orders.OrderDetailID = OrderDetails.OrderDetailsID

INNER JOIN Customers ON Customers.CustomerID = Orders.CustomerID

WHERE Genre.GenreID = @GenreID 

)
GO


```

.
.

<img width="1224" alt="2- OrdersForGenre" src="https://user-images.githubusercontent.com/105243448/178732695-1990e5ce-7259-4a16-9b75-fdff01a54700.png">


