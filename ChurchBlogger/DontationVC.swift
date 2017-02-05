//
//  DontationVC.swift
//  ChurchBlogger
//
//  Created by Joel on 2/4/17.
//  Copyright © 2017 Joel Pratt. All rights reserved.
//

import Foundation
import UIKit

class DonationVC: UIViewController {
    
    @IBAction func openGivingPage(_ sender: Any) {
        let app = UIApplication.shared
        
        let urlString = "http://bit.ly/newdaygiving"
        let url = URL(string: urlString)
        
        app.open(url!, options: [:], completionHandler: nil)
    }
}
