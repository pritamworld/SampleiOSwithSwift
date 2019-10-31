//
//  SplashViewController.swift
//  SampleiOSwithSwift
//
//  Created by Pritesh Patel on 2018-02-20.
//  Copyright © 2018 MoxDroid. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {

    @IBOutlet weak var lblVersion: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let version = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") {
            print("version is : \(version)")
            lblVersion.text = "V \(version)"
        }
        
        if let versionCode = Bundle.main.object(forInfoDictionaryKey: "CFBundleVersion") {
            print("version is : \(versionCode)")
        }
        
        //Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.splashTimeOut(sender:)), userInfo: nil, repeats: false)
        
        //customSplashWait()
        
    }
   
    
    @objc func splashTimeOut(sender : Timer){
        //AppDelegate.sharedInstance().window?.rootViewController = ViewController()
        print("Timeout")
        let vc = storyboard?.instantiateViewController(withIdentifier: "mainScreen") as! ViewController
        self.present(vc, animated: true, completion: nil)
    }
    
    func customSplashWait()
    {
        Thread.sleep(forTimeInterval: 2.0)
        let vc = storyboard?.instantiateViewController(withIdentifier: "mainScreen") as! MainViewController
        self.present(vc, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
