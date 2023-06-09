//
//  Product.swift
//  Product Store
//
//  Created by Hagar Usama on 01/06/2023.
//
//


struct ProductRemote: Codable, Identifiable {
    let id: String
    let name: String
    let description: String
    let price: String
    let imageURL: String

    enum CodingKeys: String, CodingKey {
        case id, name, description, price
        case imageURL = "image_url"
    }
}

