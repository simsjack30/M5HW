//
//  Prompts.swift
//  M5HW
//
//  Created by John Sims on 2/8/24.
//

import Foundation

struct Prompts {
    var question: String
    var option_one: String?
    var option_two: String?
    var pointer_one: Int?
    var pointer_two: Int?

    init(_ ques: String, _ o_one: String, _ o_two: String, _ p_one: Int, _ p_two: Int) {
        self.question = ques
        self.option_one = o_one
        self.option_two = o_two
        self.pointer_one = p_one
        self.pointer_two = p_two
    }

    init(_ ques: String) {
        self.question = ques
        self.option_one = nil
        self.option_two = nil
        self.pointer_one = nil
        self.pointer_two = nil
    }
}

