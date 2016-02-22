//
//  ImmFamViewController.swift
//  Fmly Tree
//
//  Created by Janet Weber on 2/20/16.
//  Copyright © 2016 Weber Solutions. All rights reserved.
//

import UIKit

class ImmFamViewController: UIViewController {
    
    var famPics = [UIImage]()  // UIImage array of individual pics
    
    // load html for individual bios
    let markString = "<p>&nbsp;&nbsp;<h3>Mark</h3>Vice President of Research and Development, Fresenius Kabi USA, Inc.  M.S. Computer Science - DePaul University, 1995.  B.S. Electrical Engineering - Valparaiso University 1986.  Saints Peter &amp; Paul Catholic Church, Cary, IL - Eucharistic Minister, Confirmation Instructor, Service Group Mentor.  Enjoys FISHING, golfing, being outdoors, and a good beer.</p>"
    let janetString = "<p>&nbsp;&nbsp;<h3>Janet</h3>Pursuing certificates in Mobile Application Development and Web Development from McHenry County College.  M.S. Computer Science - Villanova University, 1990.  B.S. Computer Science &amp; Mathematics - Valparaiso University, 1986. Former Home School teacher and stay-at-home mom.  Volunteer at Informed Choices, Crystal Lake, IL.  Enjoys competitive sports, gardening, reading, and wine.</p>"
    let christianString = "<p>&nbsp;&nbsp;<h3>Christian - 24</h3>Currently employed by TMC | A Division of C.H. Robinson working on site at client, Southern Wine and Spirits, in Miramar, FL.  Graduate of Roosevelt University, Chicago, IL (Dec 2013) - B.A. Economics.  Former barista at Caribou Coffee, head summer swim coach and lifeguard at Boulder Ridge Country Club.</p>"
    let josephString = "<p>&nbsp;&nbsp;<h3>Joseph - 22</h3>In fourth year of a five year program at Seton Hill University, Greensburg, PA pursuing B.S./M.S in Physician Assistant Studies.  Formerly employed by Chipotle in Greensburg. Former summer lifeguard at Cary Park District / Trout Valley and summer swim coach for Trails of Algonquin.</p>"
    let aaronString = "<p>&nbsp;&nbsp;<h3>Aaron - 21</h3>In third year at Quincy University, Quincy, IL pursuing B.S. in Aviation with two minors -  Communications and Management.  Employed as lifeguard and sports live video assistant at QU.  Summer lifeguard and swim coach at Boulder Ridge Country Club. Dating Krystal (3 years).</p>"
    let hannahString = "<p>&nbsp;&nbsp;<h3>Hannah - 20</h3>Currently in second year at Lewis University, Romeoville, IL pursuing B.S. in Nursing. Plays soccer for Lewis as red-shirt Freshman.  Summer lifeguard and head swim coach at Boulder Ridge Country Club.  Enjoys fitness, shopping, crafts, and reading.</p>"
    let nateString = "<p>&nbsp;&nbsp;<h3>Nate - 18</h3>Senior at Cary-Grove High School.  Playing varsity soccer and varsity tennis.  Taking several honors and AP courses.  Heading to France with French Classes in March 2016. Interested in the field of Computer Science.  Applying to seven schools.  Summer manager/lifeguard at Cary Park District.  Enjoys computer gaming and junk food.</p>"
    let lukeString = "<p>&nbsp;&nbsp;<h3>Luke - 16</h3>Junior at Cary-Grove High School.  Playing junior varsity soccer and varsity tennis. Taking several honors and AP courses.  German Exchange 2016 - heading to Germany in June. Interested in the field of Business (Sports Management).  Summer lifeguard at Cary Park District.  Enjoys computer gaming and junk food.</p>"
    let dogsString = "<p>&nbsp;&nbsp;<h3>Star, Marley and Lacey</h3>Star (Pekingese Beagle mix - smaller dog - top) is the old lady - soon to be 11. Her nickname is 'the terrorist!'  Marley (Malinois mix - lighter coloring - middle) and Lacey (Shepherd mix - darker coloring - bottom) just turned two.  They are great running/walking partners.  All three are rescues and love to cuddle.  Can't imagine the Weber house without them.</p>"
    
    var displayText : String = ""    // string to hold display text
    
    @IBOutlet weak var famPicBkgrnd: UIImageView!   // declare properties for
    @IBOutlet weak var famPic2: UIImageView!        // images and backgrounds
    @IBOutlet weak var imFamBkgrnd: UIImageView!    // for family and ind pics
    @IBOutlet weak var imFamPic: UIImageView!
    
    @IBOutlet weak var textWebView: UIWebView!      // property for view that
                                                    // displays text

    //**************************************************************************
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        famPics.removeAll()                         // create array of UIImages
        famPics.append(UIImage(named: "mark")!)     // for individual family
        famPics.append(UIImage(named: "janet")!)    // pics.
        famPics.append(UIImage(named: "christian")!)
        famPics.append(UIImage(named: "joseph")!)
        famPics.append(UIImage(named: "aaron")!)
        famPics.append(UIImage(named: "hannah")!)
        famPics.append(UIImage(named: "nate")!)
        famPics.append(UIImage(named: "luke")!)
        famPics.append(UIImage(named: "dogs")!)

        famPic2.hidden=false                        // Display family pic, not
        famPicBkgrnd.hidden=false                   // individual pic
        imFamPic.hidden=true
        imFamBkgrnd.hidden=true

    } // end of viewDidLoad
    
    //**************************************************************************
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    //**************************************************************************
    @IBAction func displayIndPic(sender: UIButton) {
        // This function displays the correct individual family pic in this view
        // First the family pic and background are hidden. Then the correct
        // image is loaded from the array using the sender tag from button
        // press.  Then the ind pic and background are unhidden.
      
        switch (sender.tag) {
        case 0, 1, 2, 3, 4, 5, 6, 7, 8: // one of family member buttons
            famPic2.hidden=true         //   so hide the family pic and
            famPicBkgrnd.hidden=true    //   background.  Unhide the ind pic
            imFamPic.image=famPics[sender.tag] // and background. Also
            imFamPic.hidden=false       //   load appropriate image based
            imFamBkgrnd.hidden=false    //   on sender.
        case 10:                        // back to family button
            famPic2.hidden=false        //   so unhide family pic
            famPicBkgrnd.hidden=false   //   and background, then
            imFamBkgrnd.hidden=true     //   hide ind pic and
            imFamPic.hidden=true        //   background.  Also
            textWebView.hidden=true     //   hide textwebview
        default: print("invalid switch")
        }
        
        if (sender.tag != 10) {         // if not back to family button
            textWebView.hidden = false          // unhide webview and
            switch (sender.tag) {               // set the display text
            case 0: displayText = markString    // string based on sender
            case 1: displayText = janetString   // tag.
            case 2: displayText = christianString
            case 3: displayText = josephString
            case 4: displayText = aaronString
            case 5: displayText = hannahString
            case 6: displayText = nateString
            case 7: displayText = lukeString
            case 8: displayText = dogsString
            default: print("default switch")
            }                                   // load text string into webview
        textWebView.loadHTMLString(displayText, baseURL: nil)
        }
        
    }  // end of displayIndPic function
}
