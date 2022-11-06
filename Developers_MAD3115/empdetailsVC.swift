//
//  empdetailsVC.swift
//  Developers_MAD3115
//
//  Created by Sai Sumanth Nissankara rao on 2022-11-04.
//

import UIKit

class empdetailsVC: UIViewController {

    var empName:String?

    @IBOutlet weak var empdetailstxt: UILabel!
    
    weak var delegate: HomeController?
    override func viewDidLoad() {
        super.viewDidLoad()
        empdetailstxt.text = self.empName
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
