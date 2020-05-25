//
//  ViewController.swift
//  HW2_1_Task_2
//
//  Created by Роман Захаров on 19.05.2020.
//  Copyright © 2020 Роман Захаров. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var actionButton: UIButton!
    
    var statusColor = 0
    
    enum alphaView: CGFloat {
        case notShine = 0.3
        case shine = 1.0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        redView.layer.cornerRadius = redView.frame.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        greenView.layer.cornerRadius = greenView.frame.width / 2
        actionButton.layer.cornerRadius = actionButton.frame.width / 100

        setDefaultShine()
    }

    func setDefaultShine() {
        redView.alpha = alphaView.notShine.rawValue
        yellowView.alpha = alphaView.notShine.rawValue
        greenView.alpha = alphaView.notShine.rawValue
    }

    @IBAction func buttonAction(_ sender: UIButton) {
        
        setDefaultShine()
        actionButton.setTitle("Next", for: .normal)
        
        statusColor += 1
        switch statusColor {
            case 1:
                redView.alpha = alphaView.shine.rawValue
            case 2:
                yellowView.alpha = alphaView.shine.rawValue
            case 3:
                greenView.alpha = alphaView.shine.rawValue
                statusColor = 0
            default:
                setDefaultShine()
                statusColor = 0
                actionButton.setTitle("Start", for: .normal)
        }
    }
}

