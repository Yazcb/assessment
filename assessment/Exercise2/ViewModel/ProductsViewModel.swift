//
//  ProductsViewModel.swift
//  assessment
//
//  Created by Yazmin Carmona Barrera on 20/12/23.
//

import Foundation
import UIKit

class ProductsViewModel {
    lazy var isReponseData: LiveData<Bool> = LiveData(false)
    var productsService = ProductService()
    var products = [Product]()
    
    
    init() {
       productsService.delegate = self
       getProducts()
    }
    
    
    func getProducts() {
        productsService.getLocalList { products in
            self.products = products ?? []
            self.isReponseData.value = true

        }
    }
}


extension ProductsViewModel: BaseServiceDelegate {
    func processFailWitError(code: Int, error: String) {
        print(error.description)
    }
}
