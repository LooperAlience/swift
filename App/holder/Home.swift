//
//  Main.swift
//  Chela
//
//  Created by 배인진 on 12/01/2019.
//  Copyright © 2019 Chela. All rights reserved.
//

import Foundation
import UIKit

class Home: ViewHolder {
  static let shared = Home()
  private let view = UIButton()
  override func create(base: ChHolderBase<UIView>) -> UIView {
    view.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
    view.backgroundColor = .blue
    view.addTarget(self, action: #selector(Home.buttonClicked(_:)), for: .touchUpInside)
    return view
  }
  
  @objc func buttonClicked(_ sender: UIButton) {
    router.pop()
  }
  
  func resume(_ base: ChHolderBase<UIView>, _ isRestore: Bool) {
    view.isHidden = false
  }
  
  func pause(_ base: ChHolderBase<UIView>, _ isJump: Bool) {
    view.isHidden = true
  }
  
}
