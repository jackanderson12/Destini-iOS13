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
    
    let story0 = Story(title: "You see a fork in the road.", choice1: "Take a left.", choice2: "Take a right.")
    var stories = [Story(title: "You see a fork in the road.", choice1: "Take a left.", choice2: "Take a right."), Story(title: "You see a Tiger.", choice1: "Shout for help.", choice2: "Play dead."), Story(title: "You find a treasure chest.", choice1: "Open it.", choice2: "Check for traps.")]
    var choice1Pressed: Bool
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        storyLabel.text = story0.title
        choice1Button.setTitle(story0.choice1, for: .normal)
        choice2Button.setTitle(story0.choice2, for: .normal)

    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        if sender.title(for: .normal) == choice1Button.title(for: .normal){
            choice1Pressed = true
        } else {
            choice1Pressed = false
        }
        updateUI(choice1Pressed)
    }
    
    func updateUI(_ choice1Pressed: Bool) {
        if choice1Pressed {
            
        } else {
            
        }
    }
}

