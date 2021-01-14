//
//  RocketsList.swift
//  TappableTest
//
//  Created by Antoine ROY on 14/01/2021.
//

import SwiftUI

struct RocketsList: View {
    //handle observable
    @ObservedObject var viewModel: ViewModel = RocketsList.ViewModel()
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    init() {
        self.viewModel.loadRockets()
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                if self.viewModel.loading {
                    Loader()
                } else {
                    if self.horizontalSizeClass == .compact {
                        iphoneView(rockets: self.viewModel.rockets)
                    } else {
                        ipadView(rockets: self.viewModel.rockets)
                    }
                }
            }
            .navigationBarTitle("SpaceX")
        }
        
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
