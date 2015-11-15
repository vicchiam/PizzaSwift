//
//  VistaCocina.swift
//  PizzaSwift
//
//  Created by Victor Chisvert Amat on 15/11/15.
//  Copyright © 2015 Vicchiam. All rights reserved.
//

import UIKit

class VistaCocina: UIViewController {
    
    var pizza : Pizza? = nil
    
    @IBOutlet weak var texto: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        texto.text=pizza!.toString()
    }

    @IBAction func cocinar(sender: UIButton) {
        if pizza!.countIngredientes()<1 || pizza!.countIngredientes()>5{
            let alert=UIAlertController(title: "Error en ingredientes", message: "Debes indicar entre 1 y 5 ingredientes", preferredStyle: .Alert)
            let okAction=UIAlertAction(title: "OK", style: .Default){ (action) in }
            alert.addAction(okAction)
            self.presentViewController(alert, animated: true, completion: nil)
        }
        else{
            let alert=UIAlertController(title: "Enviar a cocina", message: "¿Seguro que lo desea enviar a cocina?", preferredStyle: .Alert)
            let yesAction=UIAlertAction(title: "Cocinar", style: .Default){ (action) in
                print("SI")
                self.cocinar()
            }
            let noAction=UIAlertAction(title: "Cancelar", style: .Default){ (action) in
                print("NO")
            }
            
            alert.addAction(noAction)
            alert.addAction(yesAction)
            self.presentViewController(alert, animated: true, completion: nil)
        }
    }
    
    func cocinar(){
        let alert=UIAlertController(title: "Enviado a cocina", message: "Pizza cocinandose...", preferredStyle: .Alert)
        let okAction=UIAlertAction(title: "OK", style: .Default){ (action) in
            self.navigationController?.popToRootViewControllerAnimated(true)
        }
        alert.addAction(okAction)
        self.presentViewController(alert, animated: true, completion: nil)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
