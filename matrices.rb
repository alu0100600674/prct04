#! /usr/local/rvm/rubies/ruby-2.0.0-p247/bin/ruby

#podemos usar la libreria matrix para la multiplicacion
require 'matrix'

#definimos 2 matrices por defecto
a = [[3,5,6],[0,3,2],[5,5,4]] #matriz 1
b = [[1,1,1],[2,3,4],[6,5,9]] #matriz 2

c = Array.new		#matriz c, contendra el resultado de la suma
d = Array.new		#matriz d, contendra el resultado de la multiplicacion

m,n = a.size,a[1].size

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

#hacer la multiplicacion

e = Matrix[[3,5,6],[0,3,2],[5,5,4]] * Matrix[[1,1,1],[2,3,4],[6,5,9]]

for i in 0...m do
	for j in 0...n do
		d[i][j] = e.component(i, j)
	end
end

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
#muestra cada valor en una linea
#e.each { |e| puts e }

#muestra cada fila por separado
#for i in 0...m do
#	puts e.row(i)
#end

d.each do |fila|
	puts fila.join(" ")
end
