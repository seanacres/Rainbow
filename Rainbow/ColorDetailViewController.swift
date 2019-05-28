//
//  ViewController.swift
//  Rainbow
//
//  Created by Sean Acres on 5/28/19.
//  Copyright © 2019 Sean Acres. All rights reserved.
//

import UIKit

class ColorDetailViewController: UIViewController {

    var cellColor: MyColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let cellColor = cellColor {
            title = cellColor.name
            view.backgroundColor = cellColor.color
        }
    }


}

