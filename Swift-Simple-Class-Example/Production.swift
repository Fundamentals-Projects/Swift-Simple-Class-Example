//
//  Production.swift
//  Swift-Simple-Class-Example
//
//  Created by Omairys Uzcátegui on 2021-06-10.
//

import Foundation

class Producction{
    var no: Int
    var title: String
    var year: Int
    
    init(no: Int, title: String, year:Int) {
        self.no = no
        self.title = title
        self.year = year
    }
    func findIncome() -> Double {
        return 0.0
    }
    
    func printDetails() {
        print("Number:\(self.no)    Title:\(self.title)   Year:\(self.year)")
    }
}
