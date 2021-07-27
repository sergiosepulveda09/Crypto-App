//
//  UIApplication.swift
//  CryptoApp
//
//  Created by Sergio Sepulveda on 2021-07-26.
//

import Foundation
import SwiftUI

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
