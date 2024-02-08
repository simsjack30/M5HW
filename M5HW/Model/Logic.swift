//
//  Logic.swift
//  M5HW
//
//  Created by John Sims on 2/8/24.
//

import Foundation

struct Logic {
    
    var questionIndex : Int = 0
    
    let prompt_array = [
                Prompts("You've just arrived at an abandoned space station",
                         "Investigate!",
                         "Stay on the ship",1,2),
                
                Prompts("You step through the airlock and notice that it's silent",
                         "Go towards the cockpit",
                         "Go to the cafeteria",3,4),
                
                Prompts("Your boss calls and asks how the investigation is going",
                        "Say it's going well, nothing to report",
                       "Say you're not really feeling like working",5,6),
                
                Prompts("The cocpit is empty, but there is a note left on the pilot's chair",
                       "Read it!",
                       "Respect their privacy",7,8),
                
                Prompts("nobody is around, but there is a fresh pot of coffee",
                        "Drink up, you deserve this",
                        "Better not chance it",9,10),
                
                Prompts("Your boss says that they see you're on the ship via the Find My Employee App",
                       "You lie and say you had to do critical maintenence first",
                       "You tell them the space station is spooky",11,12),
                
                Prompts("Your boss fires you on the spot",
                       "You visit Space Denny's to drown your saddness in a breakfast sandwich",
                       "You beg for your job back",13,14),
                
                Prompts("Success! It's a letter with a Cosmic AppleBee's gift card enclosed"),
                Prompts("Success! You showed incredible restraint even when faced with no consequences"),
                Prompts("Success! It's delicious. You truly do feel more at peace"),
                Prompts("Success! You look closer, it's decaf, bullet dodged"),
                Prompts("Success! They commend your dedication and award you a medal"),
                Prompts("Success! Your boss sends you a motivational email that gives you the courage you need"),
                Prompts("Failure! Each bite you're reminded of the financial ruin this misfortune will bring"),
                Prompts("Failure! They feel moved, but ultimately replace you with an unpaid intern")
            ]
    
    func getPrompt() -> String {
        return prompt_array[questionIndex].question
    }
    
    func getChoiceOne() -> String {
        return prompt_array[questionIndex].option_one!
    }
    
    func getChoiceTwo() -> String {
        return prompt_array[questionIndex].option_two!
    }

    mutating func processChoice(_ choice: Int) {
        let currentPrompt = prompt_array[questionIndex]
        
        if !isCurrentPromptAnEnding() {
            switch choice {
            case 1:
                if let nextIndex = currentPrompt.pointer_one {
                    questionIndex = nextIndex
                }
            case 2:
                if let nextIndex = currentPrompt.pointer_two {
                    questionIndex = nextIndex
                }
            default:
                break
            }
        }
    }

    func isCurrentPromptAnEnding() -> Bool {
        let currentPrompt = prompt_array[questionIndex]
        return currentPrompt.pointer_one == nil && currentPrompt.pointer_two == nil
    }
    
    mutating func resetGame() {
        questionIndex = 0
    }
}
