//
//  ToppingsViewController.swift
//  BurgerClass_MiniApp
//
//  Created by MAX WIDHALM on 10/12/22.
//

import UIKit

class ToppingsViewController: UIViewController {

    var cookedLevel : CookedLevel!
    
    var condiment : String!
    var pickle : String!
    var onion : String!
    var cheese : String!
    var tomato : String!
    var lettuce : String!
    var mayo : String!
    
    var tempBurger : Burger!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func condimentAction(_ sender: UISegmentedControl) {
        let select = sender.selectedSegmentIndex
        switch select {
        case 0: condiment = "Ketchup"
        case 1: condiment = "Mustard"
        case 2: condiment = "No Condiment"
        default: condiment = "No Condiment"
        }
    }
    
    @IBAction func pickleAction(_ sender: UISegmentedControl) {
        let select = sender.selectedSegmentIndex
        switch select {
        case 0: pickle = "Pickle"
        case 1: pickle = "No Pickle"
        default: pickle = "Pickle"
        }
    }
    
    @IBAction func onionAction(_ sender: UISegmentedControl) {
        let select = sender.selectedSegmentIndex
        switch select {
        case 0: onion = "Onion"
        case 1: onion = "No Onion"
        default: onion = "No Onion"
        }
    }
    
    @IBAction func cheeseAction(_ sender: UISegmentedControl) {
        let select = sender.selectedSegmentIndex
        switch select {
        case 0: cheese = "Cheese"
        case 1: cheese = "No Cheese"
        default: cheese = "Cheese"
        }
    }
    
    @IBAction func tomatoAction(_ sender: UISegmentedControl) {
        let select = sender.selectedSegmentIndex
        switch select {
        case 0: tomato = "Tomato"
        case 1: tomato = "No Tomato"
        default: tomato = "Tomato"
        }
    }
    
    @IBAction func lettuceAction(_ sender: UISegmentedControl) {
        let select = sender.selectedSegmentIndex
        switch select {
        case 0: lettuce = "Lettuce"
        case 1: lettuce = "No Lettuce"
        default: lettuce = "Lettuce"
        }
    }
    
    @IBAction func mayoAction(_ sender: UISegmentedControl) {
        let select = sender.selectedSegmentIndex
        switch select {
        case 0: mayo = "Mayo"
        case 1: mayo = "No Mayo"
        default: mayo = "No Mayo"
        }
    }
    
    
    @IBAction func addBurgerAction(_ sender: UIButton) {
        //1 Create Alert Controller
        let alert = UIAlertController(title: "Error", message: "Select one of every topping option", preferredStyle: .alert)
        
        //2 Create Actions
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        //3 Add Actions
        alert.addAction(okAction)
        
        //4 Present Alert Controller
        if condiment == nil || pickle == nil || onion == nil || cheese == nil || tomato == nil || lettuce == nil || mayo == nil {
            present(alert, animated: true, completion: nil)
        }
        else {
            tempBurger = Burger(type: "Custom Burger", cooked: cookedLevel, condiment: condiment, pickle: pickle, onion: onion, cheese: cheese, tomato: tomato, lettuce: lettuce, mayo: mayo)
            performSegue(withIdentifier: "unwind", sender: self)
            
            
        }
        
        
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "ReviewOrderSegue3" {
//            let nvc = segue.destination as! ReviewOrderViewController
//            nvc.cart.append(tempBurger!)
//        }
//    }
    
    
    
    
}
