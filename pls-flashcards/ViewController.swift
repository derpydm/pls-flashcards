//
//  ViewController.swift
//  pls-flashcards
//
//  Created by Tinkertanker on 27/11/19.
//  Copyright © 2019 Tinkertanker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sec1: UIButton!
    @IBOutlet weak var sec2: UIButton!
    @IBOutlet weak var sec3: UIButton!
    @IBOutlet weak var sec4: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        let buttons = [sec1,sec2,sec3,sec4]
        for button in buttons {
            button!.layer.cornerRadius = 10
            button!.layer.borderWidth = 1
        }
        // Do any additional setup after loading the view.
    }


}

