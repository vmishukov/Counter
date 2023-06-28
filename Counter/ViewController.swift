//
//  ViewController.swift
//  Counter
//
//  Created by Vladislav Mishukov on 28.06.2023.
//

import UIKit

class ViewController: UIViewController {
    private var counter: Int = 0
    
    @IBOutlet weak var counterLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        counterLabel.adjustsFontSizeToFitWidth = true
        counterLabel.minimumScaleFactor = 0.5
        counterLabel.numberOfLines = 1
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonDecrease(_ sender: Any) {
        if counter > 0 {
            counter -= 1
            counterLabel.text = "Значение счетчика: \(counter)"
        }
    }
    
    @IBAction func buttonIncrease(_ sender: Any) {
        counter += 1
        counterLabel.text = "Значение счетчика: \(counter)"
    }
}

