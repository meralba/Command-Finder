#!/usr/bin/env ruby
#VERSION ALPHA
#This project is under GNU GPL v3
#author: MercAddons


require 'multimap'

map=Multimap.new
map["contenido"]="cat"
map["contenido"]="ls"
map["listar"]="ls"
map["directorios"]="ls"
map["directorios"]="cp"
map["directorios"]="rm"
map["directorios"]="mkdir"
map["directorios"]="rmdir"
map["directorios"]="chmod"
map["directorios"]="chown"
map["directorios"]="chgrp"
map["copiar"]="cp"
map["ficheros"]="cp"
map["ficheros"]="rm"
map["ficheros"]="mv"
map["ficheros"]="cat"
map["ficheros"]="chmod"
map["ficheros"]="chown"
map["ficheros"]="chgrp"
map["eliminar"]="rm"
map["eliminar"]="rmdir"
map["borrar"]="rm"
map["borrar"]="rmdir"
map["crear"]="mkdir"
map["mover"]="mv"
map["renombrar"]="mv"
map["cambiar"]="mv"
map["cambiar"]="chmod"
map["cambiar"]="chown"
map["cambiar"]="chgrp"
map["nombre"]="mv"
map["mostrar"]="ls"
map["mostrar"]="cat"
map["concatenar"]="cat"
map["visualizar"]="cat"
map["acceso"]="chmod"
map["usuario"]="chown"
map["grupo"]="chown"
map["grupo"]="chgrp"
map["propietario"]="chown"
map["pertenecer"]="chgrp"


puts "Buscar comando: "  
STDOUT.flush  
frase = gets.chomp  
puts "Frase introducida: " + frase
*claves=frase.split(" ")
*comandos=map.values_at(*claves)
*separados=[]
coincidencias=Hash.new
i=0

comandos.each do |comando|
	comando.each do |c|
		separados.push(c)
		i=i+1
	end
end
separados.each do |comando|
	coincidencias[comando]=separados.count(comando)
end
coincidencias=coincidencias.sort_by{|clave, valor| valor}
coincidencias.reverse!
puts "Coincidencias: "
for m in coincidencias 
	print m.first + "\n"
end





