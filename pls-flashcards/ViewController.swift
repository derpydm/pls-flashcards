//
//  ViewController.swift
//  pls-flashcards
//
//  Created by Tinkertanker on 27/11/19.
//  Copyright © 2019 Tinkertanker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var selectedFlashcards: String!
    var flashcards = ["sec1": [Flashcard(title: "Sec 1", definition: "Annoying", exampleSentence: "I hate Sec 1s"), Flashcard(title: "the void", definition: "h", exampleSentence: "submit to t h e   v   o   i   d"), Flashcard(title: "Yes", definition: "Aw3w", exampleSentence: "I hqq"), Flashcard(title: "gggggggg", definition: "yy", exampleSentence: "aajajj")], "sec2": [Flashcard(title: "Sec 2", definition: "Annoying", exampleSentence: "I hate Sec 2s"), Flashcard(title: "the void", definition: "h", exampleSentence: "submit to t h e   v   o   i   d"), Flashcard(title: "FHEWHUFWDQGF*EWFG&SG&F", definition: "Gaussian integral", exampleSentence: "444444444"), Flashcard(title: "RWGEWHGUWEHIFD", definition: "AAAAAAAAAAA", exampleSentence: "NONONONONO")], "sec3": [Flashcard(title: "Sec 3", definition: "Annoying", exampleSentence: "I hate Sec 3s"), Flashcard(title: "the void", definition: "h", exampleSentence: "submit to t h e   v   o   i   d"), Flashcard(title: "Se223ede", definition: "Annr4", exampleSentence: "I hateeeeeeee"), Flashcard(title: "fefef", definition: "iron", exampleSentence: "i am iron 4")], "sec4": [Flashcard(title: "Sec 4", definition: "Annoying", exampleSentence: "I hate Sec 4s"), Flashcard(title: "the void", definition: "h", exampleSentence: "submit to t h e   v   o   i   d"), Flashcard(title: "eejej", definition: "ehfu", exampleSentence: "FLashcard"), Flashcard(title: "Can I just say", definition: "I hate AI", exampleSentence: "I hate Sec 2s also")]]
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

    @IBAction func buttonPressed(_ sender: UIButton) {
        selectedFlashcards = sender.accessibilityIdentifier!
        performSegue(withIdentifier: "toFlashcards", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let flashcardArray = flashcards[selectedFlashcards]
        if segue.identifier == "toFlashcards" {
            let dest = segue.destination as! FlashcardViewController
            dest.flashcards = flashcardArray
        }
    }
    @IBAction func unwindToMenu(for unwindSegue: UIStoryboardSegue, towards subsequentVC: UIViewController) {
        
    }
}

