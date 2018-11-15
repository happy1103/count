//
//  ViewController.swift
//  count
//
//  Created by User15 on 2018/11/14.
//  Copyright © 2018 ee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var carrot: UITextField!
    @IBOutlet weak var meat: UITextField!
    @IBOutlet weak var cookie: UITextField!
    @IBOutlet weak var say: UITextView!
    @IBOutlet weak var lovep: UITextView!
    @IBOutlet weak var avgp: UITextView!
    @IBOutlet weak var rabbit: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func love(_ sender: Any) {
        view.endEditing(true)
        if let carrottext = carrot.text, let meatText = meat.text, let cookietText = cookie.text,let carrot = Double(carrottext), let meat = Double(meatText),let cookie = Double(cookietText) {
            let lovepoint = (carrot * 1.5) - (meat * 1.5) + (cookie * 1.0)
            let avg = cookie
            lovep.text = String(lovepoint)
            avgp.text = String(avg)
            if lovepoint > avg
            {
                say.text = "噢人類我超愛你的"
                rabbit.image = UIImage(named: "love")
            }
            if lovepoint == avg
            {
                say.text = "我就普普的收下了"
                rabbit.image = UIImage(named: "soso")
            }
            if lovepoint < avg
            {
                say.text = "噢人類你懂不懂兔子啊"
                rabbit.image = UIImage(named: "ohno")
            }
        }
    }
    
}

