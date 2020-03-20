//
//  ShoppingViewController.swift
//  ComprasUSA
//
//  Created by Rafael Melo on 18/03/20.
//  Copyright © 2020 Rafael Melo. All rights reserved.
//

import UIKit

class ShoppingViewController: UIViewController {

    @IBOutlet weak var dolar: UITextField!
    @IBOutlet weak var realDescription: UILabel!
    @IBOutlet weak var real: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setAmmount()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        dolar.resignFirstResponder()
        setAmmount()
    }
    
    func setAmmount() {
        tc.shoppingValue = tc.convertToDouble(dolar.text!)
        real.text = tc.getFormattedValue(of: tc.shoppingValue * tc.dolar, with: "R$ ")
        let dolar = tc.getFormattedValue(of: tc.dolar, with: "")
        realDescription.text = "Valor sem impostos (dólar \(dolar))"
    }

}

