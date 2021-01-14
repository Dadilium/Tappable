//
//  iphoneView.swift
//  TappableTest
//
//  Created by Antoine ROY on 14/01/2021.
//

import SwiftUI

struct iphoneView: View {
    var rockets: [RocketModel]
    
    var body: some View {
       List {
            ForEach(rockets) { rocket in
                NavigationLink(destination: DetailsRocketView(rocket: rocket)) {
                    RocketView(rocket: rocket)
                }
            }
        }
    }
}
