//
//  TableViewCell.swift
//  TabBarDemo
//
//  Created by Martin Løseth Jensen on 10/05/2019.
//  Copyright © 2019 Martin Løseth Jensen. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    var url = URL(string: "")

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        self.textLabel?.highlightedTextColor = UIColor.white
        let backgroundView = UIView()
        backgroundView.backgroundColor = UIColor.init(hue: 1.41, saturation: 0.86, brightness: 0.84, alpha: 1)
        self.selectedBackgroundView = backgroundView
        self.textLabel?.textColor = UIColor.lightGray

        //Send url to second view controller
        //let urlstring = textLabel?.text
        //url = URL(string: urlstring ?? "https//www.google.com")
        // Configure the view for the selected state
    }

}
