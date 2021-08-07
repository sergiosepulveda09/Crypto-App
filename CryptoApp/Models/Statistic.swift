//
//  Statistic.swift
//  CryptoApp
//
//  Created by Sergio Sepulveda on 2021-08-06.
//

import Foundation


struct Statistic: Identifiable {
    let id = UUID().uuidString
    let title: String
    let value: String
    let percentageChange: Double?
    
    init(title: String, value: String, percentageChange: Double? = nil) {
        self.title = title
        self.value = value
        self.percentageChange = percentageChange
        
    }

}


