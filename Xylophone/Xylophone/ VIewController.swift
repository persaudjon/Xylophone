//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    var player : AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
       let  buttonOrigin = sender.tag
        switch buttonOrigin {
        case 1:
            playNote(noteToPlay: "note1")
        case 2:
            playNote(noteToPlay: "note2")
        case 3:
            playNote(noteToPlay: "note3")
        case 4:
            playNote(noteToPlay: "note4")
        case 5:
            playNote(noteToPlay: "note5")
        case 6:
            playNote(noteToPlay: "note6")
        case 7:
            playNote(noteToPlay: "note7")
        default: break
            
        }
      
        
    }
    //Takes number of sound to play and uses player var to play sound
    func playNote(noteToPlay: String){
        let pathToSound = Bundle.main.path(forResource: noteToPlay, ofType: "wav")!
        let url = URL(fileURLWithPath: pathToSound)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch {
            // error message
            print("Error")
        }
    }
    
  

}

