CREATE PROCEDURE ChangeStatus
    @OldTitle VARCHAR(100),
    @NewTitle VARCHAR(100)
AS
BEGIN
    UPDATE SalesLT.Customer
    SET Title = @NewTitle 
    WHERE Title = @OldTitle OR (Title is Null and @OldTitle is null)      
END

EXEC ChangeStatus married, null;


SELECT Title FROM SalesLT.Customer