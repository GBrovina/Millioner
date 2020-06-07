//
//  ResultTableViewCell.swift
//  Millioner
//
//  Created by Галина  Бровина  on 07.06.2020.
//  Copyright © 2020 Галина  Бровина . All rights reserved.
//

import UIKit

class ResultTableViewCell: UITableViewCell {

    @IBOutlet weak var result: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
