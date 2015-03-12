#!/usr/bin/env ruby
#VERSION ALPHA
#This project is under GNU GPL v3

=begin Archivo main 
=end

#Entrada del string
puts "Buscar comando: "  
STDOUT.flush  
frase = gets.chomp  
frase.downcase!			#Cambiar carácteres del string a minúsculas


*claves=frase.split(" ")	#Separar el string por palabras
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





