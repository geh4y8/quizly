//
//  ViewController.swift
//  Quizly
//
//  Created by Guy Halperin on 11/5/14.
//  Copyright (c) 2014 Guy Halperin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Instance Variables
    var arrayOfQuestions = []
    var numberOfLives = 3
    var numberOfPoints = 0
    var currentQuestion = 0
    var questionCorrectAnswer = 1

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var currentNumberOfPointsLabel: UILabel!
    @IBOutlet weak var currentNumberOfLivesLabel: UILabel!
    @IBOutlet weak var answerOneButton: UIButton!
    @IBOutlet weak var answerTwoButton: UIButton!
    @IBOutlet weak var answerThreeButton: UIButton!
    @IBOutlet weak var answerFourButton: UIButton!
    @IBOutlet weak var nextQuestionButton: UIButton!
    @IBAction func answerOneButtonPressed(sender: UIButton) {
    }
    @IBAction func answerTwoButtonPressed(sender: UIButton) {
    }
    @IBAction func answerThreeButtonPressed(sender: UIButton) {
    }
    @IBAction func answerFourButtonPressed(sender: UIButton) {
    }
    @IBAction func nextQuestionButtonPressed(sender: UIButton) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //MARK: Questions
        let questionOne = question("What year did WWII start?", answerOne: "1939", answerTwo: "1940", answerThree: "1941", answerFour: "1942", correctAnswer: 1)
        let questionTwo = question("What day was D-Day?", answerOne: "June 6, 1944", answerTwo: "June 16, 1944", answerThree: "June 26, 1944", answerFour: "June 16, 1943", correctAnswer: 1)
        let questionThree = question("What country was first invaded by Germany?", answerOne: "France", answerTwo: "Belgium", answerThree: "Poland", answerFour: "Russia", correctAnswer: 3)
        let questionFour = question("Which article of the Weimar Constitution granted Hitler emergency powers? ", answerOne: "Article 26", answerTwo: "Article 86", answerThree: "Article 3", answerFour: "Article 48", correctAnswer: 4)
        let questionFive = question("Who was the leader of the Soviet Union during World War II?", answerOne: "Lenin", answerTwo: "Trotsky", answerThree: "Stalin", answerFour: "Khruschev", correctAnswer: 3)
        let questionSix = question("The main Axis powers of WWII Consisted of: Germany, _____, _____", answerOne: "Italy, Japan", answerTwo: "Russia, Japan", answerThree: "Romania, Russia", answerFour: "Japan, Romania", correctAnswer: 1)
        
        // Adding all the questions to the array
        arrayOfQuestions = [questionOne, questionTwo, questionThree, questionFour, questionFive, questionSix]
    
        //Initialize the app and values
        initialState()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: Adding Questions Function
    func question(question:String, answerOne:String, answerTwo:String, answerThree:String, answerFour:String, correctAnswer:Int) -> NSArray {
        
        var quizQuestion = question
        
        var firstAnswer = answerOne
        var secondAnswer = answerTwo
        var thirdAnswer = answerThree
        var fourthAnswer = answerFour
        var rightAnswer = correctAnswer
        
        let questionAnswerArray = [question, firstAnswer, secondAnswer, thirdAnswer, fourthAnswer, rightAnswer]
        return questionAnswerArray
    }
    
    func initialState(){
        
        var firstQuestion = arrayOfQuestions[0]
        
        numberOfLives = 3
        numberOfPoints = 0
        currentQuestion = 0
        questionCorrectAnswer = 1
        
        currentNumberOfLivesLabel.text = "\(numberOfLives)"
        currentNumberOfPointsLabel.text = "\(numberOfPoints)"
        questionLabel.text = "\(firstQuestion[0])"
        
        answerOneButton.setTitle("\(firstQuestion[1])", forState: UIControlState.Normal)
        answerTwoButton.setTitle("\(firstQuestion[2])", forState: UIControlState.Normal)
        answerThreeButton.setTitle("\(firstQuestion[3])", forState: UIControlState.Normal)
        answerFourButton.setTitle("\(firstQuestion[4])", forState: UIControlState.Normal)
        
        nextQuestionButton.hidden = true
    }
  
}

