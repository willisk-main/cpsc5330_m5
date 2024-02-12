import Foundation


struct QuizLogic {
    
    var questionIndex : Int = 0
    var score : Int = 0
    
    //Intro
    /* MyAdventure: In the shadow of the towering skyscrapers of Metropolis Prime, you are a skilled hacker and thief known in the underground as "Echo." You've been given a tip about a once-in-a-lifetime heist that could set you up for life. However, the job is fraught with danger, and only the right choices will lead to success.*/
    
    let question = [
                Question("You're planning the heist on Zetacorp's secure data vault, which contains valuable information worth millions on the black market. How do you start?",
                         "Scout the building's physical security during the day, posing as a maintenance worker.",
                         "Directly hack into Zetacorp's mainframe to gather intel on the vault's digital defenses.",
                         "Contact an inside man who claims to have access codes to the vault."),
                Question("With the information from the mainframe, you discover a brief window when the vault's digital defenses are at their lowest during a system update. How do you exploit this?",
                         "Assemble a team to storm the vault physically during the update.",
                         "Use a sophisticated AI to perform a remote hack during the system update.",
                         "Plant a delayed-action virus in the system to disable the vault's door during the update."),
                Question("You've breached the vault and secured the data. However, your intrusion has been detected, and Zetacorp's private security forces are closing in. How do you escape?",
                         "Escape through the sewers beneath the building, using pre-placed markers to navigate.",
                         "Initiate a blackout to cover your escape and use a pre-hacked vehicle for exfiltration.",
                         "Stand and fight, using the building's security systems against the guards."),
               
            ]
    
    mutating func compareUserResponse(_ response: String) -> Bool {
        if response == question[questionIndex].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    mutating func increaseIndex() {
        if questionIndex < question.count-1 {
            questionIndex += 1
        } else {
            questionIndex = 0
            score = 0
        }
    }
    
    func getScore() -> Int {
        return score
    }
    
    func getNextQuestion() -> String {
        return question[questionIndex].question
    }
    
    func getChoiceOne() -> String {
        return question[questionIndex].option_one
    }
    
    func getChoiceTwo() -> String {
        return question[questionIndex].option_two
    }
    
    func getImageName() -> Int {
        return questionIndex
    }
    
    
}
