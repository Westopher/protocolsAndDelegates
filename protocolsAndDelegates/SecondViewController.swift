//
//  ViewController2.swift
//  protocolsAndDelegates
//
//  Created by West Kraemer on 8/4/19.
//  Copyright © 2019 West Kraemer. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var data = ""
    
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var textField2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label2.text = data
    }
    

    @IBAction func sendDataBack(_ sender: Any) {
    }
    

}
