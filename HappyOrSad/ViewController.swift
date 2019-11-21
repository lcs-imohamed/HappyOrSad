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
        
        
        var happyCount = 0
        var sadCount = 0
       for singleCharacter in phraseInput {
        if singleCharacter == "😃" || singleCharacter == "😊" || singleCharacter == "🙂" {
            happyCount += 1
        }
        for singleCharacter == "

        
           
            
        //use happy count and sad count to track counts
        //after inspcting each character
        //if/else if............
        //if cond
        //else if cond
    }
        print(happyCount)
    
}
}
