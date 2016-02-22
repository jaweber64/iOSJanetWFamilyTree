//
//  SecondViewController.swift
//  Fmly Tree
//
//  Created by Janet Weber on 2/20/16.
//  Copyright © 2016 Weber Solutions. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var mFamWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mFamWebView.loadRequest(NSURLRequest(URL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("mFam", ofType: "html")!)))

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

