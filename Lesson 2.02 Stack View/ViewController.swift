//
//  ViewController.swift
//  Lesson 2.02 Stack View
//
//  Created by Рамиль Хамидуллин on 06.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var buttonView: UIButton!
    private var currentColor = "red"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.alpha = 0.1
        yellowView.alpha = 0.1
        greenView.alpha = 0.1
                
        redView.layer.cornerRadius = 55
        yellowView.layer.cornerRadius = 55
        greenView.layer.cornerRadius = 55
        buttonView.setTitle("Start", for: .normal)
        
    }
    
    @IBAction func buttonAction(_ sender: UIButton) {
        
            if buttonView.currentTitle == "Start" {
                buttonView.setTitle("Next", for: .normal)
        }
            if currentColor == "red" {
                redView.alpha = 1
                greenView.alpha = 0.1
                currentColor = "yellow"
                
            } else if currentColor == "yellow" {
                redView.alpha = 0.1
                yellowView.alpha = 1
                currentColor = "green"
                
            } else if currentColor == "green" {
                yellowView.alpha = 0.1
                greenView.alpha = 1
                currentColor = "red"
            }
        }
    }
    

