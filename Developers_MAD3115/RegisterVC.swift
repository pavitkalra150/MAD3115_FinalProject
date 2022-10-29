//
//  RegisterVC.swift
//  Developers_MAD3115
//
//  Created by PAVIT KALRA on 2022-10-26.
//

import UIKit

class RegisterVC: UIViewController {

    
    @IBOutlet weak var VehicleColorPopUpBtn: UIButton!
    
    @IBOutlet weak var EmployeeTypePopUpBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        vehiclePopupButton()
        empTypePopupButton()
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
    
    func empTypePopupButton(){

        let optionClosure = {(action : UIAction) in
            print(action.title)}

        EmployeeTypePopUpBtn.menu = UIMenu(children : [
            UIAction(title : "Choose Type", state : .on, handler: optionClosure),
            UIAction(title : "Manager", handler: optionClosure),
            UIAction(title : "Programmer", handler: optionClosure),
            UIAction(title : "Tester", handler: optionClosure)])
    }
}
