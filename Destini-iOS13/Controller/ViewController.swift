//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var choiceSecondLabel: UIButton!
    @IBOutlet weak var choiceOneLabel: UIButton!
    @IBAction func choiceSecondButton(_ sender: UIButton) {
    }
    @IBAction func choiceOneButton(_ sender: UIButton) {
    }
    @IBOutlet weak var textStoryLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        textStoryLabel.text = "You see fork in the road."
        choiceOneLabel.setTitle("Take left", for: .normal)
        choiceSecondLabel.setTitle("Take right", for: .normal)
    }


}

