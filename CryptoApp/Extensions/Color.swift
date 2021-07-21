//
//  Color.swift
//  CryptoApp
//
//  Created by Sergio Sepulveda on 2021-07-20.
//

import Foundation
import SwiftUI

extension Color {
    static let theme = ColorTheme()
}
struct ColorTheme {
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let green = Color("GreenColor")
    let red = Color("RedColor")
    let secondaryText = Color("SecondaryTextColor")
}
