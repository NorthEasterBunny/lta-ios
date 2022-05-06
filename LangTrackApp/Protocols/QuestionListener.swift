//
//  QuestionListener.swift
//  LangTrackApp
//
//  Created by Easter Bunny on 2020-01-31.
//  Copyright © 2020 Easter Bunny. All rights reserved.
//

import Foundation


protocol QuestionListener{
    func nextQuestion(current: Question)
    func previousQuestion(current: Question)
    func closeSurvey()
    func sendInSurvey()
    func setSingleMultipleAnswer(selected: Int)
    func setMultipleAnswersAnswer(selected: [Int])
    func setLikertAnswer(selected: Int)
    func setOpenEndedAnswer(text: String)
    func setFillBlankAnswer(selected: Int)
    func setTimeDurationAnswer(selected: Int)
    func setSliderAnswer(selected: Int, naButton: Bool)
}
