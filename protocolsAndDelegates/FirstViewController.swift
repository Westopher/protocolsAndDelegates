//
//  ViewController1.swift
//  protocolsAndDelegates
//
//  Created by West Kraemer on 8/4/19.
//  Copyright © 2019 West Kraemer. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func sendButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "sendButtonForward", sender: self)
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendButtonForward" {
            let secondVC = segue.destination as! SecondViewController
            secondVC.data = textField.text!
        }
    }

}
