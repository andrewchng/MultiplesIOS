//
//  ViewController.swift
//  Multiples
//
//  Created by Andrew Chng on 10/12/15.
//  Copyright © 2015 Andrew Chng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentVal = 0
    var maxVal = 0
    var valueBefore = 0
    
    @IBOutlet weak var playBtn : UIButton!
    @IBOutlet weak var logo : UIImageView!
    @IBOutlet weak var multiplesTxt : UITextField!
    @IBOutlet weak var addBtn : UIButton!
    @IBOutlet weak var multiplesLbl : UILabel!
    
    @IBAction func addBtnPressed(sender: UIButton){
        maxVal = 12 * Int(multiplesTxt.text!)!
        currentVal += Int(multiplesTxt.text!)!
        valueBefore  = currentVal - Int(multiplesTxt.text!)!
        
        multiplesLbl.text = "\(valueBefore) + \(Int(multiplesTxt.text!)!) = \(currentVal)"
        
        if gameOver() {
            restartGame()
        }
        
    
    }
    
    @IBAction func playBtnPressed(sender: UIButton){
        if multiplesTxt.text != nil && multiplesTxt.text != "" {
            logo.hidden = true
            playBtn.hidden = true
            multiplesTxt.hidden = true
            addBtn.hidden = false
            multiplesLbl.hidden = false
            
            multiplesLbl.text = "0"
        }
    }
    
    func restartGame(){
        logo.hidden = false
        playBtn.hidden = false
        multiplesTxt.hidden = false
        addBtn.hidden = true
        multiplesLbl.hidden = true
        
        valueBefore = 0
        currentVal = 0
        maxVal = 0
    }
    
    func gameOver() -> Bool {
        if currentVal == maxVal {
            return true
        }
        else{
            return false
    
        }
    }

}

