//
//  PopUpViewCell.swift
//  TabBarDemo
//
//  Created by Martin Løseth Jensen on 10/05/2019.
//  Copyright © 2019 Martin Løseth Jensen. All rights reserved.
//

import UIKit

class PopUpViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    var parentVC: FirstViewController?

    //Textfield
    override func viewDidLoad() {

    }

    @IBAction func savePressed(_ sender: Any) {
        if let link = textField.text {
            parentVC?.addLink(url: link)
        }
        parentVC?.dismiss(animated: true, completion: nil)
    }

}
