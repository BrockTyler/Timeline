//
//  Post.swift
//  Timeline
//
//  Created by brock tyler on 2/26/18.
//  Copyright © 2018 Brock Tyler. All rights reserved.
//

import UIKit


class Post {
    
    let photoData: Data?
    let timestamp: Date
    var comments: [Comment]
    
    var photo: UIImage? {
        guard let photoData = photoData,
            let photoFromData = UIImage(data: photoData) else { return nil }
        
        return photoFromData
    }
    
    init(photoData: Data, timestamp: Date = Date(), comments: [Comment] = [] ) {
        
        self.photoData = photoData
        self.timestamp = timestamp
        self.comments = comments
    }
}
