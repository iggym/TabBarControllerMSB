//
//  GoogleNewsVC.swift
//  TabBarControllerMSB
//
//  Created by Iggy Mwangi on 4/1/17.
//  Copyright © 2017 Iggy Mwangi. All rights reserved.
//

import Foundation
import UIKit

class GoogleNewsVC : UIViewController {
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loadWebView(webView: webView, webAddress: "https://news.google.com", label: label)
    }
    
    
}
