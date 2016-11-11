//
//  ViewController.swift
//  Egg Timer
//
//  Created by sophea chea on 11/12/16.
//  Copyright © 2016 sophea chea. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = Timer()
    
    var currentTimer = 0
    var subTen = 0
    var addTen = 0
    
    
    @IBOutlet weak var lblDisplay: UILabel!
    
    @IBAction func btnPlay(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTimer), userInfo: nil, repeats: true)
    }
    
    @IBAction func btnPause(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func btnSubTen(_ sender: Any) {
        if (Int(lblDisplay.text!)! > 10) {
            subTen = Int(lblDisplay.text!)! - 10
            lblDisplay.text = String(subTen)
        }
    }
    
    @IBAction func btnAddTen(_ sender: Any) {
        addTen = Int(lblDisplay.text!)! + 10
        lblDisplay.text = String(addTen)
    }
    
    @IBAction func btnReset(_ sender: Any) {
        lblDisplay.text = "210"
    }
    
    func processTimer(){
        if (Int(lblDisplay.text!)! > 0) {
            currentTimer = Int(lblDisplay.text!)! - 1
            lblDisplay.text = String(currentTimer)
        }else{
            timer.invalidate()
            lblDisplay.text = "0"
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

