//
//  WebViewController.swift
//  Property Mediator
//
//  Created by Raja Mohamed on 11/07/17.
//  Copyright © 2017 sedintechnologies. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {

    
    @IBOutlet weak var webView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        webView.loadRequest(URLRequest(url: URL(string: "http://www.livechennai.com/propertyratesinchennai.asp")!))

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

   

}
