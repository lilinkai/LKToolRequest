//
//  ViewController.swift
//  ToolRequest
//
//  Created by lilinkainew on 2016/12/5.
//  Copyright © 2016年 lilinkainew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        LKToolRequest().sendRequest(request: RecommendListRequest(), handler: { (data, url) in
            print("data ======= \(data, url)")
        })
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

