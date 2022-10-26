//
//  ViewController.swift
//  Developers_MAD3115
//
//  Created by PAVIT KALRA on 2022-10-26.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func Addbutton(_ sender: UIButton) {
        let mainSB : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let RegisterScene = mainSB.instantiateViewController(withIdentifier: "RegisterScene")
        
        navigationController?.pushViewController(RegisterScene, animated: true)
    }
    

}

