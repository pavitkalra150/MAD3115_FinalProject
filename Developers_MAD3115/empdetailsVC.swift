//
//  empdetailsVC.swift
//  Developers_MAD3115
//
//  Created by Sai Sumanth Nissankara rao on 2022-11-04.
//

import UIKit

class empdetailsVC: UIViewController {
//    struct Employees {
//        let firstName: String?
//        let lastName: String?
//        let birthYear: String?
//        let monthlySalary: String?
//        let occupationRate: String?
//        let employeeId: String?
//        let vehicleModel: String?
//        let plateNumber: String?
//        let vehicle: String?
//        let vehicleColor: String?
//        let calculateInt: String?
//        let employeeType: String?
//        //let employeeType: String?
//    }
    var empName:String?
    //var test: Int = 0
    @IBOutlet weak var empdetailstxt: UILabel!
//    var data: [Employees] = []
//    weak var delegate: HomeController?
    override func viewDidLoad() {
        super.viewDidLoad()
        empdetailstxt.text = self.empName
        // Do any additional setup after loading the view.
        //empdetailstxt.text = data.firstName
        //print(test)
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
