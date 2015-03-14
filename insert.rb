#!/usr/bin/env ruby
#Script cutre para crear una base de datos de comandos de pruebas


require 'sqlite3'


database = SQLite3::Database.open "cmdfind.db"
database.execute "CREATE TABLE IF NOT EXISTS Entries(Id INTEGER PRIMARY KEY AUTOINCREMENT, Term TEXT NOT NULL, Code TEXT NOT NULL)"

database.execute "INSERT INTO Entries(Term,Code) VALUES('contenido','cat')"
database.execute "INSERT INTO Entries(Term,Code) VALUES('contenido','ls')"
database.execute "INSERT INTO Entries(Term,Code) VALUES('listar','ls')"
database.execute "INSERT INTO Entries(Term,Code) VALUES('directorios','ls')"
database.execute "INSERT INTO Entries(Term,Code) VALUES('directorios','cp')"
database.execute "INSERT INTO Entries(Term,Code) VALUES('directorios','rm')"
database.execute "INSERT INTO Entries(Term,Code) VALUES('directorios','mkdir')"
database.execute "INSERT INTO Entries(Term,Code) VALUES('directorios','rmdir')"
database.execute "INSERT INTO Entries(Term,Code) VALUES('directorios','chmod')"
database.execute "INSERT INTO Entries(Term,Code) VALUES('directorios','chown')"
database.execute "INSERT INTO Entries(Term,Code) VALUES('directorios','chgrp')"
database.execute "INSERT INTO Entries(Term,Code) VALUES('copiar','cp')"
database.execute "INSERT INTO Entries(Term,Code) VALUES('ficheros','cp')"
database.execute "INSERT INTO Entries(Term,Code) VALUES('ficheros','rm')"
database.execute "INSERT INTO Entries(Term,Code) VALUES('ficheros','mv')"
database.execute "INSERT INTO Entries(Term,Code) VALUES('ficheros','cat')"
database.execute "INSERT INTO Entries(Term,Code) VALUES('ficheros','chmod')"
database.execute "INSERT INTO Entries(Term,Code) VALUES('ficheros','chown')"
database.execute "INSERT INTO Entries(Term,Code) VALUES('ficheros','chgrp')"
database.execute "INSERT INTO Entries(Term,Code) VALUES('eliminar','rm')"
database.execute "INSERT INTO Entries(Term,Code) VALUES('eliminar','rmdir')"
database.execute "INSERT INTO Entries(Term,Code) VALUES('borrar','rm')"
database.execute "INSERT INTO Entries(Term,Code) VALUES('borrar','rmdir')"
database.execute "INSERT INTO Entries(Term,Code) VALUES('crear','mkdir')"
database.execute "INSERT INTO Entries(Term,Code) VALUES('mover','mv')"
database.execute "INSERT INTO Entries(Term,Code) VALUES('renombrar','mv')"
database.execute "INSERT INTO Entries(Term,Code) VALUES('cambiar','mv')"
database.execute "INSERT INTO Entries(Term,Code) VALUES('cambiar','chmod')"
database.execute "INSERT INTO Entries(Term,Code) VALUES('cambiar','chown')"
database.execute "INSERT INTO Entries(Term,Code) VALUES('cambiar','chgrp')"
database.execute "INSERT INTO Entries(Term,Code) VALUES('nombre','mv')"
database.execute "INSERT INTO Entries(Term,Code) VALUES('mostrar','ls')"
database.execute "INSERT INTO Entries(Term,Code) VALUES('mostrar','cat')"
database.execute "INSERT INTO Entries(Term,Code) VALUES('concatenar','cat')"
database.execute "INSERT INTO Entries(Term,Code) VALUES('visualizar','cat')"
database.execute "INSERT INTO Entries(Term,Code) VALUES('acceso','chmod')"
database.execute "INSERT INTO Entries(Term,Code) VALUES('usuario','chown')"
database.execute "INSERT INTO Entries(Term,Code) VALUES('grupo','chown')"
database.execute "INSERT INTO Entries(Term,Code) VALUES('grupo','chgrp')"
database.execute "INSERT INTO Entries(Term,Code) VALUES('propietario','chown')"
database.execute "INSERT INTO Entries(Term,Code) VALUES('pertenecer','chgrp')"
database.execute "INSERT INTO Entries(Term,Code) VALUES('magia','abracadabra')"

database.close if database


