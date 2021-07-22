//
//  CircleButtonAnimationView.swift
//  CryptoApp
//
//  Created by Sergio Sepulveda on 2021-07-21.
//

import SwiftUI

struct CircleButtonAnimationView: View {
    
    @Binding var animate: Bool
    
    var body: some View {
        Circle()
            .stroke(lineWidth: 2)
            .scale(animate ? 1 : 0)
            .opacity(animate ? 0.0 : 1.0)
            .animation(animate ? Animation.easeOut(duration: 1) : /*.easeIn(duration: 1)*/ .none)
    }
}

struct CircleButtonAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        CircleButtonAnimationView(animate: .constant(false))
            .foregroundColor(.red)
            .frame(width: 200, height: 200)
    }
}
