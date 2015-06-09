//
//  DetailViewController.swift
//  iOSBootCamp
//
//  Created by Stefano Zanetti on 06/06/15.
//  Copyright (c) 2015 #pragmamark. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var image: UIImage?
    
    // MARK: View life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = image
    }
    
}
