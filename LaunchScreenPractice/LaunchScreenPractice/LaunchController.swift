//
//  LaunchController.swift
//  LaunchScreenPractice
//
//  Created by 윤병일 on 2020/09/07.
//  Copyright © 2020 Byoungil Youn. All rights reserved.
//

import UIKit

class LaunchController : UIViewController {
  
  //MARK: - Properties
  private let imageView : UIImageView = {
    let im = UIImageView(frame: CGRect(x: 0, y: 0, width: 150, height: 150))
    im.image = UIImage(named: "logo")
    return im
  }()
  
  //MARK: - LifeCycle
  override func viewDidLoad() {
    super.viewDidLoad()
    view.addSubview(imageView)
  }
  
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    imageView.center = view.center
    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
      self.animate()
    }
  }
  
  //MARK: - animate()
  private func animate() {
    UIView.animate(withDuration: 1) {
      let size = self.view.frame.size.width * 3
      let diffX = size - self.view.frame.size.width
      let diffY = self.view.frame.size.height - size
      self.imageView.frame = CGRect(x: -(diffX/2), y: diffY/2, width: size, height: size)
    }
    
    UIView.animate(withDuration: 1.5, animations: {
      self.imageView.alpha = 0
    }) { (done) in
      if done {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
          let viewController = HomeViewController()
          viewController.modalPresentationStyle = .fullScreen
          viewController.modalTransitionStyle = .crossDissolve
          self.present(viewController, animated: true)
        }
      }
    }
  }
}
