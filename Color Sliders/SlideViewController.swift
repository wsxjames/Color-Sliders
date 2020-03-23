//
//  SlideViewController.swift
//  Color Sliders
//
//  Created by 吴世欣 on 3/11/20.
//  Copyright © 2020 James Wu. All rights reserved.
//

import UIKit

class SlideViewController: UIViewController {
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var redSliderValue: UISlider!
    @IBOutlet var greenValue: UILabel!
    @IBOutlet var greenSliderValue: UISlider!
    @IBOutlet var blueValue: UILabel!
    @IBOutlet var blueSliderValue: UISlider!
    @IBOutlet var alphaValue: UILabel!
    @IBOutlet var alphaSliderValue: UISlider!
    
    @IBOutlet var colorView: UIView!
    
    
    
    @IBAction func sliderChanged(_ sender: Any) {
        updateView()
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redSliderValue.value = 0.71
        greenSliderValue.value = 0.04
        blueSliderValue.value = 0.22
        alphaSliderValue.value = 1.0
        updateView()
    }
    
    func updateView() {
        print("Red: \(redSliderValue.value) Green: \(greenSliderValue.value)  Blue: \(blueSliderValue.value)  Alpha: \(alphaSliderValue.value)")
        
        redLabel.text = String(format: "%.2f", redSliderValue.value)
        greenValue.text = String(format: "%.2f", greenSliderValue.value)
        blueValue.text = String(format: "%.2f", blueSliderValue.value)
        alphaValue.text = String(format: "%.2f", alphaSliderValue.value)
        
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSliderValue.value),
            green: CGFloat(greenSliderValue.value),
            blue: CGFloat(blueSliderValue.value),
            alpha: CGFloat(alphaSliderValue.value))
    }
    
}
