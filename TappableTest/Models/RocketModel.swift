//
//  Rocket.swift
//  Tappabvarest
//
//  Created by Antoine ROY on 14/01/2021.
//

import Foundation
import SwiftUI
//struct RocketsResponse: Codable {
//    var result: [Rocket]
//}

struct RocketModel: Decodable, Identifiable {
    var id: Int?
    var name: String?
    var success_rate: Int?
    var images: [String]?
    var first_flight: String?
    var active: Bool?
    var country: String?
    var description: String?
    var cost_per_launch: Int?
    var wikipedia: String?
    
    
    func getBadgeColor() -> Color {
        switch self.success_rate ?? 0 {
        case 0..<30:
            return Color.red
        case 30..<60:
            return Color.orange
        default:
            return Color.green
        }
    }
    
    func getFormattedFirstFlight() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        let date = formatter.date(from: self.first_flight ?? "")
        formatter.dateFormat = "dd MMM YYYY"

        return formatter.string(from: date!)
    }

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "rocket_name"
        case success_rate = "success_rate_pct"
        case images = "flickr_images"
        case first_flight = "first_flight"
        case active = "active"
        case country = "country"
        case description = "description"
        case cost_per_launch = "cost_per_launch"
        case wikipedia = "wikipedia"
    }
}
