//
//  ToDo.swift
//  ToDoList
//
//  Created by Roman Hural on 20.04.2022.
//

import UIKit

struct ToDo: Equatable {
    let id = UUID()
    var title: String
    var isComplete: Bool
    var dueDate: Date
    var notes: String?

    static func ==(lhs: ToDo, rhs: ToDo) -> Bool {
        return lhs.id == rhs.id
    }
    
    static func loadToDos() -> [ToDo]?  {
        return nil
    }

    static func loadSampleToDos() -> [ToDo] {
        let toDo1 = ToDo(title: "To-Do One", isComplete: false,
           dueDate: Date(), notes: "Notes 1")
        let toDo2 = ToDo(title: "To-Do Two", isComplete: false,
           dueDate: Date(), notes: "Notes 2")
        let toDo3 = ToDo(title: "To-Do Three", isComplete: false,
           dueDate: Date(), notes: "Notes 3")
    
        return [toDo1, toDo2, toDo3]
    }
}

