//
//  RocketsList.swift
//  TappableTest
//
//  Created by Antoine ROY on 14/01/2021.
//

import Foundation

extension RocketsList {
    class ViewModel: ObservableObject {
        @Published var rockets: [RocketModel] = []
        @Published var loading: Bool = true

        func loadRockets() {
            WebService().loadRockets(url: "https://api.spacexdata.com/v3/rockets") { rockets in
                self.rockets = rockets ?? []
                self.loading = false
            }
        }
    }
}
