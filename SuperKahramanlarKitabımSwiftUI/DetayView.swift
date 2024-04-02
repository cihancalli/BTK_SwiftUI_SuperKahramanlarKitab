//
//  DetayView.swift
//  SuperKahramanlarKitabımSwiftUI
//
//  Created by Cihan on 19.03.2024.
//

import SwiftUI

struct DetayView: View {
    var secilenKahraman : SuperKahramanModel
    var body: some View {
        VStack {
            MapView(coordinate: secilenKahraman.koordinatLokasyonu)
                .frame(height: UIScreen.main.bounds.height * 0.3)
                .edgesIgnoringSafeArea(.top)
            
            OzelGorselView(image: Image(secilenKahraman.gorselIsmı))
                .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.3 ,alignment: .center)
                .offset(y: UIScreen.main.bounds.height * -0.18)
                .padding(.bottom,UIScreen.main.bounds.height * -0.05)
            
            VStack {
                HStack {
                    Text(secilenKahraman.isim)
                        .font(.largeTitle)
                        .foregroundColor(.blue)
                    Spacer()
                    Text(secilenKahraman.gercekIsim)
                        .font(.largeTitle)
                        .foregroundColor(.orange)
                }
                HStack {
                    Text(secilenKahraman.sehir).bold()
                    Spacer()
                    Text(secilenKahraman.meslek).bold()
                }
            }
            .padding()
            .offset(y: UIScreen.main.bounds.height * -0.16)
            
            Spacer()
        }
    }
}

#Preview {
    DetayView(secilenKahraman: batman)
}
