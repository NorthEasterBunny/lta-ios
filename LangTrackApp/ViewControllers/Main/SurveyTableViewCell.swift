//
//  SuerveyTableViewCell.swift
//  LangTrackApp
//
//  Created by Easter Bunny on 2020-01-31.
//  Copyright © 2020 Easter Bunny. All rights reserved.
//

import UIKit

class SurveyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var answeredIndicator: UIView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var surveyBackground: UIView!
    @IBOutlet weak var surveyTitle: UILabel!
    @IBOutlet weak var answeredLabel: UILabel!
    
    let dateformat = "yyyy-MM-dd HH:mm"
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    
    func setSurveyInfo(assignment: Assignment)  {
        answeredIndicator.layer.cornerRadius = 5
        surveyTitle.text = assignment.survey.title
        //dateLabel.text = DateParser.getLocalTime(date: DateParser.getDate(dateString: assignment.published)!)
        dateLabel.text = DateParser.displayString(for: DateParser.getDate(dateString: assignment.published)!)
        if assignment.dataset == nil{
            answeredLabel.text = translatedUnanswered
            answeredIndicator.backgroundColor = UIColor.init(named: "lta_light_grey") ?? UIColor.lightGray
        }else{
            answeredLabel.text = translatedAnswered
            answeredIndicator.backgroundColor = UIColor.init(named: "lta_green") ?? UIColor.green
        }
    }
}
