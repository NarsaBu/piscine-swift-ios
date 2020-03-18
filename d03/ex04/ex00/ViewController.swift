//
//  ViewController.swift
//  ex00
//
//  Created by Melkozavr on 16.03.2020.
//  Copyright © 2020 Melkozavr. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate{

    @IBOutlet weak var scroll: UIScrollView!
    var imageView: UIImageView?
    var image = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView = UIImageView(image: image)
        scroll.addSubview(imageView!)
        scroll.contentSize = (imageView?.frame.size)!
        scroll.maximumZoomScale = 100
    }
    
    func setZoomScale() {
        var minZoom = min(self.view.bounds.size.width / imageView!.bounds.size.width, self.view.bounds.size.height / imageView!.bounds.size.height);
        
        if minZoom > 1.0 {
            minZoom = 1.0
        }
    }
    
    override func viewWillLayoutSubviews() {
        setZoomScale()
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }

}

