//
//  ViewController.swift
//  Developers_MAD3115
//
//  Created by PAVIT KALRA on 2022-10-26.
//

import UIKit

class HomeController: UIViewController {
    
    @IBOutlet var logo: UIImage!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func Addbutton(_ sender: UIButton) {
        let mainSB : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let ListVC = mainSB.instantiateViewController(withIdentifier: "ListVC")
        
        navigationController?.pushViewController(ListVC, animated: true)
    }
    

}

