//
//  cellModel.swift
//  MVCApp
//
//  Created by admin on 05/04/17.
//  Copyright © 2017 ACE. All rights reserved.
//

import Foundation
class cellModel {
    private var _imageURL : String
    private var _videoTitle : String
    private var _videoURL : String
    
    var imageURL : String {
        return _imageURL
    }
    var videoTitle : String {
        return _videoTitle
    }
    var videoURL : String {
        return _videoURL
    }
    
    init(imageURL : String, videoTitle : String, videoURL : String) {
        _imageURL = imageURL
        _videoTitle = videoTitle
        _videoURL = videoURL
    }
}
