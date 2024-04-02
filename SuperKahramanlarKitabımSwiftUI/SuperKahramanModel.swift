//
//  SuperKahramanModel.swift
//  SuperKahramanlarKitabımSwiftUI
//
//  Created by Cihan on 18.03.2024.
//

import Foundation
import SwiftUI
import CoreLocation

struct SuperKahramanModel :Identifiable {
    var id = UUID()
    var isim : String
    var gercekIsim : String
    var gorselIsmı : String
    var sehir : String
    var meslek : String
    var koordinat : Koordinat
    
    var koordinatLokasyonu: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: koordinat.latitude, longitude: koordinat.longitude)
    }
}

struct Koordinat {
    var latitude : Double
    var longitude : Double
}


let batman = SuperKahramanModel(isim: "Batman",gercekIsim: "Bruce Wayne", gorselIsmı: "batman", sehir: "Gotham", meslek: "İş Adamı", koordinat: Koordinat(latitude: 41.8713679, longitude: -87.7669902))

let superman = SuperKahramanModel(isim: "Superman",gercekIsim: "Clark Kent", gorselIsmı: "superman", sehir: "Kansas", meslek: "Gazeteci", koordinat: Koordinat(latitude: 39.0865207, longitude: -94.7089592))

let spiderman = SuperKahramanModel(isim: "Spiderman",gercekIsim: "Peter Parker", gorselIsmı: "spiderman", sehir: "New York", meslek: "Fotoğrafçı", koordinat: Koordinat(latitude: 40.7160119, longitude: -74.0524729))

let ironman = SuperKahramanModel(isim: "Iron Man",gercekIsim: "Tony Stark", gorselIsmı: "ironman", sehir: "Los Angelese", meslek: "İş Adamı", koordinat: Koordinat(latitude: 33.8003309, longitude: -118.2261494))

let superKaramanDizisi = [batman,superman,spiderman,ironman]


