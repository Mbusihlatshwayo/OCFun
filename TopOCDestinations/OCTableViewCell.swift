//
//  OCTableViewCell.swift
//  TopOCDestinations
//
//  Created by Mbusi Hlatshwayo on 5/8/17.
//  Copyright © 2017 RainbowApps. All rights reserved.
//

import UIKit

class OCTableViewCell: UITableViewCell {

    @IBOutlet weak var previewImage: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateUI(myOC: OrangeCountyInfo) {
        videoTitle.text = myOC.videoTitle
        let url = URL(string: myOC.imageURL)!
        
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                // grab the synchronous ui thread and update
                DispatchQueue.global().sync {
                    self.previewImage.image = UIImage(data: data)
                    print("IMAGE SUCCESSFULL")
                }
            } catch {
                // handle the failure here
                print("not successfull :(")
            }
        }
    }

}
