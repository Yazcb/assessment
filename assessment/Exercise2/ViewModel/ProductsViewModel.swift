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
    var products = [ProductModel]()
    
    
    init() {
        productsService.delegate = self
        getProducts()
    }
    
    
    func getProducts() {
        productsService.getProducts { data in
            if let results: [ProductModel] = data?.results {
                self.products = results
                self.isReponseData.value = true
            }
        }
        
    }
}


extension ProductsViewModel: BaseServiceDelegate {
    func processFailWitError(code: Int, error: String) {
        print(error.description)
    }
}
