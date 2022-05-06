//
//  OverviewOpenTableViewCell.swift
//  LangTrackApp
//
//  Created by Easter Bunny on 2020-04-08.
//  Copyright © 2020 Easter Bunny. All rights reserved.
//

import UIKit

class OverviewOpenTableViewCell: UITableViewCell {

    @IBOutlet weak var openTextLabel: UILabel!
    @IBOutlet weak var openAnswerLabel: UILabel!
    
    
    var question: Question?
    var answer : Answer?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setValues(item: OverviewListItem?){
        self.question = item?.question
        self.answer = item?.answer
        openTextLabel.text = question?.text
        openAnswerLabel.text = answer?.openEndedAnswer
    }
}
