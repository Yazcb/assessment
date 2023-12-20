//
//  ProductService.swift
//  assessment
//
//  Created by Yazmin Carmona Barrera on 20/12/23.
//

import Foundation

class ProductService: BaseService {
    
    override init() {
        super.init()
    }
    
    func getProducts(completion: @escaping(ProductsResult?) -> Void) {
        let url = "https://61b3254a-c001-47a6-8bdc-139c6187a06e.mock.pstmn.io/productsList"
        serviceManager.request(urlString: url, completionHandler: completion)
    }
}
