CREATE PROC sp_Emlpoyee
@Sr_no int,@Emp_name nvarchar(500),
@City nvarchar (500), @state nvarchar(500),
@Country nvarchar(500), @Deparment nvarchar(500),
@flag nvarchar(50)

AS BEGIN
 IF (@flag = 'insert')
 BEGIN
 INSERT INTO dbo.tbl_Emlpoyee
 (Emp_name,City,STATE,Country,Department)
 Values
 (@Emp_name, @City,	@STATE, @Country, @Deparment)
 END
	ELSE IF (@flag = 'update')
	BEGIN
	UPDATE dbo.tbl_Emlpoyee SET
	@Emp_name=@Emp_name,City=@City,STATE =@STATE,Country=@Country,Department=@Deparment
	WHERE Sr_no=Sr_no
	END
	ELSE IF (@flag = 'delete')
	BEGIN
	DELETE FROM tbl_Emlpoyee
	WHERE Sr_no=@Sr_no
	END
	ELSE IF (@flag = 'getid')
	BEGIN
	SELECT * FROM tbl_Emlpoyee	
	WHERE Sr_no=@Sr_no
	END
	ELSE IF (@flag = 'get')
	BEGIN
	SELECT * FROM tbl_Emlpoyee
	END
	END