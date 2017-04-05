//
//  ViewController.swift
//  MVCApp
//
//  Created by admin on 05/04/17.
//  Copyright © 2017 ACE. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableVlew: UITableView!
    
    var items = [cellModel]()
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = items[indexPath.row]
        performSegue(withIdentifier: "sendVideo", sender: item)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VideoViewController {
            if let singleItem = sender as? cellModel {
                destination.item = singleItem
            }
        }
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ViewCell {
            let item = items[indexPath.row]
            cell.updateUI(_cellmodel: item)
            return cell
        }
        else {
            return UITableViewCell()
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // load the table rows
        let p1 = cellModel(imageURL: "https://i.ytimg.com/vi/FYyfoXs8zU8/hqdefault.jpg?custom=true&w=246&h=138&stc=true&jpg444=true&jpgq=90&sp=68&sigh=-ib3fxpL8NHuTmivtyAZ3HoFTuc", videoTitle: "Blender Scene", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/FYyfoXs8zU8\" frameborder=\"0\" allowfullscreen></iframe>")
        items.append(p1)
        let p2 = cellModel(imageURL: "https://i.ytimg.com/vi/8zR00Yg0L_o/hqdefault.jpg?custom=true&w=246&h=138&stc=true&jpg444=true&jpgq=90&sp=68&sigh=2gb89LjmTJfzRw3n1nsFXQxh2Fw", videoTitle: "Simple Ball Bounce", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/8zR00Yg0L_o\" frameborder=\"0\" allowfullscreen></iframe>")
        items.append(p2)
        let p3 = cellModel(imageURL: "https://i.ytimg.com/vi/D8Ert5yjMV4/hqdefault.jpg?custom=true&w=246&h=138&stc=true&jpg444=true&jpgq=90&sp=67&sigh=srbMCjNRWOUmf182-uAOJ6gbzyI", videoTitle: "Galaxy S8 & S8+", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/D8Ert5yjMV4\" frameborder=\"0\" allowfullscreen></iframe>")
        items.append(p3)
        let p4 = cellModel(imageURL: "https://i.ytimg.com/vi/3cxixDgHUYw/hqdefault.jpg?custom=true&w=246&h=138&stc=true&jpg444=true&jpgq=90&sp=68&sigh=-K9NVh3GiLkH7xrIr5HVVu4wyG4", videoTitle: "Justice League", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/3cxixDgHUYw\" frameborder=\"0\" allowfullscreen></iframe>")
        items.append(p4)
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
