//
//  RocketNavigationView.swift
//  TappableTest
//
//  Created by Antoine ROY on 14/01/2021.
//

import SwiftUI

struct RocketNavigationView: View {
    let rocket: RocketModel
    
    var body: some View {
        NavigationLink(destination: DetailsRocketView(rocket: rocket)) {
            RocketView(rocket: rocket)
                .padding()
                .border(Color.black, width: 1)
        }
    }
}
