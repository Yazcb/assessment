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
    
    
    func getProducts(completion: @escaping() -> Void) {
        self.getListFromManager { data in
            if let results: [ProductModel] = data?.results {
               ProductParser.parserData(data: results) {
                    completion()
                }
            }
        }
    }
    
    private func getListFromManager(completion: @escaping(ProductsResult?) -> Void) {
        let url = "https://61b3254a-c001-47a6-8bdc-139c6187a06e.mock.pstmn.io/productsList"
        serviceManager.request(urlString: url, completionHandler: completion)
    }
    
    func getLocalList(completion: @escaping([Product]?) -> Void) {
        DataBaseManager.shared().managedObjectContext.perform {
            let list = (try! DataBaseManager.shared().fetchRequestFrom(entityName: Product.name())) as? [Product]
            completion(list)
        }
    }
}
