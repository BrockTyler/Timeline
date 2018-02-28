//
//  PostDetailTableViewController.swift
//  Timeline
//
//  Created by brock tyler on 2/26/18.
//  Copyright © 2018 Brock Tyler. All rights reserved.
//

import UIKit

class PostDetailTableViewController: UITableViewController {
    
    @IBOutlet weak var postImageView: UIImageView!
    
    var post: Post?
    
    let rowHeight: CGFloat = 44
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        
        tableView.rowHeight = rowHeight
        tableView.estimatedRowHeight = rowHeight
    }
    
    func updateViews() {
        
        postImageView.image = post?.photo
        
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        guard let comments = post?.comments else { return 0 }
        
        return comments.count
    }
    
        override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
    
            return rowHeight
        }
    
        override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    
            return rowHeight
        }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "postDetailCommentCell", for: indexPath)
        
        let commentAtIndex = post?.comments[indexPath.row]
        
        cell.textLabel?.text = commentAtIndex?.timestampString
        cell.detailTextLabel?.text = commentAtIndex?.text
        
        return cell
    }
    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
            
        }
    }
}
