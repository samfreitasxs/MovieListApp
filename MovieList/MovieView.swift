//
//  MovieView.swift
//  MovieList
//
//  Created by Samuel Freitas on 29/11/24.
//

import SwiftUI

struct MovieView: View {
    var title: String
    var subtitle: String
    var image: String
    var body: some View {
        VStack (alignment: .leading, spacing: 20){
            Image(image)
                .resizable()
                .scaledToFit()
            Text(title)
                .font(.headline)
                .padding()
            Text(subtitle)
                .font(.subheadline)
                .padding()
            Spacer()
        }
    }
}

#Preview {
    MovieView(title: "Title", subtitle: "Subtitle", image: "movie")
}
