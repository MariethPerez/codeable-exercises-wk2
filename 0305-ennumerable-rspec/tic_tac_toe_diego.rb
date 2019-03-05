require "./metodos_ttt_diego"


A= [["-", "-", "-"], ["-", "-", "-"], ["-", "-", "-"]]


puts A[0].to_s
puts A[1].to_s
puts A[2].to_s

r=Random.new

humano=true

for turn in 1..9
    if humano
        puts "Que fila quieres?"
        x = gets.chomp.to_i

        puts "Que columna quieres?"
        y = gets.chomp.to_i
    else
        x=r.rand(1..3)
        y=r.rand(1..3)
    end

    while A[x-1][y-1] != "-"
        if humano
            puts "Que fila quieres?"
            x = gets.chomp.to_i
        
            puts "Que columna quieres?"
            y = gets.chomp.to_i
        else
            x=r.rand(1..3)
            y=r.rand(1..3)
        end
    end

    if humano
        A[x-1][y-1] = "X"
    else
        A[x-1][y-1] = "O"
    end

    if humano
        puts "----------Resultado del turno humano---------"
    else
        puts "----------Resultado del turno maquina--------"
    end
    puts A[0].to_s
    puts A[1].to_s
    puts A[2].to_s


  if validar_fila(A, humano)
    puts validar_fila(A, humano)
    exit
  end

  if validar_columna(A, humano)
    puts validar_columna(A, humano)
    exit
  end

  if validar_diagonales(A, humano)
    puts validar_diagonales(A, humano)
    exit
  end

    humano = !humano

end