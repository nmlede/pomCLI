#!/bin/bash
 
# Array con caracteres para la animacion, se pueden modificar
spinner=( Ooooo oOooo ooOoo oooOo ooooO oooOo ooOoo oOooo);

# Funcion para iniciar y terminar animacion
main(){
  spin & # Llamada a la funcion spin
  pid=$! # Guardamos el process id del ultimo proceso en ejecucion, que es la funcion spin
  
  for i in `seq 1 60`
  do
    sleep 1;
  done
 
  kill $pid # Matamos la funcion spin 
}
 
# Funcion para loopear la animacion
spin(){
    while [ 1 ]
    do 
        for i in ${spinner[@]}; 
        do 
            echo -ne "\r$i"; # Reseteamos la animacion
            sleep 0.2;
        done;
    done
}

# PROGRAMA
main # Llamada a la funcion main
