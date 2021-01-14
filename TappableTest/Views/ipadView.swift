//
//  ipadView.swift
//  TappableTest
//
//  Created by Antoine ROY on 14/01/2021.
//

import SwiftUI

struct ipadView: View {
    var rockets: [RocketModel]
//    let count: Int
//    let rowCount: Int
//
//    init(rockets: [RocketModel]) {
//        self.rockets = rockets
//        self.count = rockets.count
//        self.rowCount = (self.count / 2).rounded(.up)
//    }
    
    var body: some View {
        ScrollView {
            let count = self.rockets.count
            let rowCount = (Double(count) / 2.0).rounded(.up)
            
            ForEach(0..<Int(rowCount)) { row in
                HStack(spacing: 16) {
                    ForEach(0..<2) { column in
                        let index = row * 2 + column
                        RocketNavigationView(rocket: rockets[index])
                    }
                }
            }
        }
    }
}
