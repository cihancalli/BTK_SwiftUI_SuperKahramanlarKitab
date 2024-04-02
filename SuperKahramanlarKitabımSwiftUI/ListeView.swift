//
//  ContentView.swift
//  SuperKahramanlarKitabımSwiftUI
//
//  Created by Cihan on 18.03.2024.
//

import SwiftUI

struct ListeView: View {
    var body: some View {
        NavigationView {
            List(superKaramanDizisi) { superKahraman in
                NavigationLink(destination: DetayView(secilenKahraman: superKahraman), label: {
                    ListeRowView(superkahraman: superKahraman)
                })
            }.navigationTitle(Text("Superkahraman Kitabı "))
        }
    }
}

#Preview { 
    ListeView()
}
