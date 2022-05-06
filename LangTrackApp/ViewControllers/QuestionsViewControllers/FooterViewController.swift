//
//  FooterViewController.swift
//  LangTrackApp
//
//  Created by Easter Bunny on 2020-01-30.
//  Copyright © 2020 Easter Bunny. All rights reserved.
//

import UIKit

class FooterViewController: UIViewController {

    @IBOutlet weak var sendInButton: UIButton!
    @IBOutlet weak var previousButton: UIButton!
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var theIcon: UIImageView!
    
    var listener: QuestionListener?
    var theQuestion = Question()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        previousButton.layer.cornerRadius = 8
        sendInButton.layer.cornerRadius = 8
        theIcon.clipsToBounds = false
        theIcon.setSmallViewShadow()
    }
    
    func setInfo(question: Question){
        self.theQuestion = question
        tempLabel.text = theQuestion.text
    }
    
    func setListener(listener: QuestionListener) {
        self.listener = listener
    }
    
    @IBAction func previousButtonPressed(_ sender: Any) {
        listener?.previousQuestion(current: theQuestion)
    }
    
    @IBAction func sendInButtonPressed(_ sender: Any) {
        listener?.sendInSurvey()
    }
    
}
