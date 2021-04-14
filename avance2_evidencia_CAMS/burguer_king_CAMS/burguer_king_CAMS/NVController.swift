//
//  NVController.swift
//  burguer_king_CAMS
//
//  Created by Carlos Mendizabal on 13/04/21.
//

import UIKit
import WebKit

class NVController: UIViewController, WKNavigationDelegate{
    
    var wview : WKWebView!
    
    override func loadView() {
           wview = WKWebView()
           wview.navigationDelegate = self
           view = wview
       }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://www.milenio.com/temas/burgerking")!
        wview.load(URLRequest(url: url))

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
