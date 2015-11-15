//
//  Pizza.swift
//  PizzaSwift
//
//  Created by Victor Chisvert Amat on 15/11/15.
//  Copyright © 2015 Vicchiam. All rights reserved.
//

import Foundation


class Pizza{

    var tamanyo : Int
    var masa : Int
    var queso : Int
    var ingredientes : [Int]
    
    init(){
        tamanyo=1
        masa=1
        queso=0
        ingredientes=[0,0,0,0,0,0,0,0,0]
    }
    
    func setTamanyo(tamanyo : Int){
        self.tamanyo=tamanyo
    }
    
    func getTamanyo()->Int{
        return tamanyo
    }
    
    func setMasa(masa : Int){
        self.masa=masa
    }
    
    func getMasa()->Int{
        return masa
    }
    
    func setQueso(queso : Int){
        self.queso=queso
    }
    
    func getQueso()->Int{
        return queso
    }
    
    func setIngredientes(pos : Int, valor : Int){
        self.ingredientes[pos]=valor
    }
    
    func getIngredientes()->[Int]?{
        return ingredientes
    }
    
    func countIngredientes()->Int{
        var cont: Int=0
        for i in 0...(ingredientes.count-1){
            if ingredientes[i]==1{
                cont++
            }
        }
        return cont
    }
    
    func resetIngredientes(){
        self.ingredientes=[0,0,0,0,0,0,0,0,0]
    }
    
    func toString()->String{
        let tamanyoS = ["Pequeño","Mediano","Grande"]
        let masaS = ["Delgada","Crujiente","Gruesa"]
        let quesoS = ["Mozarela","Cheddar","Parmesano","Sin queso"]
        let ingS=["Jamon","Peperoni","Pavo","Salchicha","Aceituna","Cebolla","Pimiento","Piña","Anchoa"]
        
        var res="Tamanyo: \(tamanyoS[tamanyo])\nTipo Masa: \(masaS[masa])\nTipo Queso: \(quesoS[queso])\nIngredientes:\n"
        
        
        for i in 0...(ingredientes.count-1){
            if ingredientes[i]==1{
                res+="\(ingS[i])\n"
            }
        }
        
        return res
    }

}