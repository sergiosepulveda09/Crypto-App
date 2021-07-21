//
//  HomeView.swift
//  CryptoApp
//
//  Created by Sergio Sepulveda on 2021-07-20.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            //Background Layer
            Color.theme.background
                .ignoresSafeArea()
            
            //Content Layer
            VStack {
                Text("Header")
                Spacer(minLength: 0)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
