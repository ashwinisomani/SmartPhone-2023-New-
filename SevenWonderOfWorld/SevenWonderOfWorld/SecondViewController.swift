//
//  SecondViewController.swift
//  SevenWonderOfWorld
//
//  Created by Ashwini Somani on 3/18/23.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var textView: UITextView!
    
    var text : String?
    override func viewDidLoad() {
        super.viewDidLoad()
        
       if let text = text {
           textView.text = text
            
        }
        else{
            textView.text = "No Description is Availble"
        }
    }
}
