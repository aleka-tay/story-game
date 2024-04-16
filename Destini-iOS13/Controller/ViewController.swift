//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // Program outlets
    @IBOutlet weak var choiceSecondLabel: UIButton!
    @IBOutlet weak var choiceOneLabel: UIButton!
    
    @IBAction func choiceOneButton(_ sender: UIButton) {
    }
    @IBAction func choiceSecondButton(_ sender: UIButton) {
        }
    @IBOutlet weak var textStoryLabel: UILabel!
    
    // Constant
    var storyBrain = StoryBrain()
    var count = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }


    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        updateUI()
    }

    
    func updateUI(){
        textStoryLabel.text = storyBrain.getStoryTitle()
        choiceOneLabel.setTitle(storyBrain.getChoice1Title(), for: .normal)
        choiceSecondLabel.setTitle(storyBrain.getChoice2Title(), for: .normal)
    }
}

