#!/usr/bin/env ruby
#VERSION ALPHA
#This project is under GNU GPL v3#author: MercAddons


require 'sqlite3'

*claves=ARGV	#TODO <-- Hay que "sanitizar" las claves ants de aceptarlas

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

coincidencias.each {|key, value| puts "#{key} - #{value}" }
