//
//  VistaIngredientes.swift
//  PizzaSwift
//
//  Created by Victor Chisvert Amat on 15/11/15.
//  Copyright © 2015 Vicchiam. All rights reserved.
//

import UIKit

class VistaIngredientes: UIViewController {
    
    var pizza : Pizza? = nil
    
    @IBOutlet weak var sJamon: UISwitch!
    
    @IBOutlet weak var sPepe: UISwitch!
    
    @IBOutlet weak var sPavo: UISwitch!
    
    @IBOutlet weak var sSalch: UISwitch!
    
    @IBOutlet weak var sAceituna: UISwitch!
    
    @IBOutlet weak var sCebolla: UISwitch!
    
    @IBOutlet weak var sPimiento: UISwitch!
    
    @IBOutlet weak var sPinya: UISwitch!
    
    @IBOutlet weak var sAnchoa: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        var ingredientes: [Int] = pizza!.getIngredientes()!
        if ingredientes[0]==1{
            sJamon.setOn(true, animated: true)
        }
        if ingredientes[1]==1{
            sPepe.setOn(true, animated: true)
        }
        if ingredientes[2]==1{
            sPavo.setOn(true, animated: true)
        }
        if ingredientes[3]==1{
            sSalch.setOn(true, animated: true)
        }
        if ingredientes[4]==1{
            sAceituna.setOn(true, animated: true)
        }
        if ingredientes[5]==1{
            sCebolla.setOn(true, animated: true)
        }
        if ingredientes[6]==1{
            sPimiento.setOn(true, animated: true)
        }
        if ingredientes[7]==1{
            sPinya.setOn(true, animated: true)
        }
        if ingredientes[8]==1{
            sAnchoa.setOn(true, animated: true)
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        pizza?.resetIngredientes()
        if sJamon.on{
            pizza?.setIngredientes(0, valor: 1)
        }
        if sPepe.on{
            pizza?.setIngredientes(1, valor: 1)
        }
        if sPavo.on{
            pizza?.setIngredientes(2, valor: 1)
        }
        if sSalch.on{
            pizza?.setIngredientes(3, valor: 1)
        }
        if sAceituna.on{
            pizza?.setIngredientes(4, valor: 1)
        }
        if sCebolla.on{
            pizza?.setIngredientes(5, valor: 1)
        }
        if sPimiento.on{
            pizza?.setIngredientes(6, valor: 1)
        }
        if sPinya.on{
            pizza?.setIngredientes(7, valor: 1)
        }
        if sAnchoa.on{
            pizza?.setIngredientes(8, valor: 1)
        }
        let vistaCocina=segue.destinationViewController as? VistaCocina
        vistaCocina?.pizza=self.pizza        
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
