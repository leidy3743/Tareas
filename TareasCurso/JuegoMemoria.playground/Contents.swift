//: Playground - noun: a place where people can play
//  Created by Leidy Johanna Carvajal Ortiz on 27/05/16.
//  Tarea1: Juego de Memoria


import UIKit


var numeros = 1...100

for i in numeros{
    
    if (i % 5) == 0{
        print("#" + " \(i)" + " Bingo!!!")
    }else if (i >= 30) && (i <= 40) {
        print("#" + " \(i)" + " Viva Swift!!!")
    }else if (i % 2) == 0{
        print("#" + " \(i)" + " par!!!")
    }else {
        print("#" + " \(i)" + " impar!!!")
    }}
