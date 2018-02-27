//
//  PostTableViewCell.swift
//  Timeline
//
//  Created by brock tyler on 2/26/18.
//  Copyright © 2018 Brock Tyler. All rights reserved.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    var post: Post? {
        didSet {
            updateViews()
        }
    }
    
    func updateViews() {
        
        if let post = post {
            
            self.imageView?.image = post.photo
            
        }
    }

}
