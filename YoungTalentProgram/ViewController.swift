//
//  ViewController.swift
//  YoungTalentProgram
//
//  Created by Feyyaz ONUR on 5.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var switchTheme: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func switchTheme(_ sender: UISwitch) {
        if #available(iOS 13.0, *) {
            if sender.isOn {
                overrideUserInterfaceStyle = .dark
                return
            } else {
                overrideUserInterfaceStyle = .light
                return
            }
        }
    }
    
}

