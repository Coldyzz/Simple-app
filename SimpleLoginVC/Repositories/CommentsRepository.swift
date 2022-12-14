//
//  CommentsRepository.swift
//  SimpleLoginVC
//
//  Created by Дима Холод on 24.10.2022.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

struct Comment: Codable {
    @DocumentID var id: String?
    let text: String
    let created: Date
    let postID: String
    let authorID: String
}

protocol CommentsRepository {
    func getAll(postID: String)
    func create(postID: String)
    func delete(postID: String, id: String)
}
