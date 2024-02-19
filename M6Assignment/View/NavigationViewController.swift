//
//  NavigationViewController.swift (should be called CalculationsViewController)
//  M6Assignment
//
//  Created by Emma Brennan on 2/18/24.
//

import UIKit

class NavigationViewController: UIViewController {
    
    var usdAmount = 0
    var blank = " "
    
    var cur1 = true
    var cur2 = true
    var cur3 = true
    var cur4 = true
    
    var cur1Output : Double = 0
    var cur2Output : Double = 0
    var cur3Output : Double = 0
    var cur4Output : Double = 0
    
    // there is an issue with these variables because even hardcoding the results would not assign value to the labels
    
    @IBOutlet weak var usdLabel: UILabel!
    @IBOutlet weak var cur1Label: UILabel!
    @IBOutlet weak var cur2Label: UILabel!
    @IBOutlet weak var cur3Label: UILabel!
    @IBOutlet weak var cur4Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usdLabel.text = "Amount in USD: $\(usdAmount)"
        
        // get switch values to decide which currencies will show & perform calculations
        if cur1 {
            cur1Label.text = "Euros $\(cur1Output)"
        } else {
            cur1Label.text = blank
        }
        if cur2 {
            cur2Label.text = "Canadian Dollars $\(cur2Output)"
        } else {
            cur2Label.text = blank
        }
        if cur3 {
            cur3Label.text = "Chinese Yuan $\(cur3Output)"
        } else {
            cur3Label.text = blank
        }
        if cur4 {
            cur4Label.text = "Mexican Pesos $\(cur4Output)"
        } else {
            cur4Label.text = blank
        }

        // Do any additional setup after loading the view.
        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
