#!/usr/bin/env ruby
#VERSION ALPHA
#This project is under GNU GPL v3

require 'sqlite3'

*claves=ARGV	#TODO <-- Hay que "sanitizar" las claves ants de aceptarlas
if claves.count == 0
	raise "ERROR: Necesita argumentos"
end

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
#puts "Coincidencias: "
i=0
if claves[0] == "-r"
	(0..4).each do |i|
		puts coincidencias[i].join(" - ")
	#end

else
	coincidencias.each {|key, value| puts "#{key} - #{value}" }
	
end
