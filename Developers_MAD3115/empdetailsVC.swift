//
//  empdetailsVC.swift
//  Developers_MAD3115
//
//  Created by Sai Sumanth Nissankara rao on 2022-11-04.
//

import UIKit

class empdetailsVC: UIViewController {

    var firstName:String?
    var lastName: String?
    var birthYear: String?
    var monthlySalary: String?
    var occupationRate: String?
    var employeeId: String?
    var vehicleModel: String?
    var plateNumber: String?
    var vehicle: String?
    var vehicleColor: String?
    var calculateInt: String?
    var employeeType: String?
    var vehicleSide: String?
    var carType: String?
    
    @IBOutlet weak var Name: UILabel!
    @IBOutlet weak var emptype: UILabel!
    @IBOutlet weak var Age: UILabel!
    @IBOutlet weak var empVehicle: UILabel!
    @IBOutlet weak var model: UILabel!
    @IBOutlet weak var plate: UILabel!
    @IBOutlet weak var color: UILabel!
    @IBOutlet weak var type: UILabel!
    @IBOutlet weak var rate: UILabel!
    @IBOutlet weak var annualSalary: UILabel!
    @IBOutlet weak var number: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayEmployeeDetails()
        calculateAge()
        annualIncome()
    }
    
    func displayEmployeeDetails(){
        Name.text = firstName! + " " + lastName!
        emptype.text = "Employee Type: " + employeeType!
        empVehicle.text = "Employee has a " + vehicle!
        model.text = "- Model: " + vehicleModel!
        plate.text = "- Plate: " + plateNumber!
        color.text = "- Color: " + vehicleColor!
        
        if(vehicle == "Car"){
            type.text = "- Type: " + carType!
        }
        if(vehicle == "Motorbike"){
            type.text = "- " + vehicleSide!
        }
        rate.text = "Occupation Rate: " + occupationRate! + "%"
        
    }
    func calculateAge(){
        var age = 0
        let ageyear = Int(birthYear!)
        age = 2022 - (ageyear ?? 1999)
        let presentAge = String(age)
        Age.text = "Age: " + presentAge
    }
    
    func annualIncome(){
        var finalSalary: Float
        var gain: Float
        let gainInt = Int(calculateInt!) ?? 5
        let monthly = Int(monthlySalary!) ?? 3000
        let rate = Float(occupationRate!) ?? 80
        let baseIncome = Float(monthly * 12)
        let finalRate = Float(rate / 100)
        let finalbaseIncome = baseIncome * finalRate
        if (employeeType == "Manager"){
            gain = Float(500 * gainInt)
            finalSalary = Float(finalbaseIncome + gain)
            annualSalary.text = "$ " + String(finalSalary)
            number.text = "He/She has brought " + calculateInt! + " new clients"
        }
        if (employeeType == "Programmer"){
            gain = Float(200 * gainInt)
            finalSalary = Float(finalbaseIncome + gain)
            let salary = String(finalSalary)
            annualSalary.text = "$ " + salary
            number.text = "He/She has completed " + calculateInt! + " projects"
        }
        if (employeeType == "Tester"){
            gain = Float(10 * gainInt)
            finalSalary = Float(finalbaseIncome + gain)
            let salary = String(finalSalary)
            annualSalary.text = "$ " + salary
            number.text = "He/She has corrected " + calculateInt! + " bugs"
        }
    }

}
