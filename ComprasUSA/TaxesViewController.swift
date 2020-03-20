//
//  TaxesViewController.swift
//  ComprasUSA
//
//  Created by Rafael Melo on 18/03/20.
//  Copyright © 2020 Rafael Melo. All rights reserved.
//

import UIKit

class TaxesViewController: UIViewController {

    @IBOutlet weak var dolar: UILabel!
    @IBOutlet weak var stateTaxes: UILabel!
    @IBOutlet weak var stateTaxesDescription: UILabel!
    @IBOutlet weak var iof: UILabel!
    @IBOutlet weak var iofDescription: UILabel!
    @IBOutlet weak var creditCard: UISwitch!
    @IBOutlet weak var real: UILabel!
        
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        calculateTaxes()
    }
    
    @IBAction func changeIOF(_ sender: UISwitch) {
        calculateTaxes()
    }
    
    
    func calculateTaxes() {
        stateTaxesDescription.text = "Imposto do Estado (\(tc.getFormattedValue(of: tc.stateTax, with: ""))%)"
        iofDescription.text = "IOF (\(tc.getFormattedValue(of: tc.iof, with: ""))%)"
        
        dolar.text = tc.getFormattedValue(of: tc.shoppingValue, with: "U$$")
        stateTaxes.text = tc.getFormattedValue(of: tc.stateTaxValue, with: "U$$")
        iof.text = tc.getFormattedValue(of: tc.iofValue, with: "U$$")
        
        let realValue = tc.calculate(usingCreditCard: creditCard.isOn)
        real.text = tc.getFormattedValue(of: realValue, with: "R$ ")
    }

}
