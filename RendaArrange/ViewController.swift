//
//  ViewController.swift
//  RendaArrange
//
//  Created by . HIKARU on 2023/12/13.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet var  imageView:UIImageView!
    
    @IBOutlet var countLabel:UILabel!
    
    var tapCount:Int=150
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func Tap(){
        tapCount=tapCount-1
        
        countLabel.text=String(tapCount)
        
        if tapCount==0{
            
            countLabel.text="われたよ！！"
            
            imageView.image=UIImage(named:"unicorn")!
            
        }
        else if tapCount == -1 {
            tapCount=150
        } else if tapCount <= 50 {
            
            imageView.image=UIImage(named:"egg2")
        }else if tapCount <= 100 {
            
            imageView.image=UIImage(named:"egg1")
            
        }else {
            
            imageView.image=UIImage(named:"egg")
        }
        
    }

}

