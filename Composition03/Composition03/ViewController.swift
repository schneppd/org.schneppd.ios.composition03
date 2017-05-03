//
//  ViewController.swift
//  Composition03
//
//  Created by cdsm on 02/05/2017.
//  Copyright © 2017 com.schneppd.lab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TopLeftView: UIScrollView!
    @IBOutlet weak var TopRightView: UIScrollView!
    @IBOutlet weak var BottomView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //ensure margins when view rotates
    override func viewWillLayoutSubviews() {
        
        if UIDevice.current.orientation == UIDeviceOrientation.landscapeLeft || UIDevice.current.orientation == UIDeviceOrientation.landscapeRight {
            
            var rect = TopLeftView.frame
            rect.size.width = 254
            rect.size.height = 130
            TopLeftView.frame = rect
            
            rect = TopRightView.frame
            rect.origin.x = 294
            rect.size.width = 254
            rect.size.height = 130
            TopRightView.frame = rect
            
            rect = BottomView.frame
            rect.origin.y = 170
            rect.size.width = 528
            rect.size.height = 130
            BottomView.frame = rect
            
        } else {
            
            var rect = TopLeftView.frame
            rect.size.width = 130
            rect.size.height = 254
            TopLeftView.frame = rect
            
            rect = TopRightView.frame
            rect.origin.x = 170
            rect.size.width = 130
            rect.size.height = 254
            TopRightView.frame = rect
            
            rect = BottomView.frame
            rect.origin.y = 295
            rect.size.width = 280
            rect.size.height = 254
            BottomView.frame = rect
        }
    }


}

