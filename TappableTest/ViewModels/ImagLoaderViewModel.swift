//
//  ImagLoaderViewModel.swift
//  TappableTest
//
//  Created by Antoine ROY on 14/01/2021.
//

import Foundation

extension ImageLoaderView {
    class ViewModel: ObservableObject {
        @Published public var imageData: Data
        @Published var loading: Bool = true

        init(url imageUrl: String) {
            self.imageData = Data()
            
            guard let url = URL(string: imageUrl) else { return }
            URLSession.shared.dataTask(with: url) { (data, res, err) in
                if let unwrappedData = data {
                    DispatchQueue.main.async {
                        self.imageData = unwrappedData
                        self.loading = false
                    }
                }
            }.resume()
        }
    }
}
