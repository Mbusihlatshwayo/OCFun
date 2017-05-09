//
//  ViewController.swift
//  TopOCDestinations
//
//  Created by Mbusi Hlatshwayo on 5/8/17.
//  Copyright © 2017 RainbowApps. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var OCArray = [OrangeCountyInfo]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        let OC1 = OrangeCountyInfo(imageURL: "https://www.vahomeloancenters.org/wp-content/uploads/2011/06/orange-county-300x250.png", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/XhJXS4IdhgI\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Orange County Vacation Travel Guide | Expedia")
        
        let OC2 = OrangeCountyInfo(imageURL: "https://www.vahomeloancenters.org/wp-content/uploads/2011/06/orange-county-300x250.png", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/B0CU6BUoKpI\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Life in Orange County - Things to Do, Places to See")
        
        let OC3 = OrangeCountyInfo(imageURL: "https://www.vahomeloancenters.org/wp-content/uploads/2011/06/orange-county-300x250.png", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/f74YU-4to8g\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Lost in Orange County! California Girls")
        
        OCArray.append(OC1)
        OCArray.append(OC2)
        OCArray.append(OC3)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return OCArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let defaultCell = UITableViewCell()
        if let cell = tableView.dequeueReusableCell(withIdentifier: "OCCell", for: indexPath) as? OCTableViewCell {
            let ocObject = OCArray[indexPath.row]
            cell.updateUI(myOC: ocObject)
            return cell
        } else {
            return defaultCell
        }
    }
}

