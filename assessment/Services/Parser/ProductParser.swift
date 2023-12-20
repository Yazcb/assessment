//
//  ProductParser.swift
//  assessment
//
//  Created by Yazmin Carmona Barrera on 20/12/23.
//


import Foundation
import UIKit
import CoreData

class ProductParser {
    static func parserData(data: [ProductModel], completion: @escaping() -> ())  {
        DataBaseManager.shared().managedObjectContext.perform {
            for productModel in data {
                if let product =  Product.object(propertyName: "id", from: productModel.idProduct as NSNumber, in: DataBaseManager.shared().managedObjectContext, createNewObject: true) {
                    product.id = productModel.idProduct
                    product.product = productModel.product
                    product.price = productModel.price
                    DataBaseManager.shared().saveContext()
                }
            }
            completion()
        }
    }
}
    
