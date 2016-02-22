//
//  FirstViewController.swift
//  Fmly Tree
//
//  Created by Janet Weber on 2/20/16.
//  Copyright © 2016 Weber Solutions. All rights reserved.
//
//  Following video was helpful for implementing the tab bar.  This isn't
//  the correct place for this, but it'll do.
//  http://codewithchris.com/ios-tab-bar-app/
//
//  Following youTube video was helpful for implementing the web view.
//  https://www.youtube.com/watch?v=rcVv1N1hReQ

import UIKit

class FirstViewController: UIViewController {

    // Declare property for accessing a UIWebView in code below
    @IBOutlet weak var storyWebView: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Display an html file in the web view.  The html file was created
        //  by right clicking on project navigator and selecting "new file",
        //  then naming the file 'something'.html (add html or cut and paste
        //  from elsewhere.  Same with .css file.
        //Images referred to in .html file were dragged into Project Name 
        //  in navigator), Build Phases, Copy Bundle Resources and choose
        //  COPY and FINISH in pop-up.
        
        storyWebView.loadRequest(NSURLRequest(URL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("ourStory", ofType: "html")!)))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

