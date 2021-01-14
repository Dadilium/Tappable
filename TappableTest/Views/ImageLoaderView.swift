//
//  ImageLoader.swift
//  TappableTest
//
//  Created by Antoine ROY on 14/01/2021.
//

import SwiftUI

struct ImageLoaderView: View {
    @ObservedObject var viewModel: ViewModel
        
    init(imageUrl: String) {
        viewModel = ViewModel(url: imageUrl)
    }
        
    var body: some View {
        if self.viewModel.loading {
            Loader()
        } else {
            Image(uiImage: (viewModel.imageData.isEmpty ? UIImage(systemName: "trash")! : UIImage(data: viewModel.imageData) ?? UIImage(contentsOfFile: "ImageUnavailable")!))
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
    }
}
