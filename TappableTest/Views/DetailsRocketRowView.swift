//
//  DetailsRocketRowView.swift
//  TappableTest
//
//  Created by Antoine ROY on 14/01/2021.
//

import SwiftUI

struct DetailsRocketRowView: View {
    let title: String
    let content: String
    
    var body: some View {
        HStack(alignment: .top) {
            Text(title)
                .font(Font.headline.weight(.light))
            Text(content)
            Spacer()
        }
    }
}
