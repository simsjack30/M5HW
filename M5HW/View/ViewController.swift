//
//  ViewController.swift
//  M5HW
//
//  Created by John Sims on 2/8/24.
//

import UIKit

class ViewController: UIViewController {

    var logic = Logic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var ButtonOne: UIButton!
    @IBOutlet weak var ButtonTwo: UIButton!
    @IBOutlet weak var Prompt: UILabel!

    @IBAction func Answer(_ sender: Any) {
        guard let button = sender as? UIButton else { return }

        if button == ButtonOne {
            logic.processChoice(1)
        } else if button == ButtonTwo {
            logic.processChoice(2)
        }
        updateUI()
    }
    
    @IBAction func resetGame(_ sender: Any) {
            logic.resetGame()
            updateUI()
    }
    
    @objc func updateUI() {

        if logic.isCurrentPromptAnEnding() {
            Prompt.text = logic.getPrompt()
            ButtonOne.isHidden = true
            ButtonTwo.isHidden = true
            resetButton.isHidden = false
        } else {
            Prompt.text = logic.getPrompt()
            ButtonOne.setTitle(logic.getChoiceOne(), for: .normal)
            ButtonTwo.setTitle(logic.getChoiceTwo(), for: .normal)
            ButtonOne.isHidden = false
            ButtonTwo.isHidden = false
            resetButton.isHidden = true
        }
    }
}
