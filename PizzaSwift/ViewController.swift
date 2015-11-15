//
//  ViewController.swift
//  PizzaSwift
//
//  Created by Victor Chisvert Amat on 15/11/15.
//  Copyright © 2015 Vicchiam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var pizza : Pizza = Pizza()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        pizza=Pizza()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let vistaTamanyo=segue.destinationViewController as? VistaTamanyo
        vistaTamanyo!.pizza=self.pizza
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

