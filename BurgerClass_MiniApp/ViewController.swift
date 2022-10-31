//
//  ViewController.swift
//  BurgerClass_MiniApp
//
//  Created by MAX WIDHALM on 10/10/22.
//

import UIKit

class ViewController: UIViewController {

    var cookedLevel : CookedLevel!
    var tempBurger : Burger!
    var initialCart = [Burger]()
    
    
    @IBOutlet weak var cookedLevelOutlet: UISegmentedControl!
    @IBOutlet weak var burgerAddedLabelOutlet: UILabel!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        //self.view.backgroundColor = UIColor(patternImage: UIImage(named: "beesechurger.png")!)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toppingsSegue" {
            let nvc = segue.destination as! ToppingsViewController
            nvc.cookedLevel = cookedLevel ?? CookedLevel.medium
            
        }
        
        if segue.identifier == "reviewOrderSegue" {
            let nvc = segue.destination as! ReviewOrderViewController
            nvc.cart = initialCart
        }
    }
    
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        let svc = segue.source as! ToppingsViewController
        initialCart.append(svc.tempBurger)
        burgerAddedLabelOutlet.text = "Custom Burger Added to Cart"
        //print(tempBurger)
    }
    
    @IBAction func cookedLevelAction(_ sender: UISegmentedControl) {
        
        let select = sender.selectedSegmentIndex
        
        switch select {
        case 0: cookedLevel = CookedLevel.rare
        case 1: cookedLevel = CookedLevel.medium
        case 2: cookedLevel = CookedLevel.wellDone
        default: cookedLevel = CookedLevel.medium
        }
    }
    
    
    @IBAction func beesechurgerAction(_ sender: UITapGestureRecognizer) {
        burgerAddedLabelOutlet.text = "Beesechurger added to cart"
        tempBurger = Burger(type: "Beesechurger", cooked: cookedLevel ?? CookedLevel.medium, condiment: "Ketchup", pickle: "No Pickle", onion: "No Onion", cheese: "Lots", tomato: "Tomato", lettuce: "No Lettuce", mayo: "No Mayo")
        initialCart.append(tempBurger)
        performSegue(withIdentifier: "reviewOrderSegue", sender: self)
        
    }
    
    @IBAction func krabbyPattyAction(_ sender: UITapGestureRecognizer) {
        burgerAddedLabelOutlet.text = "Krabby Patty Added to cart"
        tempBurger = Burger(type: "Beesechurger", cooked: cookedLevel ?? CookedLevel.medium, condiment: "Ketchup", pickle: "Extra Pickle", onion: "No Onion", cheese: "Cheese", tomato: "Tomato", lettuce: "Lettuce", mayo: "Mayo")
        initialCart.append(tempBurger)
        performSegue(withIdentifier: "reviewOrderSegue", sender: self)
    }
    
    @IBAction func heienburgerAction(_ sender: UITapGestureRecognizer) {
        burgerAddedLabelOutlet.text = "Heisenburger added to cart"
        tempBurger = Burger(type: "Beesechurger", cooked: cookedLevel ?? CookedLevel.medium, condiment: "Ketchup", pickle: "No Pickle", onion: "No Onion", cheese: "Cheese", tomato: "Tomato", lettuce: "Lettuce", mayo: "Mayo")
        initialCart.append(tempBurger)
        performSegue(withIdentifier: "reviewOrderSegue", sender: self)
        
    }
    
    @IBAction func customAction(_ sender: UITapGestureRecognizer) {
        performSegue(withIdentifier: "toppingsSegue", sender: self)
        burgerAddedLabelOutlet.text = ""
    }
    

    @IBAction func reviewOrderAction(_ sender: UIButton) {
        performSegue(withIdentifier: "reviewOrderSegue", sender: self)
    }
    
    
    
}

