//
//  Webservice.swift
//  TappableTest
//
//  Created by Antoine ROY on 14/01/2021.
//

import Foundation
import Alamofire

class WebService {
    
    func loadRockets(url: String, completion: @escaping ([RocketModel]?) -> ()) {
        AF.request(url)
            .validate()
            .response { (responseData) in
                guard let data = responseData.data else { return }
            
                do {
                    let rockets = try JSONDecoder().decode([RocketModel].self, from: data)
                    completion(rockets);
                } catch {
                    print("error decoding")
                }
            }
    }
}
