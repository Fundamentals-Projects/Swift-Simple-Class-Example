//
//  Movie.swift
//  Swift-Simple-Class-Example
//
//  Created by Omairys Uzcátegui on 2021-06-10.
//

import Foundation
class Movie : Producction{
    var cinema: [String] = []
    var income: [Double] = []
    
    init(no: Int, title: String, year: Int, cinema: [String], income: [Double]) {
        self.cinema = cinema
        self.income = income
        super.init(no: no, title: title, year: year)
    }
    
    override func findIncome() -> Double {
        var total = 0.0
        for  i in self.income {
            total = total + i
        }
        return (total*1000000)*0.60
    }
    
    override func printDetails() {
        super.printDetails()
        print("Cinema:\(self.cinema)    Income:\(self.income)")
    }
}
