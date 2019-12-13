//
//  ViewController.swift
//  class-p06
//
//  Created by Seth on 2019/12/12.
//  Copyright © 2019 Seth. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var speakText: UITextField!
    @IBOutlet weak var rateSlider: UISlider!
    @IBOutlet weak var pitchSlider: UISlider!
    @IBOutlet weak var rateLabel: UILabel!
    @IBOutlet weak var pitchLabel: UILabel!
    @IBOutlet weak var volumeLabel: UILabel!
    @IBOutlet weak var volumeSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sliderMoved(_ sender: UISlider) {
        rateLabel.text = String(format: "%.1f", rateSlider.value)
        pitchLabel.text = String(format: "%.1f", pitchSlider.value)
        volumeLabel.text = String(format: "%.1f", volumeSlider.value)
    }
    
    @IBAction func speakFunc(_ sender: Any) {
        let speech = AVSpeechUtterance(string: speakText.text!)
        speech.voice = AVSpeechSynthesisVoice(language: "zh-TW")
        speech.rate = rateSlider.value
        speech.pitchMultiplier = pitchSlider.value
        speech.volume = volumeSlider.value
        let synzer = AVSpeechSynthesizer()
        synzer.speak(speech)
        
    }
}

