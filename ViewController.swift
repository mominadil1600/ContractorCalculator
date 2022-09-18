//
//  ViewController.swift
//  ContractCalculator
//
//  Created by Adil Momin on 4/5/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var laboLabel: UITextField!
    @IBOutlet weak var materialLabor: UITextField!
    @IBOutlet weak var subTotal: UILabel!
    @IBOutlet weak var tax: UILabel!
    @IBOutlet weak var total: UILabel!
    
    @IBAction func ctnCalculate(_ sender: Any) {
        
        //Constant Tax Rate
        let rate = 0.05
        
        //Calculations
        let labor = Double(laboLabel.text!)
        let material = Double(materialLabor.text!)
        let subtotal = Double(labor! + material!)
        let taxCalculate = Double(subtotal * rate)
        let totalActual = Double(taxCalculate + subtotal)
        
        
        subTotal.text = String(format: "$%.2f", subtotal)
        tax.text = String(format: "$%.2f", taxCalculate)
        total.text = String(format: "$%.2f",totalActual)
        
        //Commit
        //commit 2
        
        
        
        
    }
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    

}

