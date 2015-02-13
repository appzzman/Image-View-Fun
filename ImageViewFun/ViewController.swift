//
//  ViewController.swift
//  ImageViewFun
//
//  Created by Janusz Chudzynski on 2/12/15.
//  Copyright (c) 2015 Janusz Chudzynski. All rights reserved.
//  All images were downloaded from internet. I am not an owner of them.

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var frames = [UIImage]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.getURLOfImage()
        
        for index in 0...23 {
            var filename = "tmp-\(index).gif"
            var image = UIImage(named: filename)
            frames += [image!]
        }
        self.imageView.image = UIImage(named: "dog.jpg")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func animate(sender: AnyObject) {
        self.imageView.animationDuration = 2
        self.imageView.animationImages = frames
        self.imageView.animationRepeatCount = 0
        self.imageView.startAnimating()
    }
    
    func getURLOfImage(){
        let fileURL = NSBundle.mainBundle().URLForResource("cat", withExtension: "png")
        println(fileURL)
        
    }
}

