//
//  OzelGorselView.swift
//  SuperKahramanlarKitabımSwiftUI
//
//  Created by Cihan on 19.03.2024.
//

import SwiftUI

struct OzelGorselView: View {
    var image : Image
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(Color.white,lineWidth: 5)).shadow(radius: 12)
    }
}

#Preview {
    OzelGorselView(image: Image("batman"))
}
