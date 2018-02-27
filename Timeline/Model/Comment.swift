//
//  Comment.swift
//  Timeline
//
//  Created by brock tyler on 2/26/18.
//  Copyright © 2018 Brock Tyler. All rights reserved.
//

import Foundation


class Comment {
    
    let text: String
    let timestamp: Date
    let post: Post
    
    init(text: String, timestamp: Date = Date(), post: Post) {
        
        self.text = text
        self.timestamp = timestamp
        self.post = post
    }
    
}
