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
            for singleCharacter in phraseInput {
                if singleCharacter == "☹" || singleCharacter == "🙁" || singleCharacter == "😕" || singleCharacter == "😔" {
                sadCount += 1
                }
            
    
            }
         //use happy count and sad count to track counts
                        //after inspcting each character
                        //if/else if............
                        //if cond
                        //else if cond
            
        }
}
}
