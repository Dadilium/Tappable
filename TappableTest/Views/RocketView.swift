//
//  RocketView.swift
//  TappableTest
//
//  Created by Antoine ROY on 14/01/2021.
//

import SwiftUI

struct RocketView: View {
    let rocket: RocketModel
    
    var body: some View {
        HStack {
            ImageLoaderView(imageUrl: rocket.images?[0] ?? "")
                .frame(width: 120, height: 120, alignment: .center)
            Spacer()
            VStack {
                Text(rocket.name ?? "")
                    .padding()
                Text(rocket.getFormattedFirstFlight())
                    .padding()
                    .font(.subheadline)
            }
            Spacer()
            BadgeSuccessRateView(color: rocket.getBadgeColor())
        }
    }
}
