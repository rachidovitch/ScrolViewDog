//
//  ViewController.swift
//  ScrolViewDogs
//
//  Created by mac on 21/09/2016.
//  Copyright © 2016 Rachidovitch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrolView: UIScrollView!
    
    var images = [UIImageView]()
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        
        var contentWidth: CGFloat = 0.0
        let scrolWidth = scrolView.frame.size.width
        
        
        for x in 0...6 {
            
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            
            images.append(imageView)
            
            var newX: CGFloat = 0.0
            
            newX = scrolWidth / 2 + scrolWidth * CGFloat(x)
            
            contentWidth += newX
            
            scrolView.addSubview(imageView)
            
            imageView.frame = CGRect(x: newX - 75, y: (scrolView.frame.size.height / 2) - 75 , width: 150, height: 150)
            
        }
        
        scrolView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height )
        
        //ScrolView.backgroundColor = UIColor.yellow // to add color for my scrolView
        
        scrolView.clipsToBounds = false
        
    }

}

