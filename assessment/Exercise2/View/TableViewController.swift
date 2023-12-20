//
//  TableViewController.swift
//  assessment
//
//  Created by Yazmin Carmona Barrera on 20/12/23.
//

import Foundation
import UIKit

class TableViewController: UITableViewController {
    
    let customCellIdentifier = "generalTableViewCell"
    private var viewModel: ProductsViewModel = ProductsViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        let nibName = UINib(nibName: "generalTableViewCell", bundle: nil)
        tableView.register(nibName, forCellReuseIdentifier: customCellIdentifier)
        tableView.tableFooterView = UIView(frame: CGRect.zero)
        subcribe()
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.products.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: customCellIdentifier, for: indexPath) as? generalTableViewCell else {
            return UITableViewCell()
        }
        let data = setCellData(indexPath: indexPath)
        cell.fillData(data: data)
        return cell
    }
    
    func setCellData(indexPath: IndexPath) -> CellData {
        let item = self.viewModel.products[indexPath.row]
        return  CellData(title: item.product ?? "", subTitle: String(item.price))
    }
}

extension TableViewController {
    func subcribe() {
        self.viewModel.isReponseData.bind { isResponse in
            self.tableView.reloadData()
        }
    }
}
