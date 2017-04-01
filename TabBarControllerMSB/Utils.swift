//
//  Utils.swift
//  TabBarControllerMSB
//
//  Created by Iggy on 4/1/17.
//  Copyright © 2017 Iggy Mwangi. All rights reserved.
//

import Foundation
import UIKit
func loadWebView(webView: UIWebView, webAddress: String, label: UILabel){
    
    let url = NSURL (string: webAddress);
    let requestObj = URLRequest(url: url! as URL);
    webView.loadRequest(requestObj);
    label.text = webAddress
}
