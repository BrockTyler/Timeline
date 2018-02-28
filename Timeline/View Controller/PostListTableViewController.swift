//
//  PostListTableViewController.swift
//  Timeline
//
//  Created by brock tyler on 2/26/18.
//  Copyright © 2018 Brock Tyler. All rights reserved.
//

import UIKit

class PostListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = PostController.shared.imageHeight
        tableView.estimatedRowHeight = PostController.shared.imageHeight
    }

    // MARK: - Table view data source
 
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return PostController.shared.posts.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "postCell", for: indexPath) as? PostTableViewCell else { return UITableViewCell() }

        let postResult = PostController.shared.posts[indexPath.row]
        
//        let cellImage: UIImageView = UIImageView(frame: CGRectMake(5, 5, 50, 50))
//        cell.addSubview(cellImage)
        
        cell.post = postResult

        return cell
    }
    
    
    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destinationViewController = segue.destination as? PostDetailTableViewController,
            let index = tableView.indexPathForSelectedRow?.row {
            
            let post = PostController.shared.posts[index]
            destinationViewController.post = post
        }
    }
}
