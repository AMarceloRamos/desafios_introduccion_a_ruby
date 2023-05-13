puts "**************************************************"
puts "Hola bienvenido al juego de piedra, papel o tijeras"
puts "**************************************************"
puts
puts "Escribe piedra , papel o tijera y compite con el sitema"
# opcion_usuario = ARGV[0]
opcion_usuario = gets.chomp

if opcion_usuario == "piedra" || opcion_usuario == "papel" || opcion_usuario == "tijera"
    opcion_computador = rand(3)
    
    if opcion_computador == 0
        jugada_computador = "piedra"
    elsif opcion_computador == 1
        jugada_computador = "papel"
    else
        jugada_computador = "tijera"
    end
    
    if opcion_usuario == "piedra" && jugada_computador == "tijera" || opcion_usuario == "papel" && jugada_computador == "piedra" || opcion_usuario == "tijera" && jugada_computador == "papel"
        puts "Computador juega #{jugada_computador}."
        puts "Ganaste."
    elsif opcion_usuario == "piedra" && jugada_computador == "papel" || opcion_usuario == "papel" && jugada_computador == "tijera" || opcion_usuario == "tijera" && jugada_computador == "piedra"
        puts "Computador juega #{jugada_computador}."
        puts "Perdiste."
    else
        puts "Computador juega #{jugada_computador}."
        puts "Empataste."
    end
else
    puts "Argumento invalido: Debe ser piedra, papel o tijera."
end
