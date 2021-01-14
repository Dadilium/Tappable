//
//  SwiftUIView.swift
//  TappableTest
//
//  Created by Antoine ROY on 14/01/2021.
//

import SwiftUI

struct BadgeSuccessRateView: View {
    let color: Color
    
    var body: some View {
        Circle()
            .fill(color)
            .frame(width: 50, height: 50, alignment: .center)
    }
}
