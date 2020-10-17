//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Tarokh on 8/4/20.
//  Copyright © 2020 Tarokh. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    // define some variables
    var amountPerPersonValue: Double?
    var tipSelection: Int?
    var numberOfPeople: Double?
    
    // define some @IBOutlets
    @IBOutlet var tipLabel: UILabel!
    @IBOutlet var amountPerPersonLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let formattedPeople = String(format: "%.0f", numberOfPeople!)
        // Do any additional setup after loading the view.
        self.amountPerPersonLabel.text = String(format: "%.1f", amountPerPersonValue!)
        self.tipLabel.text = "Split between \(formattedPeople) people, with \(tipSelection!)% tip."
    }
    
    // define some functions
    @IBAction func reCalculateButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
