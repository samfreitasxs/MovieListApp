//
//  ListMovieView.swift
//  MovieList
//
//  Created by Samuel Freitas on 29/11/24.
//

import SwiftUI

struct MovieList {
    let id = UUID()
    let title: String
    let subtitle: String
    let image: String
}

struct ListMovieView: View {
    
    var movieList = [
    MovieList(
        title: "A Lista de Schindler",
        subtitle: "Um retrato poderoso do Holocausto, com atuações marcantes e uma história emocionante sobre a humanidade em tempos de guerra.",
        image: "schindler"),
    MovieList(
        title: "O Poderoso Chefão",
        subtitle: "Uma obra-prima do cinema que explora a vida de uma família mafiosa, com personagens complexos e uma narrativa envolvente.",
        image: "godfather"),
    MovieList(
        title: "Pulp Fiction",
        subtitle: "Um filme cult de Quentin Tarantino, com diálogos afiados, humor negro e uma narrativa não linear que desafia as convenções do cinema.",
        image: "pulp"),
    MovieList(
        title: "O Senhor dos Anéis",
        subtitle: "Um retrato poderoso do Holocausto, com atuações marcantes e uma história emocionante sobre a humanidade em tempos de guerra.",
        image: "rings"),
    MovieList(
        title: "Titanic",
        subtitle: "Uma história de amor épica ambientada no naufrágio do Titanic, com efeitos especiais impressionantes e atuações memoráveis.",
        image: "titanic"),
     MovieList(
         title: "Sociedade dos Poetas Mortos",
         subtitle: "Filmografia do cineasta australiano, a versão positiva e intimista do tema que ele sempre abordou",
         image: "poetas"),
     MovieList(
         title: "Mocn",
         subtitle: "A chegada de uma “estranha” jovem médica no interior americano.",
         image: "mocn")
     
        ]
    var body: some View {
        NavigationView{
            VStack {
                List {
                    Text("Lista de Filmes")
                        .font(.title)
                    Image("movie")
                        .resizable()
                        .scaledToFit()
                    ForEach(movieList, id: \.id) { item in
                        NavigationLink(destination: MovieView(title: item.title, subtitle: item.subtitle, image: item.image)) {
                            Text(item.title)
                        }
                    }
                }
                .listStyle(.inset)
            }
        }
    }
}

#Preview {
    ListMovieView()
}
