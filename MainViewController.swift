//
//  MainViewController.swift
//  SampleiOSwithSwift
//
//  Created by Pritesh Patel on 2018-02-20.
//  Copyright © 2018 MoxDroid. All rights reserved.
//

import UIKit
import KYDrawerController

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.white
        title = "MainViewController"
        navigationItem.leftBarButtonItem = UIBarButtonItem(
            title: "Open",
            style: UIBarButtonItemStyle.plain,
            target: self,
            action: #selector(didTapOpenButton)
        )
        
        let closeButton    = UIButton()
        //closeButton.applyGradient(withColours: [UIColor.red, UIColor.black], gradientOrientation: GradientOrientation.horizontal)
        closeButton.backgroundColor = UIColor.red
        
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        closeButton.setTitle("Pop Over", for: UIControlState())
        closeButton.addTarget(self,
                              action: #selector(importantButtonPressed),
                              for: .touchUpInside
        )
        closeButton.sizeToFit()
        closeButton.setTitleColor(UIColor.blue, for: UIControlState())
        view.addSubview(closeButton)
    }
    
    @objc func didTapOpenButton(_ sender: UIBarButtonItem) {
        if let drawerController = navigationController?.parent as? KYDrawerController {
            drawerController.setDrawerState(.opened, animated: true)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //http://www.thomashanning.com/uipopoverpresentationcontroller/
    @objc func importantButtonPressed(_ sender: UIButton) {
        let tableViewController = UITableViewController()
        tableViewController.modalPresentationStyle = UIModalPresentationStyle.popover
        tableViewController.preferredContentSize = CGSize(width: 400, height: 400)
        
        present(tableViewController, animated: true, completion: nil)
        
        let popoverPresentationController = tableViewController.popoverPresentationController
        popoverPresentationController?.sourceView = sender
        popoverPresentationController?.sourceRect = CGRect(x: 0, y: 0, width: sender.frame.size.width, height: sender.frame.size.height)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
