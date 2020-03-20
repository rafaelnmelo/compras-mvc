//
//  SettingsViewController.swift
//  ComprasUSA
//
//  Created by Rafael Melo on 18/03/20.
//  Copyright © 2020 Rafael Melo. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var dolar: UITextField!
    @IBOutlet weak var iof: UITextField!
    @IBOutlet weak var stateTaxes: UITextField!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dolar.text = tc.getFormattedValue(of: tc.dolar, with: "")
        iof.text = tc.getFormattedValue(of: tc.iof, with: "")
        stateTaxes.text = tc.getFormattedValue(of: tc.stateTax, with: "")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func setValues() {
        tc.dolar = tc.convertToDouble(dolar.text!)
        tc.iof = tc.convertToDouble(iof.text!)
        tc.stateTax = tc.convertToDouble(stateTaxes.text!)
    }

}

extension SettingsViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        setValues()
    }
}
