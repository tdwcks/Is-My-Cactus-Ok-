//
//  ResultViewController.swift
//  DemoSwiftyCam
//
//  Created by Tom Wicks on 29/05/2017.
//  Copyright © 2017 Cappsule. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let quoteArray = ["Not at all bad", "No problems here.", "Couldn't be better", "Like a pig in muck", "Bliss is it to be alive", "Bearing up nicely", "No complaints here!", "Ca va tres bien"]
        self.randomPhrase.text = quoteArray[Int(arc4random_uniform(UInt32(quoteArray.count)))]

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var randomPhrase: UILabel!

    @IBAction func CheckAnother(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
