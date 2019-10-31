//
//  ViewController.swift
//  SampleiOSwithSwift
//
//  Created by Pritesh Patel on 2017-12-13.
//  Copyright © 2017 MoxDroid. All rights reserved.
//

import UIKit
//https://www.thorntech.com/2015/08/need-to-create-an-onboarding-flow-for-your-mobile-app-heres-how-to-do-it-using-uipageviewcontroller-in-swift/
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tvSample: UITableView!
    var data = ["A","B","C","A","B","C","A","B","C","A","B","C","A","B","C","A","B","C"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tvSample.dataSource = self
        tvSample.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "testcell")
        
        //Reuse the cell - Recommended for Complex custom cell
        //tableView.dequeueReusableCell(withIdentifier: "testcell")
        
        cell.textLabel?.text = data[indexPath.row]
        cell.detailTextLabel?.text = "Pritesh Patel"
        return cell
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    
    

}

