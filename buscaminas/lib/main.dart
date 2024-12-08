import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  var tablero = [["·","·","·","·","·","·","·","·","·"],
  ["·","·","·","·","·","·","·","·","·"],
  ["·","·","·","·","·","·","·","·","·"],
  ["·","·","·","·","·","·","·","·","·"],
  ["·","·","·","·","·","·","·","·","·"],
  ["·","·","·","·","·","·","·","·","·"]
  ];
  var indic = [[0,1,2,3,4,5,6,7,8,9],["A","B","C","D","E","F"]];
  
  //print(tablero);
  var bombasX = [];
  var bombasY = [];
  Random rand = Random();
  
  for (var i = 0; i < 2; i++) {
    for (var j = 0; j < 4; j++) {
      if (j<2) {
        bombasX.add(rand.nextInt(4));
      } else{
        bombasX.add(rand.nextInt(4)+5);
      }
      
    }
    for (var j = 0; j < 4; j++) {
      if (j<2) {
        bombasY.add(rand.nextInt(3));
      } else{
        bombasY.add(rand.nextInt(3)+3);
      }
      
    }
    
  }
  //print(indic);
  String tabl = "";
  for (var i = 0; i < 8; i++) {
    if (i == 0) {
      for (var j = 0; j < indic[0].length; j++) {
      tabl += indic[0][j].toString();
      }
    }
    else{
      for (var j = 0; j < 11; j++) {
        if(j == 0){
          tabl += indic[1][j].toString();
        }
        else{
          tabl += tablero[i-1][j-1];
        }
      
      }
    }
   tabl+="\n";
  }
  

  print(tabl);  
  print(bombasY);
  print(bombasX);
    
  

}

/*funció destapaCasella(tauler, x, y, esPrimeraJugada, esJugadaUsuari)
   si (x, y) és fora dels límits o ja descoberta o té bandera
       retorna false
       
   si (x, y) és bomba
       si esPrimeraJugada
           mou la bomba a una posició buida aleatòria
       sinó si esJugadaUsuari
           retorna true  // Indica explosió
       sinó
           retorna false // No explota durant la recursivitat
           
   numMines = comptaMinesAdjacents(tauler, x, y)
   marca (x, y) com descoberta amb numMines
   
   si numMines == 0:
       per cada (dx, dy) al voltant:
           destapaCasella(tauler, x + dx, y + dy, false, false)
           
   retorna false // No explota*/

