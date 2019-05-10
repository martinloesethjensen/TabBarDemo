//
//  FirstViewController.swift
//  TabBarDemo
//
//  Created by Martin Løseth Jensen on 30/04/2019.
//  Copyright © 2019 Martin Løseth Jensen. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UIPopoverPresentationControllerDelegate {
    var links = [String]()
    var url = URL(string: "https://www.dr.dk")
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        self.tableView.register(TableViewCell.self, forCellReuseIdentifier: "cell1")
        links.append("https://www.dr.dk")
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return links.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as? TableViewCell
        cell?.textLabel?.text = links[indexPath.row]
        return cell!
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "secondViewSegue", sender: self)
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "popupsegue" {
            let popVC = segue.destination as! PopUpViewController
            popVC.parentVC = self //So we can call the add metod
            popVC.preferredContentSize = CGSize(width: 300, height: 300) //dynamic size
            popVC.presentationController?.delegate = self
        }

        if segue.identifier == "secondViewSegue" {
            // get a reference to the second view controller
            let secondViewController = segue.destination as! SecondViewController

            // set a variable in the second view controller with the String to pass
            secondViewController.receivedString = links[tableView.indexPathForSelectedRow?.row ?? -1]

        }
    }

    func adaptivePresentationStyle(for controller: UIPresentationController, traitCollection: UITraitCollection) -> UIModalPresentationStyle {
        return UIModalPresentationStyle.none
    }

    func addLink(url: String) {
        links.append(url)
        tableView.reloadData()
    }

    @IBAction func addLinkPressed(_ sender: Any) {

    }
}
