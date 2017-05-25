//
//  ViewController.swift
//  BrainyFacts
//
//  Created by Moises Gil on 5/25/17.
//  Copyright © 2017 Moises Gil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var randomFactLabel: UILabel!
    
    let facts = ["A flock of crows is known as a murder.",
                 "Cherophobia is the fear of fun.",
                 "If you lift a kangaroo’s tail off the ground it can’t hop.",
                 "Bananas are curved because they grow towards the sun."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        randomFactLabel.layer.cornerRadius = 20
        randomFactLabel.clipsToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func selectARandomFact(_ sender: UIButton) {
        let fact  = Int(arc4random_uniform(UInt32(facts.count)))
        randomFactLabel.text = facts[fact];
    }

}

