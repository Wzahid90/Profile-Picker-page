//
//  Answer.swift
//  GameApp
//
//  Created by DPI Student 054 on 7/14/24.
//

import Foundation

struct Answer: Identifiable {
    var id = UUID() // Setting the UUID ourselves inside of the model, because API doesn't return a unique ID for each answer
    var text: AttributedString
    var isCorrect: Bool
}

// Models(group)- add trivia file

import Foundation

struct Trivia: Decodable {
    var results: [Result]
    
    struct Result: Decodable, Identifiable {
        // We need to set the ID inside of the closure, because the API doesn' return us an ID for each result
        var id: UUID {
            UUID()
        }
        var category: String
        var type: String
        var difficulty: String
        var question: String
        var correctAnswer: String
        var incorrectAnswers: [String]
        
        // Custom coding key, not included in the API response, so we need to set it inside the closure
        var formattedQuestion: AttributedString {
            do {
                // Formatting the question with AttributedString, because API might return some markdown text - which will be hard to read if we keep the string as is
                return try AttributedString(markdown: question)
            } catch {
                // If we run into an error, return an empty string
                print("Error setting formattedQuestion: \(error)")
                return ""
            }
        }
