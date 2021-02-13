//
//  ViewController.swift
//  Demo
//
//  Created by hieungan on 11/11/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textLabel: UILabel!
    var backgroundColor: UIColor!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        backgroundColor = view.backgroundColor
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func changeTextColorButton(_ sender: Any) {
        print("Hello from Ngan")
        textLabel.textColor = UIColor.blue
    }
    
    @IBAction func changeBGColor(_ sender: Any) {
        view.backgroundColor = UIColor.red
    }
    
    @IBAction func changeLabelcolor(sender: Any)
    {
        textLabel = UIColor.yellow
    }
    
    @IBAction func changeText(_ sender: Any) {
        if textField.text == "" {
            textLabel.text = "default"
        }
        else{
            textLabel.text = textField.text }
        textField.text = ""
        view.endEditing(true)
        
    }
   
    @IBAction func onResetGesture(_ sender: Any) {
        textLabel.text = "Hello from Ngan"
        view.backgroundColor = backgroundColor
        textLabel.textColor = UIColor.black
    }
}

