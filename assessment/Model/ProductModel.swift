//
//  ProductModel.swift
//  assessment
//
//  Created by Yazmin Carmona Barrera on 20/12/23.
//

import Foundation

struct ProductModel: Codable {
    
    let idProduct: Int64
    let product: String
    let price: Double
    
    
    enum CodingKeys: String, CodingKey {
        case idProduct = "id"
        case product
        case price
    }

}


struct ProductsResult: Codable {
    let results: [ProductModel]
    
    enum CodingKeys: String, CodingKey {
        case results

    }
}
