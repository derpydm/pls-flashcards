//
//  FlashcardViewController.swift
//  pls-flashcards
//
//  Created by Tinkertanker on 27/11/19.
//  Copyright © 2019 Tinkertanker. All rights reserved.
//

import UIKit

class FlashcardViewController: UIViewController {

    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var sentenceLabel: UILabel!
    var flashcards: [Flashcard]!
    var currentFlashcard = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        let flashcard = flashcards[0]
        backButton.setTitleColor(.gray, for: .disabled)
        backButton.isEnabled = false
        nextButton.setTitleColor(.gray, for: .disabled)
        updateLabels(with: flashcard)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onBack(_ sender: Any) {
        currentFlashcard -= 1
        if currentFlashcard == flashcards.count - 2 {
            nextButton.isEnabled = true
        }
        if currentFlashcard == 0 {
            backButton.isEnabled = false
        }
        let flashcard = flashcards[currentFlashcard]
        updateLabels(with: flashcard)
    }
    
    @IBAction func onNext(_ sender: Any) {
        currentFlashcard += 1
        if currentFlashcard == 1 {
            backButton.isEnabled = true
        }
        if currentFlashcard == flashcards.count - 1 {
            nextButton.isEnabled = false
        }
        let flashcard = flashcards[currentFlashcard]
        updateLabels(with: flashcard)
    }
    func updateLabels(with flashcard: Flashcard) {
        titleLabel.text = flashcard.title
        descLabel.text = flashcard.definition
        sentenceLabel.text = flashcard.exampleSentence
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
