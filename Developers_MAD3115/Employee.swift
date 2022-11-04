//
//  Employee.swift
//  Developers_MAD3115
//
//  Created by PAVIT KALRA on 2022-11-03.
//

import Foundation

struct Employee {
    let firstName: String
    let lastName: String
    let birthYear: String
    let postalCode: String
    let city: String
    let vehicle: String
    let dob: Date
    
    static var userList = [String: Employee]()
    
    static func addUser(newUser: Employee) -> Bool {
        if self.userList[newUser.firstName] == nil {
            self.userList[newUser.firstName] = newUser
            return true
        }
        
        return false
    }
    
//    static func searchUser(email: String) -> Employee? {
//        if self.userList[email] != nil{
//            return self.userList[email]
//        }
//
//        return nil
//    }
    
//    static func deleteUser(email: String) -> Bool{
//        if self.userList[email] != nil{
//            self.userList[email] = nil
//            return true
//        }
//
//        return false
//    }
}
