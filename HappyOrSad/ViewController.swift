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
    @IBOutlet weak var emojiMessage: UITextField!
    @IBOutlet weak var happySadAnswer: UILabel!
    
    
//MARK: Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //Obtain user input from text field
    guard let emojiMessageAsString = emojiMessage.text else {
    happySadAnswer.text = "Please input a value. "}

}





