//
//  ViewController.swift
//  KecepatanRataRata
//
//  Created by Rizki Syaputra on 10/12/17.
//  Copyright © 2017 Rizki Syaputra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var etDistance: UITextField!
    @IBOutlet weak var etSpeed: UITextField!
    @IBOutlet weak var labelResult: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnHitung(_ sender: Any) {
    
        if etSpeed.text == "0" && etDistance.text == "0" {
            let alertController = UIAlertController(title: "Warning",
                                                    message: "You Must Fill The Column Exactly", preferredStyle : .alert)
            alertController.addAction(UIAlertAction(title: "Agree",
                                                    style: .default,handler: nil))
            alertController.addAction(UIAlertAction(title: "Not Agree",
                                                    style: .default,handler: nil))
            present(alertController, animated: true, completion: nil)
            }else if etSpeed.text == ""  &&  etDistance.text == "" {
                let alertController = UIAlertController(title: "Warning",
                                                        message: "You Must Fill The Column Exactly", preferredStyle : .alert)
                alertController.addAction(UIAlertAction(title: "Agree",
                                                        style: .default,handler: nil))
                alertController.addAction(UIAlertAction(title: "Not Agree",
                                                        style: .default,handler: nil))
                present(alertController, animated: true, completion: nil)
            }else{
                let nilaiSpeed : Int? = Int(etSpeed.text!)
                let nilaiDistance : Int? = Int(etDistance.text!)
                
                let hasil : Int = nilaiDistance! / nilaiSpeed!
                
                labelResult.text = "Result = \(hasil) minutes"
            }
        func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.


}

    }}
