//
//  SegueFromBottom.swift
//  NDANow
//
//  Created by Elliott Williams on 10/8/18.
//  Copyright © 2018 AgrippaApps. All rights reserved.
//

import UIKit

class SegueFromBottom: UIStoryboardSegue {
        override func perform() {
            let src: UIViewController = self.source
            let dst: UIViewController = self.destination
            let transition: CATransition = CATransition()
            let timeFunc: CAMediaTimingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
            transition.duration = 0.25
            transition.timingFunction = timeFunc
            transition.type = kCATransitionPush
            transition.subtype = kCATransitionFromBottom
            src.navigationController!.view.layer.add(transition, forKey: kCATransition)
            src.navigationController!.pushViewController(dst, animated: false)
        }
}





