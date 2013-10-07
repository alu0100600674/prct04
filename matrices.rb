#! /usr/local/rvm/rubies/ruby-2.0.0-p247/bin/ruby

#podemos usar la libreria matrix para la multiplicacion
require 'matrix'

#definimos 2 matrices por defecto
#a = [[3,5,6],[0,3,2],[5,5,4]] #matriz 1
#b = [[1,1,1],[2,3,4],[6,5,9]] #matriz 2

a = Array.new #matriz a pedir datos
b = Array.new #matriz b pedir datos


c = Array.new		#matriz c, contendra el resultado de la suma
d = Array.new		#matriz d, contendra el resultado de la multiplicacion

#m,n = a.size,a[1].size 

puts "Introduzca la dimension de la matriz cuadrada (m = n) : "
m = gets.to_i	#gets.to_i hace que el valor obtenido se trate como entero
n = m

puts "Introduzca los valores de la matriz a"

for i in 0...m do
        a[i] = Array.new
        for j in 0...n do
		puts "Valor a[#{i}][#{j}]: "
                a[i][j] = gets.to_i
        end
end 

puts "Introduzca los valores de la matriz b"

for i in 0...m do
        b[i] = Array.new
        for j in 0...n do
                puts "Valor b[#{i}][#{j}]: "
                b[i][j] = gets.to_i
        end
end 

for i in 0...m do
	c[i] = Array.new
	d[i] = Array.new
	for j in 0...n do
		c[i][j] = 0
		d[i][j] = 0
	end
end 		#definimos el tamaño de c y d y las incializamosa 0

#realizamos la suma

for i in 0...m do
	for j in 0...n do
		c[i][j] = a[i][j] + b[i][j]
	end
end

#la multiplicación da problemas 

#hacer la multiplicacion
#
#e = Matrix[[3,5,6],[0,3,2],[5,5,4]] * Matrix[[1,1,1],[2,3,4],[6,5,9]]
#
#for i in 0...m do
#	for j in 0...n do
#		d[i][j] = e.component(i, j)
#	end
#end

#mostrar las matrices

puts "\n La Matriz 1 es = "
a.each do |fila|
	puts fila.join(" ")
end

puts "\n La Matriz 2 es = "
b.each do |fila|
	puts fila.join(" ")
end

puts "\n La suma de las matrices es = "
c.each do |fila|
	puts fila.join(" ")
end 

puts "\n La multiplicacion de las matrices es = "
d.each do |fila|
	puts fila.join(" ")
end

