//
//  ViewController.swift
//  Chela
//
//  Created by bsidesoft on 2019. 1. 12..
//  Copyright © 2019년 Chela. All rights reserved.
//

import UIKit


//func router<T>(base: ChHolderBase<T>) -> ChRouter<T> {
//  return ChRouter.init(base: base)
//}
var groupBase: ChViewBase = ChViewBase()
var router = { () -> ChRouter<ChViewHolder, ChViewHolder.T> in
  return ChRouter.init(of: ChViewHolder.self, base: groupBase)
}()

class ViewController: UIViewController {
	override func viewDidLoad() {
		super.viewDidLoad()
    groupBase.view(it: view)
    router.push(holder: Splash.shared, true)
	}


}

