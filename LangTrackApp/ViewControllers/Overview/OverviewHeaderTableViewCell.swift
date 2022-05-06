//
//  OverviewHeaderTableViewCell.swift
//  LangTrackApp
//
//  Created by Easter Bunny on 2020-04-14.
//  Copyright © 2020 Easter Bunny. All rights reserved.
//

import UIKit


class OverviewHeaderTableViewCell: UITableViewCell {

    @IBOutlet weak var headerTextLabel: UILabel!
    
    var question: Question?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setValues(item: OverviewListItem?){
        self.question = item?.question
        headerTextLabel.text = question?.text
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }

}
