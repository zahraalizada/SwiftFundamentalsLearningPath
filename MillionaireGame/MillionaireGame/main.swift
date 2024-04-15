//
//  main.swift
//  MillionaireGame
//
//  Created by Samxal Quliyev  on 16.03.24.
//

import Foundation

/*
 QEYD: Class, function isletmelisiniz
 */

/*
 Millioner Game

 - oyunda 15 sual olacaq.
 - oyuncu oyuna baslamadan evvel oz adini daxil etmelidir.
 - her sualin 4 varianti ve 1 duzgun cavabi olacaq.
 - ilk 5 sual heresi 1 xal olacaq. (maksimum 5 xal yigmis olacaq)
 - 6-10 arasi suallar heresi 3 xal olacaq
 - 11-15 arasi suallar heresi 5 xal olacaq
 - ilk 5 sualda sehv cavab olsa oyun bitecek (0 xal ile oyunu bitirecek)
 - 5-10 arasi sualda sehv olanda (5 xal ile oyunu bitirecek)
 - 11-15 arası suallarda istediyi vaxt terk ede biler (0 düymesine basaraq oyunu bitire biler, ne qeder xal yigilibsa gosterilecek)
 - 11-15 arası sehv cavab verse ilk 10 sualda yigdigi xal ile oyunu tamamlayacaq.
 - oyun bitenden sonra oyuncunun adini ve yigdigi xali gosterin.
 */


struct Question {
    let question: String
    let options: [String]
    let correctAnswer: String
}

class Millionaire {
    var user = ""
    var userpoints = 0
    
    let questions = [
        Question(question: "Question 1", options: ["a","b","c","d"], correctAnswer: "a"),
        Question(question: "Question 2", options: ["a","b","c","d"], correctAnswer: "a"),
        Question(question: "Question 3", options: ["a","b","c","d"], correctAnswer: "a"),
        Question(question: "Question 4", options: ["a","b","c","d"], correctAnswer: "a"),
        Question(question: "Question 5", options: ["a","b","c","d"], correctAnswer: "a"),
        Question(question: "Question 6", options: ["a","b","c","d"], correctAnswer: "a"),
        Question(question: "Question 7", options: ["a","b","c","d"], correctAnswer: "a"),
        Question(question: "Question 8", options: ["a","b","c","d"], correctAnswer: "a"),
        Question(question: "Question 9", options: ["a","b","c","d"], correctAnswer: "a"),
        Question(question: "Question 10", options: ["a","b","c","d"], correctAnswer: "a"),
        Question(question: "Question 11", options: ["a","b","c","d"], correctAnswer: "a"),
        Question(question: "Question 12", options: ["a","b","c","d"], correctAnswer: "a"),
        Question(question: "Question 13", options: ["a","b","c","d"], correctAnswer: "a"),
        Question(question: "Question 14", options: ["a","b","c","d"], correctAnswer: "a"),
        Question(question: "Question 15", options: ["a","b","c","d"], correctAnswer: "a")
    ]
    
    func userName() {
        print("Your Name: ")
        let userInput = readLine() ?? ""
        user.append(userInput)
    }
    
    func beginGame(){
        for (index, item) in questions.enumerated() {
            print(item.question)
            print(item.options)
            print("Your answer: ")
            let userAnswer = readLine() ?? ""
            
            if index <= 4 {
                if userAnswer == item.correctAnswer {
                    print("CORRECT")
                    userpoints += 1
                } else {
                    print("WRONG")
                    break
                }
            }
            else if (index >= 5 && index <= 9) {
                if userAnswer == item.correctAnswer {
                    print("CORRECT")
                    userpoints += 3
                } else {
                    print("WRONG")
                    userpoints = 5
                    break
                }
            }
            else if (index >= 10 && index <= 14) {
                if userAnswer == "0" {
                    print("Your result: \(userpoints)")
                    break
                }
                if userAnswer == item.correctAnswer {
                    print("CORRECT")
                    userpoints += 5
                } else {
                    print("WRONG")
                    userpoints = 20
                    break
                }
            }
            else {
                userpoints = 0
                print("Game Over")
                break
            }
        }
    }
}

let millionaire = Millionaire()
millionaire.userName()
millionaire.beginGame()

print("Player: \(millionaire.user)")
print("Result: \(millionaire.userpoints)")
