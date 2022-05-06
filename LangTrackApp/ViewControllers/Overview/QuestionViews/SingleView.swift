//
//  SingleView.swift
//  LangTrackApp
//
//  Created by Easter Bunny on 2020-04-07.
//  Copyright © 2020 Easter Bunny. All rights reserved.
//

import Foundation
import UIKit

class SingleView: UIView{
    
    @IBOutlet weak var checkBoxView: UIView!
    @IBOutlet weak var choiceLabel: UILabel!
    @IBOutlet var contentView: UIView!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    func setInfo(choice: String, selected: Bool, single: Bool){
        if single{
            checkBoxView.layer.cornerRadius = checkBoxView.frame.width / 2
        }else{
            checkBoxView.layer.cornerRadius = 4
        }
        choiceLabel.text = choice
        if selected{
            checkBoxView.backgroundColor = UIColor(named: "lta_blue") ?? UIColor.blue
        }
    }
    
    func commonInit(){
        Bundle.main.loadNibNamed("SingleView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        checkBoxView.layer.borderWidth = 0.5
        checkBoxView.backgroundColor = UIColor.white
    }
}
