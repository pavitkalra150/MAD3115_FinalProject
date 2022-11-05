//
//  EmployeeListVC.swift
//  Developers_MAD3115
//
//  Created by PAVIT KALRA on 2022-11-03.
//

import UIKit

struct Employees {
    let firstName: String?
    let lastName: String?
    let birthYear: String?
    let monthlySalary: String?
    let occupationRate: String?
    let employeeId: String?
    let vehicleModel: String?
    let plateNumber: String?
    let vehicle: String?
    let vehicleColor: String?
    //let employeeType: String?
}

class EmployeeListVC: UIViewController,UITableViewDelegate, UITableViewDataSource{
    
    var employeeNames: [Employees] = [] 

    var empname:String?
    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return employeeNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let item =  employeeNames[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! EmployeeListCell
        cell.EmployeeName.text = item.firstName
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            
            let mainSB : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let empdetailsVC = mainSB.instantiateViewController(withIdentifier: "empscene") as! empdetailsVC
            navigationController?.pushViewController(empdetailsVC, animated: true)
     default:
            print("No Action")
        }
    }
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? empdetailsVC {
            destination.empName = employeeNames[0].lastName
            //destination.delegate = self
        }
    }
    func addNewEmployee(employee: Employees) {
        employeeNames.append(employee)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        table.reloadData()
    }
    @IBAction func AddEmpBtn(_ sender: UIButton) {
        let mainSB : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let RegisterScene = mainSB.instantiateViewController(withIdentifier: "RegisterScene")
        
        navigationController?.pushViewController(RegisterScene, animated: true)
    }
    
    
}
