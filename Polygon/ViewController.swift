//
//  ViewController.swift
//  Polygon
//
//  Created by Shinya Yamamoto on 2016/12/04.
//  Copyright © 2016年 plantio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        imageView.clipToPolygon(corners:3)
        for i in 3...12 {
            let dispatchTime = DispatchTime.now() + Double(i)
            DispatchQueue.main.asyncAfter( deadline: dispatchTime ) {
                DispatchQueue.main.async {
                    self.imageView.clipToPolygon(corners:i)
                }
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

