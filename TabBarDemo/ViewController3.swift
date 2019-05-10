//
//  ViewController3.swift
//  TabBarDemo
//
//  Created by Martin Løseth Jensen on 10/05/2019.
//  Copyright © 2019 Martin Løseth Jensen. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func goToBookmarkPressed(_ sender: Any) {
        self.tabBarController?.selectedIndex = 0
    }

    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */

}
