//
//  DummyData.swift
//  CryptoApp
//
//  Created by Sergio Sepulveda on 2021-07-21.
//

import Foundation


struct DummyData {
    static let dummyData: Coin = Coin(id: "bitcoin", symbol: "btc", name: "Bitcoin", image: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579", currentPrice: 40174, marketCap: 753773047508, marketCapRank: 1, fullyDilutedValuation: 843653253867, totalVolume: 30519755940, high24H: 40717, low24H: 37525, priceChange24H: 2404.18, priceChangePercentage24H: 6.36536, marketCapChange24H: 45276085045, marketCapChangePercentage24H: 6.39044, circulatingSupply: 18762725, totalSupply: 21000000, maxSupply: 21000000, ath: 81381, athChangePercentage: -50.63459, athDate: "2021-04-14T11:54:46.763Z", atl: 69.81, atlChangePercentage: 57450.46374, atlDate: "2013-07-05T00:00:00.000Z", lastUpdated: "2021-07-21T17:20:22.785Z", sparklineIn7D: SparklineIn7D(price: [32492.588253776114]), priceChangePercentage24HInCurrency: 6.365358606443245, currentHoldings: 2)
    
    static let homeVM = HomeViewModel()
    
}
