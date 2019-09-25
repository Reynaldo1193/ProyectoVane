//
//  ViewController.swift
//  ParteProyectoVane
//
//  Created by CEDAM21 on 9/25/19.
//  Copyright © 2019 CEDAM 21. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var indice : Int = 0;
    
    @IBOutlet weak var img: UIImageView!
    
    
    let speechSynthesizer : AVSpeechSynthesizer = AVSpeechSynthesizer()
    let speechUtterance : AVSpeechUtterance = AVSpeechUtterance(string: "Hola Oscar, ¿Cómo has estado?")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        speechUtterance.rate = AVSpeechUtteranceMaximumSpeechRate/2
        speechUtterance.voice = AVSpeechSynthesisVoice(language: "es-ES")
        
        
        //speechSynthesizer.speak(speechUtterance)
    }

    @IBAction func Siguiente(_ sender: Any) {
        indice+=1
        print(indice)
        switch indice {
        case 1:
            print("entra")
            img.image = UIImage(named: "Perro1")
            
            speechUtterance.speechString = "Había una vez un perro"
            speechSynthesizer.speak(speechUtterance)
            break
        case 2:
            print("entra")
            img.image = UIImage(named: "Perro2")
            break

        case 3:
            print("entra")
            img.image = UIImage(named: "Perro3")
            break

        case 4:
            print("entra")
            img.image = UIImage(named: "Perro4")
            break
        case 5:
            print("entra")
            img.image = UIImage(named: "Perro5")
            break


        default:
            break
        }
    }
    
    
    @IBAction func Anterior(_ sender: Any) {
//        if(indice < 1 ){
//        }else{
//            indice-=1
//            print(indice)
//        }
    }
}

