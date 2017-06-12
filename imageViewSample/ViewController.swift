//
//  ViewController.swift
//  imageViewSample
//
//  Created by Developer on 10/06/17.
//  Copyright © 2017 Developer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
  
    let urlKey = "http://html.com/wp-content/uploads/flamingo.jpg"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func click(_ sender: Any) {
       
        if let url = URL(string: urlKey){
            
            do {
                let data = try Data(contentsOf: url)
                self.imageView.image = UIImage(data: data)
                
            }catch let err {
                print(" Error : \(err.localizedDescription)")
            }
            
            
        }
        
        
    }

}

