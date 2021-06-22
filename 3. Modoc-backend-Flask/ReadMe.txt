The ModocFlask file here in this folder is the backend script which will do all the backend work.

-Make sure to run this file python version <3.9 not =3.9
-Open the file ModocFlask.py and find these lines:

		app.config['MYSQL_HOST']="Your Host Name"
		app.config['MYSQL_USER']="Your Data Base UserName"
		app.config['MYSQL_PASSWORD']="Your userpassword"
		app.config['MYSQL_DB']="Database name"'

    ---"Change these according to your Database Credentials. If you are using local host then type "localhost:port" in place of "Your Host
	Name"



after hosting these make sure you run your emulator and connect android device to pc and open Command Promt and type this command:
[make sure you have adb installed and configured]

		adb reverse tcp:5000 tcp:5000

this will lead your flutter application to communicate with the Python-Flask Backend.



--for querries follow me on instagram :- https://www.instagram.com/cicada_sama/