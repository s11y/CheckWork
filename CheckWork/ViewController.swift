//
//  ViewController.swift
//  CheckWork
//
//  Created by ShinokiRyosei on 2017/07/04.
//  Copyright © 2017年 ShinokiRyosei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var label: UILabel!

    var timer: Timer = Timer()

    var number: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Timer書く前にひとまず写真とテキストを表示
        // imageView.image = UIImage(named: "CheckWork001.jpeg")
        // label.text = "チェックワーク"
        
        
        // Do any additional setup after loading the view, typically from a nib.
        imageView.image = UIImage(named: "CheckWork001.jpeg")
        label.text = "チェックワーク"
        timer = Timer.scheduledTimer(timeInterval: 3,
                                     target: self,
                                     selector: #selector(self.update),
                                     userInfo: nil,
                                     repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func update() {

        number = number + 1
        if number > 2 {

            number = 0
        }

        if number == 0 {

            imageView.image = UIImage(named: "CheckWork001.jpeg")
            label.text = "チェックワーク"

        }else if number == 1 {

            imageView.image = UIImage(named: "CheckWork002.jpeg")
            label.text = "学んでほしいこと"
        }else {

            imageView.image = UIImage(named: "CheckWork003.jpeg")
            label.text = "学んでほしいこと2"
        }
    }
}

