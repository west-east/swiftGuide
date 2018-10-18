//
//  ViewController.swift
//  SwiftGuide
//
//  Created by ticsmatic on 2018/10/18.
//  Copyright © 2018年 ticsmatic. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var tableView: UITableView!
    var dataArray = ["Tour", "The Basics"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupUI()
    }

    func setupUI() {
        tableView = UITableView(frame:self.view.bounds)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "ID")
        self.view.addSubview(tableView)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ID", for: indexPath)
        cell.textLabel?.text = dataArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.row == 0 {
            let controller = TourViewController.init()
            self.navigationController?.pushViewController(controller, animated: true)
        } else if indexPath.row == 1 {
            let controller = TheBasicsViewController.init()
            self.navigationController?.pushViewController(controller, animated: true)
        }
        
    }
}
