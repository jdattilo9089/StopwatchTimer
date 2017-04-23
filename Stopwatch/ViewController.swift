//
//  ViewController.swift
//  Stopwatch
//
//  Created by John Dattilo on 4/23/17.
//  Copyright © 2017 John Dattilo. All rights reserved.
//

import UIKit

var count = 0.00

var timer = Timer()

class ViewController: UIViewController {
    @IBOutlet weak var timerLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func startButton(_ sender: UIButton) {
        timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(ViewController.counter), userInfo: nil, repeats: true)

    }
    @IBAction func pauseButton(_ sender: UIButton) {
        timer.invalidate()

    }
    @IBAction func restartButton(_ sender: UIButton) {
        timer.invalidate()
        
        count = 0
        
        timerLabel.text = "0.00"
    }
    func counter() {
        
        count += 0.01
        
        timerLabel.text = String(format: "%.02f", count)
        
    }


}

