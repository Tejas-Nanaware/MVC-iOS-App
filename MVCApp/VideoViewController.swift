//
//  VideoViewController.swift
//  MVCApp
//
//  Created by admin on 05/04/17.
//  Copyright © 2017 ACE. All rights reserved.
//

import UIKit

class VideoViewController: UIViewController {
    @IBOutlet weak var webView: UIWebView!
    private var _item : cellModel!
    var item : cellModel {
        get {
            return _item
        }
        set {
            _item = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.loadHTMLString(item.videoURL, baseURL: nil)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
