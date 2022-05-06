//
//  SingleItemTableViewCell.swift
//  LangTrackApp
//
//  Created by Easter Bunny on 2020-04-03.
//  Copyright © 2020 Easter Bunny. All rights reserved.
//

import UIKit

class SingleItemTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var checkBox: VKCheckbox!
    @IBOutlet weak var choiceLabel: UILabel!
    @IBOutlet weak var cellWidthConstraint: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setCheck(enabled: Bool){
        checkBox.setOn(enabled)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
