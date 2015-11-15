//
//  VistaQueso.swift
//  PizzaSwift
//
//  Created by Victor Chisvert Amat on 15/11/15.
//  Copyright © 2015 Vicchiam. All rights reserved.
//

import UIKit

class VistaQueso: UIViewController {
    
    var pizza : Pizza? = nil
    
    @IBOutlet weak var bQueso: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        bQueso.selectedSegmentIndex=pizza!.getQueso()
        print(pizza!.toString())
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        pizza?.setQueso(bQueso.selectedSegmentIndex)
        let vistaIngredientes=segue.destinationViewController as? VistaIngredientes
        vistaIngredientes?.pizza=self.pizza
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
