//
//  CoinRowView.swift
//  CryptoApp
//
//  Created by Sergio Sepulveda on 2021-07-21.
//

import SwiftUI
import Kingfisher

struct CoinRowView: View {
    
    let coin: Coin
    let showHoldingsColumn: Bool
    var body: some View {
        HStack(spacing: 0){

            leftColumn
            
            Spacer()
            
            if showHoldingsColumn {
                
                centerColumn
                
            }
            
            rightColumn
        }
        .font(.subheadline)
    }
}

struct CoinRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CoinRowView(coin: DummyData.dummyData, showHoldingsColumn: true)
                .previewLayout(.sizeThatFits)
            CoinRowView(coin: DummyData.dummyData, showHoldingsColumn: true)
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
        }
    }
}

extension CoinRowView {
    
    private var leftColumn: some View {
        HStack(spacing: 0) {
            Text("\(coin.rank)")
                .font(.caption)
                .foregroundColor(Color.theme.secondaryText)
                .frame(minWidth: 30)
            
            KFImage(URL(string:coin.image))
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
            
            Text(coin.symbol.uppercased())
                .font(.headline)
                .padding(.leading, 6)
                .foregroundColor(Color.theme.accent)
        }
    }
    
    private var centerColumn: some View {
        VStack(alignment: .leading) {
            Text(coin.currentHoldingsValue.asCurrencyWith2Decimal())
                .bold()
            Text((coin.currentHoldings ?? 0).asNumberString())
        }
        .foregroundColor(Color.theme.accent)

    }
    
    private var rightColumn: some View {
        
        VStack(alignment: .trailing) {
            
            Text(coin.currentPrice.asCurrencyWith6Decimal())
                .bold()
                .foregroundColor(Color.theme.accent)
            
            Text(coin.priceChangePercentage24H?.asPercentageString() ?? "0%")
                .foregroundColor(
                    (coin.priceChangePercentage24H ?? 0) >= 0 ? Color.theme.green : Color.theme.red
                )
        }
        .frame(width: UIScreen.main.bounds.width / 3.5, alignment: .trailing)
    }
    
}