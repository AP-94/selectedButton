//
//  ViewController.swift
//  ButtonSelection
//
//  Created by Alessandro Pace on 11/07/2020.
//  Copyright © 2020 Geeks4Tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Outlets de los botones
    @IBOutlet weak var soccerButton: UIButton!
    @IBOutlet weak var golfButton: UIButton!
    @IBOutlet weak var padelButton: UIButton!
    @IBOutlet weak var tennisButton: UIButton!
    @IBOutlet weak var footballButton: UIButton!
    @IBOutlet weak var mountainBikeButton: UIButton!
    @IBOutlet weak var basketBallButton: UIButton!
    @IBOutlet weak var ultimateButton: UIButton!
    @IBOutlet weak var crossfitButton: UIButton!
    @IBOutlet weak var rowingButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    //variables a usar
    var counter = 0
    var sportArray: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sportsButtonCustomization()
        
    }
    
    func sportsButtonCustomization(){
        whiteAndRedRounded(button: soccerButton)
        whiteAndRedRounded(button: golfButton)
        whiteAndRedRounded(button: padelButton)
        whiteAndRedRounded(button: tennisButton)
        whiteAndRedRounded(button: footballButton)
        whiteAndRedRounded(button: mountainBikeButton)
        whiteAndRedRounded(button: basketBallButton)
        whiteAndRedRounded(button: ultimateButton)
        whiteAndRedRounded(button: crossfitButton)
        whiteAndRedRounded(button: rowingButton)
        whiteAndRedRounded(button: nextButton)
        
        
    }
    
    @IBAction func ssss(_ sender: UIButton) {
        setButton(button: sender)
    }
    
    @IBAction func nextActionButton(_ sender: UIButton) {
        if counter == 4 {
            fillSportsArray()
            showSimpleAlert(title: "Has seleccionado satisfactoriamente 4 opciones:", message: "\(sportArray[0]) - \(sportArray[1]) - \(sportArray[2]) - \(sportArray[3]) ")
        } else {
            showSimpleAlert(title: "Debes seleccionar 4 opciones", message: "Para poder avanzar debes tener seleccionado 4 deportes")
        }

    }
    
    
    func fillSportsArray() {
        let buttonsArray = [soccerButton,golfButton,padelButton,tennisButton,footballButton,mountainBikeButton,basketBallButton,ultimateButton,crossfitButton,rowingButton,nextButton ]
        
        for button in buttonsArray {
            if button!.isSelected {
                sportArray.append((button?.currentTitle)!)
            }
            
        }
    }
    
    
    func whiteAndRedRounded(button: UIButton) {
        button.layer.cornerRadius = 5
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor(red: 217/255, green: 225/255, blue: 225/225, alpha: 1).cgColor
        button.backgroundColor = UIColor.white
    }
    
    func setButton(button: UIButton) {
        if button.isSelected == false {
            if counter < 4 {
                counter += 1
                button.isSelected = true
                button.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
            } else {
             showSimpleAlert(title: "Debes seleccionar solo 4 opciones", message: "Deselecciona alguna y vuelve a seleccionar la que quieras, solo puede seleccionar 4")
            }
        } else {
            counter -= 1
            button.isSelected = false
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
    
    func showSimpleAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message,         preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "Dismiss",
                                      style: UIAlertAction.Style.default,
                                      handler: {(_: UIAlertAction!) in
                                        //Sign out action
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
}

