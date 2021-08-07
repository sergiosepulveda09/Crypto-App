//
//  StatisticView.swift
//  CryptoApp
//
//  Created by Sergio Sepulveda on 2021-08-06.
//

import SwiftUI

struct StatisticView: View {
    
    let stat: Statistic
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(stat.title)
                .font(.caption)
                .foregroundColor(Color.theme.secondaryText)
            
            Text(stat.value)
                .font(.headline)
                .foregroundColor(Color.theme.accent)
            
            HStack(spacing: 4) {
                
                Image(systemName: "triangle.fill")
                    .font(.caption2)
                    .rotationEffect(.degrees((stat.percentageChange ?? 0) >= 0 ? 0 : 180))
                
                Text(stat.percentageChange?.asPercentageString() ?? "")
                    .font(.caption)
                    .bold()
            }
            .foregroundColor((stat.percentageChange ?? 0) >= 0 ? Color.theme.green : Color.theme.red)
            .opacity(stat.percentageChange == nil ? 0.0 : 1.0)
        }
    }
}

struct StatisticView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            StatisticView(stat: DummyData.dummyDataStatistic)
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
            StatisticView(stat: DummyData.dummyDataStatistic2)
                .previewLayout(.sizeThatFits)
            StatisticView(stat: DummyData.dummyDataStatistic3)
                .previewLayout(.sizeThatFits)
        }
    }
}
