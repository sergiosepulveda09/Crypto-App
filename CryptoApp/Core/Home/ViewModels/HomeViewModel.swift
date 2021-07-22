//
//  HomeViewModel.swift
//  CryptoApp
//
//  Created by Sergio Sepulveda on 2021-07-21.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    @Published var allCoins: [Coin] = []
    @Published var portfolioCoins: [Coin] = []
    
    init() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.allCoins.append(DummyData.dummyData)
            self.portfolioCoins.append(DummyData.dummyData)
        }
    }
    
}
