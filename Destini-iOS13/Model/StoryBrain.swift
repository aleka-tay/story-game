//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain{
    
    //Attributes
    var storyNumber = 0
    let storyArray =  [Story(
        title: "You have been in a long-term relationship with your boyfriend. Suddenly, he asked you out on a date today at 21.00. It was very unexpected. What would your next move be?",
        choice1: "You asked no further questions.", choice1Destination: 2,
        choice2: "Where to?", choice2Destination: 1
    ),
    Story(
        title: "He says it is a secret.",
        choice1: "You get up and go pick an outfit for the evening.", choice1Destination: 2,
        choice2: "You beg him to tell you.", choice2Destination: 3
    ),
    Story(
        title: "Which dress you pick?",
        choice1: "Black long dress, with the prettiest v-cut in front.", choice1Destination: 5,
        choice2: "Short red dress with white off-shoulders.", choice2Destination: 4
    ),
    Story(
        title: "He said you can choose that. Fine restaurant or KFC",
        choice1: "KFC, you say jokingly", choice1Destination: 5,
        choice2: "Restaurant you say unsure", choice2Destination: 4
    ),
    Story(
        title: "You are all set and you get into the car. He drives you to the KFC. You laugh it off. You know him so well that you got prepared for anything that could happen. You too enter and are met with an empty KFC with just your friends. He booked the whole place just for this. Suddenly he gets to one knee and says: I love you! Will you marry me?. ",
        choice1: "Yes!", choice1Destination: 0,
        choice2: "Of course!", choice2Destination: 0
    ),
    Story(
        title: "You are all set, and you get into the car. He drives you to the nicest place you have ever seen. He booked a table at the finest restaurant in the city. You got to your table, and you see a nice bouget. He gets on his knee and asks you: I love you! Will you marry me?",
        choice1: "Yes!", choice1Destination: 0,
        choice2: "Of course!", choice2Destination: 0
    )
]
    
    // Methods
    func getStoryTitle() -> String{
        return storyArray[storyNumber].title
    }
    
    func getChoice1Title() -> String{
        return storyArray[storyNumber].choice1
    }
    
    func getChoice2Title() -> String{
        return storyArray[storyNumber].choice2
    }
    
    mutating func nextStory(userChoice: String){
        if(userChoice == storyArray[storyNumber].choice1){
            storyNumber = storyArray[storyNumber].choice1Destination
        } else if(userChoice == storyArray[storyNumber].choice2){
            storyNumber = storyArray[storyNumber].choice2Destination
        }
    }
}

