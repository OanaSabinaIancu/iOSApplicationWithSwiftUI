//
//  Product.swift
//  opt-app-Sabina-311
//
//  Created by user215930 on 4/22/22.
//

import Foundation

struct Product: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let price: Int
    let description: String
    let date:String
}

extension Product {
    static let all: [Product] = [Product(name: "Berries Cake", image: "https://c4.wallpaperflare.com/wallpaper/507/761/166/food-berries-cake-dessert-wallpaper-preview.jpg", price: 27, description: "ceva1", date: "15.03.2021"),
                                 Product(name: "Chocolate Cake", image: "https://c4.wallpaperflare.com/wallpaper/628/575/626/cake-strawberries-food-fruit-wallpaper-preview.jpg", price: 30, description: "ceva2", date: "17.05.2020"),
                                 Product(name: "Peanuts Cake", image: "https://c4.wallpaperflare.com/wallpaper/266/477/281/cake-food-nuts-chocolate-cake-wallpaper-preview.jpg", price: 25, description: "ceva3", date: "06.04.2018"),
                                 Product(name: "Rainbow Cake", image: "https://c4.wallpaperflare.com/wallpaper/93/434/527/birthday-colorful-cake-cake-wallpaper-preview.jpg", price: 20, description: "ceva4", date: "05.09.2020"),
                                 Product(name: "Strawberry Cake", image: "https://c4.wallpaperflare.com/wallpaper/937/382/340/cake-strawberries-food-wallpaper-preview.jpg", price: 32, description: "ceva5", date: "28.06.2017"),
                                 Product(name: "Melon Cake", image: "https://c4.wallpaperflare.com/wallpaper/246/206/360/cream-cake-cake-cherry-wallpaper-preview.jpg", price: 22, description: "ceva6", date: "17.06.2013")]
}

//import Foundation
//
//struct Product: Identifiable{
//    var id = UUID()
//    var name: String
//    var image: String
//    var price: Int
//}
//
//var productList = [Product(name: "Berries Cake", image: "tort-fructe", price: 27),
//                    Product(name: "Chocolate Cake", image: "tort-ciocolata", price: 30),
//                    Product(name: "Peanuts Cake", image: "tort-alune", price: 25),
//                    Product(name: "Rainbow Cake", image: "tort-curcubeu", price: 20),
//                    Product(name: "Strawberry Cake", image: "tort-capsuni", price: 32),
//                    Product(name: "Melon Cake", image: "tort-galben", price: 22)]
