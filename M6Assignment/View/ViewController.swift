//
//  ViewController.swift
//  M6Assignment
//
//  Created by Emma Brennan on 2/18/24.
//

import UIKit

class ViewController: UIViewController {
    
    var currencyLogic = CurrencyLogic()
    var usdAmount = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // set listener for validate text input
    @IBAction func usdInput(_ sender: UITextField) {
        // I was unable to format this properly and used a hardcoded value of $900 USD for calculations
    }
    
    // set listeners for switches
    @IBAction func cur1Switch(_ sender: UISwitch) {
        currencyLogic.setCur1(sender.isOn)
    }
    
    @IBAction func cur2Switch(_ sender: UISwitch) {
        currencyLogic.setCur2(sender.isOn)
    }
    
    @IBAction func cur3Switch(_ sender: UISwitch) {
        currencyLogic.setCur3(sender.isOn)
    }
    
    @IBAction func cur4Switch(_ sender: UISwitch) {
        currencyLogic.setCur4(sender.isOn)
    }
    
    
    @IBAction func navigate(_ sender: UIButton) {
        self.performSegue(withIdentifier: "toNavigation", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "toNavigation" {
            let navigation = segue.destination as! NavigationViewController
            navigation.usdAmount = usdAmount
            navigation.cur1 = currencyLogic.cur1Bool
            navigation.cur1Output = currencyLogic.cur1Val
            navigation.cur2 = currencyLogic.cur2Bool
            navigation.cur2Output = currencyLogic.cur2Val
            navigation.cur3 = currencyLogic.cur3Bool
            navigation.cur3Output = currencyLogic.cur3Val
            navigation.cur4 = currencyLogic.cur4Bool
            navigation.cur4Output = currencyLogic.cur4Val

        }
    }
    
}

