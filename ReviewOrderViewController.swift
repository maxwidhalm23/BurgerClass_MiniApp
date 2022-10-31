//
//  ReviewOrderViewController.swift
//  BurgerClass_MiniApp
//
//  Created by MAX WIDHALM on 10/13/22.
//

import UIKit

class ReviewOrderViewController: UIViewController {
    
    
    @IBOutlet weak var cartTextViewOutlet: UITextView!
    
    var cart = [Burger]()
    var cartText : String = "------------------------------------------"

    override func viewDidLoad() {
        super.viewDidLoad()

        var tempText = "------------------------------------------"
        for i in 0..<cart.count {
            tempText += "\n\(cart[i].toString())"
            tempText += "\n------------------------------------------"
            
        }
        cartText = tempText
        cartTextViewOutlet.text = cartText
    }
    

}
