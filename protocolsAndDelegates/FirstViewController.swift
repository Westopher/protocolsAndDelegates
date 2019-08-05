//
//  ViewController1.swift
//  protocolsAndDelegates
//
//  Created by West Kraemer on 8/4/19.
//  Copyright © 2019 West Kraemer. All rights reserved.
//

import UIKit

//**************2(conform to can receive)
class FirstViewController: UIViewController, CanReceive {
   
    //**************3(implement method of the protocol. Inside the method assign the data being passed to the place it should go)
    func dataReceived(dataProtocolParam: String) {
        label.text = dataProtocolParam
    }
    
    
    //IBOutlets
    @IBAction func blueButtonPressed(_ sender: Any) {
        view.backgroundColor = UIColor.red
    }

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textField: UITextField!

    @IBAction func sendButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "sendButtonForward", sender: self)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //Send Information forward
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendButtonForward" {
            let secondVC = segue.destination as! SecondViewController
            secondVC.data = textField.text!
            
            //**************6(set the delegate of the secondVC to self from the prepare segue)
            secondVC.delegate = self
        }
    }

}
