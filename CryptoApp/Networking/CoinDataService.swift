//
//  CoinDatService.swift
//  CryptoApp
//
//  Created by Sergio Sepulveda on 2021-07-21.
//

import Foundation
import Combine
class CoinDataService {
    
    @Published var allCoins: [Coin] = []
    var coinSubscription: AnyCancellable?
    
    init() {
        getCoins()
    }
    private func getCoins() {
        guard let url = URL(string: "https://api.coingecko.com/api/v3/coins/markets?vs_currency=cad&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=24h") else {
            print("URL not found")
            return
        }
        
        coinSubscription = NetworkingManager.download(url: url)
            .decode(type: [Coin].self, decoder: JSONDecoder())
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] (returnedCoins) in
                self?.allCoins = returnedCoins
                self?.coinSubscription?.cancel()
            })
        
    }
    
    
}
