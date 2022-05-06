//
//  SelfSizedTableView.swift
//  LangTrackApp
//
//  Created by Easter Bunny on 2020-04-05.
//  Copyright © 2020 Easter Bunny. All rights reserved.
//

import Foundation

import UIKit

class SelfSizedTableView: UITableView {
  var maxHeight: CGFloat = UIScreen.main.bounds.size.height
  
  override func reloadData() {
    super.reloadData()
    self.invalidateIntrinsicContentSize()
    self.layoutIfNeeded()
  }
  
  override var intrinsicContentSize: CGSize {
    let height = min(contentSize.height, maxHeight)
    return CGSize(width: contentSize.width, height: height)
  }
}
