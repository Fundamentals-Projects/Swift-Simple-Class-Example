//
//  Series.swift
//  Swift-Simple-Class-Example
//
//  Created by Omairys Uzcátegui on 2021-06-10.
//

import Foundation

class Series: Producction {
    var noEpisodies: Int
    var noChannels: Int
    
    init(no: Int, title: String, year: Int, noEpisodies:Int, noChannels: Int) {
        self.noEpisodies = noEpisodies
        self.noChannels = noChannels
        super.init(no: no, title: title, year: year)
    }
    
    override func findIncome() -> Double {
        let total = (50000.0 * Double(self.noEpisodies)) * Double(self.noChannels)
        return total
    }
    override func printDetails() {
        super.printDetails()
        print("noEpisodies:\(self.noEpisodies)    noChannels:\(self.noChannels)")
    }
}
