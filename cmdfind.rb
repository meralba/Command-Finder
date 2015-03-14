#!/usr/bin/env ruby
#VERSION ALPHA
#This project is under GNU GPL v3#author: MercAddons


require 'sqlite3'


#Entrada del string
puts "Buscar comando: "  
STDOUT.flush  
frase = gets.chomp  
frase.downcase!			#Cambiar carácteres del string a minúsculas

*claves=frase.split(" ")	#Separar el string por palabras

*separados=[]
coincidencias=Hash.new 0


database = SQLite3::Database.new "cmdfind.db"
database.results_as_hash = true

claves.each do |palabra|

    stm = database.prepare "SELECT Code FROM Entries WHERE Term LIKE ?"

    stm.bind_param 1, palabra

    rs = stm.execute

    while (row = rs.next) do
        coincidencias[row['Code']]+=1
    end

    stm.close if stm

end 

database.close if database

coincidencias=coincidencias.sort_by{|clave, valor| valor}
coincidencias.reverse!
puts "Coincidencias: "
i=0
coincidencias.each {|key, value| puts "#{key} - #{value}" }
