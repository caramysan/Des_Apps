//
//  VideoVC.swift
//  VideoNoticia
//
//  Created by Carlos Mendizabal on 05/05/21.
//  Copyright © 2021 codepix. All rights reserved.
//

import UIKit
import WebKit

class VideoVC: UIViewController, WKNavigationDelegate{
    
    var wview : WKWebView!
    
    override func loadView() {
           wview = WKWebView()
           wview.navigationDelegate = self
           view = wview
       }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://www.youtube.com/watch?v=B3ZCJhp39F0")!
        wview.load(URLRequest(url: url))

        // Do any additional setup after loading the view.
    }

}
