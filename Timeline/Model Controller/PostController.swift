//
//  PostController.swift
//  Timeline
//
//  Created by brock tyler on 2/26/18.
//  Copyright © 2018 Brock Tyler. All rights reserved.
//

import UIKit
import CloudKit


class PostController {
    
    static let shared = PostController()
    
    var posts: [Post] = []
    
    func createPostWith(image: UIImage, caption: String) {
        
        guard let data = UIImagePNGRepresentation(image) else { return }
        
        let post = Post(photoData: data)
        
        addComment(toPost: post, caption: caption)
        
        self.posts.append(post)
    }
    
    func addComment(toPost post: Post, caption: String = "") {
        
        let photoCaption = Comment(text: caption, post: post)
        
        post.comments.append(photoCaption)
    }
    
}
