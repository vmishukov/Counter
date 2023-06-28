//
//  ViewController.swift
//  Counter
//
//  Created by Vladislav Mishukov on 28.06.2023.
//

import UIKit

class ViewController: UIViewController {
    private var counter: Int = 0

    @IBOutlet weak var counterChangeLogTextView: UITextView!
    @IBOutlet weak var counterLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        counterLabel.adjustsFontSizeToFitWidth = true
        counterLabel.minimumScaleFactor = 0.5
        counterLabel.numberOfLines = 1
        counterChangeLogTextView.isEditable = false
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonDecrease(_ sender: Any) {
        if counter > 0 {
            counter -= 1
            counterLabel.text = "Значение счетчика: \(counter)"
            counterChangeLogTextView.text += "\n[\(Date().formatted())]: значение изменено на -1"
        } else {
            counterChangeLogTextView.text += "\n[\(Date().formatted())]: попытка уменьшить значение счётчика ниже 0"
        }
    }
    @IBAction func buttonIncrease(_ sender: Any) {
        counter += 1
        counterLabel.text = "Значение счетчика: \(counter)"
        counterChangeLogTextView.text += "\n[\(Date().formatted())]: значение изменено на +1"
    }
    @IBAction func buttonErase(_ sender: Any) {
        if counter > 0 {
            counter = 0
            counterLabel.text = "Значение счетчика: 0"
        }
        counterChangeLogTextView.text += "\n[\(Date().formatted())]:значение сброшено"
    }
}
