//
//  generalTableViewCell.swift
//  assessment
//
//  Created by Yazmin Carmona Barrera on 20/12/23.
//

import Foundation
import UIKit

struct CellData {
    var title: String
    var subTitle: String
    
}
class generalTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblSubtitle: UILabel!
    
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func fillData(data: CellData) {
        self.lblTitle.text = data.title
        self.lblSubtitle.text = data.subTitle
    }
}
