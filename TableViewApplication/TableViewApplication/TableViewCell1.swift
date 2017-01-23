//
//  TableViewCell1.swift
//  TableViewApplication
//
//  Created by Kuliza-334 on 19/01/17.
//  Copyright © 2017 Kuliza-334. All rights reserved.
//

import UIKit

class TableViewCell1: UITableViewCell {
    
    @IBOutlet weak var myimage: UIImageView!
    
    @IBOutlet weak var post: UILabel!
    @IBOutlet weak var name: UILabel!
    
    override func awakeFromNib() {
        self.myimage.layer.cornerRadius = (self.myimage.frame.width) / 2.0
        self.myimage.clipsToBounds = true
        // self.profileMsgCount.layer.cornerRadius = (self.profileMsgCount.frame.width) / 2.0
    }
}
