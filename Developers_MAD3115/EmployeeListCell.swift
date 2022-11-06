//
//  EmployeeListCell.swift
//  Developers_MAD3115
//
//  Created by PAVIT KALRA on 2022-11-03.
//

import UIKit

class EmployeeListCell: UITableViewCell {

    
    @IBOutlet weak var EmployeeName: UILabel!
    
    @IBOutlet weak var subtitletxt: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
