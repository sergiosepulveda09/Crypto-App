//
//  CryptoAppApp.swift
//  CryptoApp
//
//  Created by Sergio Sepulveda on 2021-07-20.
//

import SwiftUI

@main
struct CryptoAppApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
        }
    }
}
