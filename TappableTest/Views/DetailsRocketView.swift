//
//  DetailsRocketView.swift
//  TappableTest
//
//  Created by Antoine ROY on 14/01/2021.
//

import SwiftUI

struct DetailsRocketView: View {
    let rocket: RocketModel
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 32) {
                ImageLoaderView(imageUrl: rocket.images?[0] ?? "")
                    .frame(width: 240)
                HStack {
                    Text("Success rate: ")
                        .font(Font.headline.weight(.light))
                    Text("\(rocket.success_rate ?? 0)%")
                    BadgeSuccessRateView(color: rocket.getBadgeColor())
                    Spacer()
                }
                
                DetailsRocketRowView(title: "Is active: ", content: "\(rocket.active ?? false ? "Yes" : "No")")
                DetailsRocketRowView(title: "Country: ", content: "\(rocket.country ?? "N/A")")
                DetailsRocketRowView(title: "Description: ", content: "\(rocket.description ?? "N/A")")
                DetailsRocketRowView(title: "Date of first flight: ", content: "\(rocket.getFormattedFirstFlight())")

                HStack(alignment: .top) {
                    Text("Cost per launch: ")
                        .font(Font.headline.weight(.light))
                    Text(String(format: "$%.2f", Double(rocket.cost_per_launch ?? 0)))
                    Spacer()
                }
                
                Link("Wikipedia", destination: URL(string: rocket.wikipedia ?? "")!)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.accentColor)
                    .cornerRadius(8)

                Spacer()
            }
            .padding()
        }
        .navigationBarTitle(rocket.name ?? "default", displayMode: .inline)
    }
}
