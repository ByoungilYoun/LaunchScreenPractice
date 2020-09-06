//
//  HomeController.swift
//  LaunchScreenPractice
//
//  Created by 윤병일 on 2020/09/07.
//  Copyright © 2020 Byoungil Youn. All rights reserved.
//

import UIKit

class HomeViewController : UIViewController {
  let label : UILabel = {
    let label = UILabel(frame: CGRect(x: 0, y: 0, width: 300, height: 100))
    label.text = "Hello"
    label.textAlignment = .center
    label.font = .systemFont(ofSize: 24, weight : .bold)
    return label
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.addSubview(label)
    label.center = view.center
    view.backgroundColor = .systemBackground
  }
}
