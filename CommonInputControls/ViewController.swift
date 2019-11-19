//
//  ViewController.swift
//  CommonInputControls
//
//  Created by Frederick Javalera on 11/16/19.
//  Copyright © 2019 Frederick Javalera. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet var button: UIButton!
    @IBOutlet var toggle: UISwitch!
    @IBOutlet var slider: UISlider!
    @IBAction func respondToLongPress(_ sender: UILongPressGestureRecognizer)
    {
        let location = sender.location(in: view)
        print(location)
    }
    
    @IBAction func buttonTapped(_ sender: UIButton)
    {
        print("Button was tapped!")

        if toggle.isOn
        {
            print("The switch is on!")
        } else {
            print("The switch is off.")
        }

        print("The slider is set to \(slider.value)")
    }
    
    @IBAction func switchToggled(_ sender: UISwitch)
    {
        if (sender.isOn)
        {
            print("The switch is on!")
        }
        else
        {
            print("The switch is off.")
        }
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider)
    {
        print(sender.value)
    }
    
    
    @IBAction func enterPressed(_ sender: UITextField)
    {
        if let text = sender.text
        {
            print(text)
        }
    }
    
    
    @IBAction func textChanged(_ sender: UITextField)
    {
        if let text = sender.text
        {
            print(text)
        }
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
    }
}

