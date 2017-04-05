//
//  ViewCell.swift
//  MVCApp
//
//  Created by admin on 05/04/17.
//  Copyright © 2017 ACE. All rights reserved.
//

import UIKit

class ViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBOutlet weak var videoImage: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    
    func updateUI( _cellmodel : cellModel) {
        videoTitle.text = _cellmodel.videoTitle
        
        //code for downloading image
        let url = URL(string: _cellmodel.imageURL)
        DispatchQueue.global().async {
            do {
                //try fetching the URL
                let data = try Data(contentsOf: url!)
                DispatchQueue.global().sync {
                    self.videoImage.image = UIImage(data: data)
                }
            } catch {
                //if URL doesnot exist
                print("Image URL not found")
            }
        }
    }
    
}
