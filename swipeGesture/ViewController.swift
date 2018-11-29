//
//  ViewController.swift
//  swipeGesture
//
//  Created by Caitlin on 9/12/18.
//  Copyright © 2018 Caitlin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(swipeAction(swipe:)))
        leftSwipe.direction = UISwipeGestureRecognizerDirection.left
        self.view.addGestureRecognizer(leftSwipe)
        
        let upSwipe = UISwipeGestureRecognizer(target: self, action: #selector(swipeAction(swipe:)))
        upSwipe.direction = UISwipeGestureRecognizerDirection.up
        self.view.addGestureRecognizer(upSwipe)
        print(upSwipe.direction)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension UIViewController {
    @objc func swipeAction(swipe:UISwipeGestureRecognizer) {
        switch swipe.direction.rawValue {
        case 1:
            performSegue(withIdentifier: "goUp", sender: self)
        case 2:
            performSegue(withIdentifier: "goDown", sender: self)
        case 4:
            performSegue(withIdentifier: "goDown", sender: self)
        case 8:
            self.dismiss(animated: true, completion: nil)     
//            performSegue(withIdentifier: "goUp", sender: self)
        default:
            break
        }
    }
}

