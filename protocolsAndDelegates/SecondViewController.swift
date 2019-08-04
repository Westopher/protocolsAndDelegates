//
//  ViewController2.swift
//  protocolsAndDelegates
//
//  Created by West Kraemer on 8/4/19.
//  Copyright © 2019 West Kraemer. All rights reserved.
//

import UIKit

protocol CanReceive {
    func dataReceived(dataProtocolParam: String)
}

class SecondViewController: UIViewController {

    var delegate: CanReceive?
    
    var data = ""
    
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var textField2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label2.text = data
    }
    

    @IBAction func sendDataBack(_ sender: Any) {
        guard let textfield2Safe = textField2.text else {
            print("textfield can not be assigned")
            return
        }
        
        delegate?.dataReceived(dataProtocolParam: textfield2Safe)
        dismiss(animated: true, completion: nil)
        
    }
    

}
