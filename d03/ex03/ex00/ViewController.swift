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
    }


}

