//
//  ListeRowView.swift
//  SuperKahramanlarKitabımSwiftUI
//
//  Created by Cihan on 19.03.2024.
//

import SwiftUI

struct ListeRowView: View {
    var superkahraman : SuperKahramanModel
    var body: some View {
        HStack {
            OzelGorselView(image: Image(superkahraman.gorselIsmı))
                .frame(width: 100,height: 100,alignment: .leading)
            Spacer()
            VStack {
                Text(superkahraman.isim)
                    .font(.title)
                Text(superkahraman.gercekIsim)
            }
            Spacer()
            
        }.padding()
    }
}

#Preview {
    ListeRowView(superkahraman: batman)
}
