//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain(storyNumber: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        storyLabel.text = storyBrain.stories[0].title
        choice1Button.setTitle(storyBrain.stories[0].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.stories[0].choice2, for: .normal)

    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        
        var changeStoryTo = storyBrain.stories[storyBrain.storyNumber]
        
        if sender == choice1Button {
            changeStoryTo = storyBrain.nextStory("choice1Button")
        }
        else if sender == choice2Button{
            changeStoryTo = storyBrain.nextStory("choice2Button")
        }
        
        storyLabel.text = changeStoryTo.title
        choice1Button.setTitle(changeStoryTo.choice1, for: .normal)
        choice2Button.setTitle(changeStoryTo.choice2, for: .normal)
    }
}

