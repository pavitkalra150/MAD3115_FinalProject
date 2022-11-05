//
//  RegisterVC.swift
//  Developers_MAD3115
//
//  Created by PAVIT KALRA on 2022-10-26.
//

import UIKit

class RegisterVC: UIViewController {

    
    @IBOutlet weak var VehicleColorPopUpBtn: UIButton!
    //@IBOutlet weak var EmployeeTypePopUpBtn: UIButton!
     
    
    @IBOutlet weak var firstNametxt: UITextField!
    @IBOutlet weak var lastNametxt: UITextField!
    @IBOutlet weak var birthYeartxt: UITextField!
    @IBOutlet weak var monthlySalarytxt: UITextField!
    @IBOutlet weak var occupationRatetxt: UITextField!
    @IBOutlet weak var employeeIdtxt: UITextField!
    @IBOutlet weak var vehicleModeltxt: UITextField!
    @IBOutlet weak var plateNumbertxt: UITextField!
    @IBOutlet weak var cartypelbl: UILabel!
    @IBOutlet weak var cartypetxt: UITextField!
    @IBOutlet weak var sidecarlbl: UILabel!
    @IBOutlet weak var sidecarseg: UISegmentedControl!
    @IBOutlet weak var managerlbl: UILabel!
    @IBOutlet weak var programmerlbl: UILabel!
    @IBOutlet weak var testerlbl: UILabel!
    @IBOutlet weak var managertxt: UITextField!
    @IBOutlet weak var programmertxt: UITextField!
    @IBOutlet weak var testertxt: UITextField!
    
    @IBOutlet weak var segemptype: UISegmentedControl!
    @IBOutlet weak var vehicleSeg: UISegmentedControl!
    var userInfo:String = ""
    var vehicle: String!
    var calculateInt: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        vehiclePopupButton()
       // empTypePopupButton()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        self.title = "Registration Form"
        navigationController?.setNavigationBarHidden(false, animated: true)
        let btnSubmit = UIBarButtonItem(title: "Submit", style: .plain, target: self, action: #selector(displayInfo))
        self.navigationItem.rightBarButtonItem = btnSubmit
    }
    
    func vehiclePopupButton(){

        let optionClosure = {(action : UIAction) in
            print(action.title)}

        VehicleColorPopUpBtn.menu = UIMenu(children : [
            UIAction(title : "Choose Color", state : .on, handler: optionClosure),
            UIAction(title : "Red", handler: optionClosure),
            UIAction(title : "Blue", handler: optionClosure),
            UIAction(title : "Yellow", handler: optionClosure),
            UIAction(title : "Green", handler: optionClosure),
            UIAction(title : "Orange", handler: optionClosure),
            UIAction(title : "Purple", handler: optionClosure),
            UIAction(title : "Pink", handler: optionClosure),
            UIAction(title : "Brown", handler: optionClosure),
            UIAction(title : "White", handler: optionClosure),
            UIAction(title : "Black", handler: optionClosure),
            UIAction(title : "Beige", handler: optionClosure)])
  }
    
    /*func empTypePopupButton(){

        let optionClosure = {(action : UIAction) in
            print(action.title)}

        EmployeeTypePopUpBtn.menu = UIMenu(children : [
            UIAction(title : "Choose Type", state : .on, handler: optionClosure),
            UIAction(title : "Manager", handler: optionClosure),
            UIAction(title : "Programmer", handler: optionClosure),
            UIAction(title : "Tester", handler: optionClosure)])
    }*/
    
    private func showError(_ alert: UIAlertController) {
        let action = UIAlertAction(title: "Retry", style: .cancel)
        alert.addAction(action)
        present(alert, animated: true)
    }
    
    
    
    @objc func displayInfo(){
        userInfo += "First Name :" + firstNametxt.text!
        userInfo += "\nLast Name:" + lastNametxt.text!
        userInfo += "\nbirth year:" + birthYeartxt.text!
        userInfo += "\nSalary:" + monthlySalarytxt.text!
        userInfo += "\nOccupation Rate:" + occupationRatetxt.text!
        userInfo += "\nEmp Id:" + employeeIdtxt.text!
        userInfo += "\nvehicle Model:" + vehicleModeltxt.text!
        userInfo += "\nplate no:" + plateNumbertxt.text!
        switch vehicleSeg.selectedSegmentIndex {
        case 0:
            userInfo += "\n Car"
            userInfo += "\ncar Type : " + cartypetxt.text!
            vehicle = "Car" + cartypetxt.text!
        case 1:
            userInfo += "\n Motorbike"
            switch sidecarseg.selectedSegmentIndex{
            case 0:
                userInfo += "\nHas side car "
                vehicle = "Motorbike and a sidecar"
            case 1:
                userInfo += "\nno side car "
                vehicle = "Motorbike without a sidecar"
            default:
                userInfo += "\n "
                vehicle = "Motorbike and a sidecar"
            }
        default:
            userInfo += "\n Car"
            vehicle = "Car"
        }
      
        switch segemptype.selectedSegmentIndex {
        case 0:
            userInfo += "\nno of clients:" + managertxt.text!
            calculateInt = managertxt.text!
        case 1:
            userInfo += "\nno of projects:" + programmertxt.text!
            calculateInt = programmertxt.text!
        case 2:
            userInfo += "\nno of bugs:" + testertxt.text!
            calculateInt = testertxt.text!
        default:
            userInfo += " "
        }
       
        let infoAlert = UIAlertController(title: "Verify Details", message: userInfo, preferredStyle: .alert)
        for case let textField as UITextField in self.view.subviews {
            if textField.text == "" {
                // show error
                infoAlert.message = "you should fill all fields"
                showError(infoAlert)
                return
            }
        }
        infoAlert.addAction(UIAlertAction(title: "Confirm", style: .default, handler: {_ in self.displayEmployeeListVC()}))
        infoAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        self.present(infoAlert, animated: true, completion: nil)
    }
    
    func displayEmployeeListVC(){
        let ListVC : EmployeeListVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ListVC") as! EmployeeListVC
        let Emp = Employees(firstName: firstNametxt.text!, lastName: lastNametxt.text!, birthYear: birthYeartxt.text!, monthlySalary: monthlySalarytxt.text!, occupationRate: occupationRatetxt.text!, employeeId: employeeIdtxt.text!, vehicleModel: vehicleModeltxt.text!, plateNumber: plateNumbertxt.text!, vehicle: vehicle, vehicleColor: VehicleColorPopUpBtn.currentTitle!, calculateInt: calculateInt  //employeeType: EmployeeTypePopUpBtn.currentTitle!
        )
//                ListVC.firstName = firstNametxt.text!
//                ListVC.lastName = lastNametxt.text!
//                ListVC.birthYear = birthYeartxt.text!
//                ListVC.monthlySalary = monthlySalarytxt.text!
//                ListVC.occupationRate = occupationRatetxt.text!
//                ListVC.employeeId = employeeIdtxt.text!
//                ListVC.vehicle = vehicle!
//                ListVC.plateNumber = plateNumbertxt.text!
            ListVC.addNewEmployee(employee: Emp)
            navigationController?.pushViewController(ListVC, animated: true)
    }

    @IBAction func vehicleselection() {
        switch vehicleSeg.selectedSegmentIndex{
        case 0:
            cartypelbl.isHidden = false
            cartypetxt.isHidden = false
            sidecarlbl.isHidden = true
            sidecarseg.isHidden = true
        case 1:
            sidecarlbl.isHidden = false
            sidecarseg.isHidden = false
            cartypelbl.isHidden = true
            cartypetxt.isHidden = true
        default:
            break
        }
    }
    
    @IBAction func emptype() {
        switch segemptype.selectedSegmentIndex{
        case 0:
            managerlbl.isHidden = false
            managertxt.isHidden = false
            programmerlbl.isHidden = true
            programmertxt.isHidden = true
            testerlbl.isHidden = true
            testertxt.isHidden = true
        case 1:
            managerlbl.isHidden = true
            managertxt.isHidden = true
            programmerlbl.isHidden = false
            programmertxt.isHidden = false
            testerlbl.isHidden = true
            testertxt.isHidden = true
        case 2:
            managerlbl.isHidden = true
            managertxt.isHidden = true
            programmerlbl.isHidden = true
            programmertxt.isHidden = true
            testerlbl.isHidden = false
            testertxt.isHidden = false
        default:break
        }
        
        
    }
    
    
    //    @IBAction func registerBtn(_ sender: UIButton) {
//
//        let ListVC : EmployeeListVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ListVC") as! EmployeeListVC
//
//        ListVC.firstname = firstNametxt.text!
//        ListVC.lastname = lastNametxt.text!
////        ListVC.birthyear = birthYeartxt.text!
////        ListVC.monthlySalary = monthlySalarytxt.text!
////        ListVC.occupationRate = occupationRatetxt.text!
////        ListVC.employeeId = employeeIdtxt.text!
//
//        navigationController?.pushViewController(ListVC, animated: true)
//
//    }
    
}
