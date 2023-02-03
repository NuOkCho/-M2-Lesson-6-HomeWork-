//
//  DataBase.swift
//  (M2)Lesson-6(HomeWork)
//
//  Created by Ahmed Muvaza on 3/2/23.
//

import Foundation

class DataBase{
    var userArray: [User] = []
    func addUser(add:User) {
        userArray.append(add)
    }
    func showInfo(){
        for i in userArray{
            print("\(i.name), \(i.surname), \(i.code.rawValue)\(i.number)")
        }
    }
    func printUserCountry(code: CountryCode){
        for user in userArray where user.code == code {
            print("\(user.name), \(user.surname), \(user.number), \(user.code)")
            
        }
    }
}

