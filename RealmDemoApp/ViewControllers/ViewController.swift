//
//  ViewController.swift
//  RealmDemoApp
//
//  Created by Mac on 11.05.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var colorSliders: [UISlider]!

    var color = BGColor.shared
    let data = DataManager.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupDefaults()
        setupBGColor()
        setupSliderDefaults()
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        
        switch sender {
        case colorSliders.first:
            color.red = sender.value
        case colorSliders.last:
            color.blue = sender.value
        default:
            color.green = sender.value
        }
        setupBGColor()
    }
      
    @IBAction func saveButtonTapped() {
        let dataToSave = data.setupModel(color: color)
        data.save(colors: dataToSave)
    }
    
    private func setupBGColor() {
        view.backgroundColor = UIColor(r: color.red,
                                       g: color.green,
                                       b: color.blue)
    }
    
    private func setupSliderDefaults() {
        let array = [color.red, color.green, color.blue]
        for (slider, value) in zip(colorSliders, array) {
            slider.value = value
        }
    }
    
    private func setupDefaults() {
        let colors = data.fetchData()
        guard let data = colors.first else { return }
        color.red = data.red
        color.green = data.green
        color.blue = data.blue
    }

}

