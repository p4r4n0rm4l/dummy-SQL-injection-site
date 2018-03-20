First of all you need to set up a web server on your machine.
That means you need Apache and MySQL service installed.

After you have these requirements, you have to download the test_server.sql and insert its values in your MySQL.

Next, you need to EDIT sql.php file in the second (2) line and change:
(   $connection = mysqli_connect('IP','username','password','test_server');    )

	1.) IP --> your servers IP, if it`s local then 127.0.0.1
	2.) Username --> your MySQL username
	3.) Password --> your MYSQL password
	4.) Dont change test_server, it`s the database you installed previously

If everything is OK, then you will have ready your dummy site for testing my SQL Injection tool.
