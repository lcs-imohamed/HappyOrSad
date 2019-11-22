//
//  ViewController.swift
//  HappyOrSad
//
//  Created by Mohamed, Ilana on 2019-11-18.
//  Copyright © 2019 Mohamed, Ilana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Properties
    
    @IBOutlet weak var phraseInputField: UITextField!
    
    
    @IBOutlet weak var happyOrSadOutput: UILabel!
    
    
    
    //MARK: Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func analyzeMessage(_ sender: Any) {
        
        //Obtain user input from text field
        guard let phraseInput = phraseInputField.text, phraseInput.count > 0 else {
            happyOrSadOutput.text = "Please input a value. "
            return
        }
        
        
        //Prevent user from entering a message that is too long
        if phraseInput.count > 255 {
            happyOrSadOutput.text = "Please input a smaller message."
            return
        }
        
        //Create variables to count number of happy and sad emojis
        var happyCount = 0
        var sadCount = 0
        
        //Check each phrase for happy or sad emojis. If happy emojis are found, increase happy count by 1. Do the same for sad emojis
        for singleCharacter in phraseInput {
            if singleCharacter == "😃" || singleCharacter == "😊" || singleCharacter == "🙂" || singleCharacter == "😄" {
                happyCount += 1
            }
            
            if singleCharacter == "☹" || singleCharacter == "🙁" || singleCharacter == "😕" || singleCharacter == "😔" {
                sadCount += 1
            }
            
        }

        //If there are more happy emojis display happy output, do the same for all other outputs
        if happyCount > sadCount {
            happyOrSadOutput.text = "Happy! :)"
        } else if sadCount > happyCount {
            happyOrSadOutput.text = "Sad :("
        } else {
            happyOrSadOutput.text = "Unsure :|"
        }
        
    }
}

