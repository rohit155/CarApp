//
//  ViewController.swift
//  Cool Car
//
//  Created by Rohit Jangid on 06/09/20.
//  Copyright © 2020 Rohit Jangid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageOne: UIImageView!
    @IBOutlet weak var imageTwo: UIImageView!
    
    @IBOutlet weak var makeOne: UILabel!
    @IBOutlet weak var makeTwo: UILabel!
    
    @IBOutlet weak var detailOne: UILabel!
    @IBOutlet weak var detailTwo: UILabel!
    
    var carOne: Car!
    var carTwo: Car!
    
    var selectedCar: Car?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        carOne = Car(make: "BUGATTI", model: "CHIRON", year: 2016, mpg: 11, hp: 1500, speed: 2.3, usage: 925, carImage: UIImage(named: "bugatti"))
        carTwo = Car(make: "FERRARI", model: "LAFERRARI", year: 2013, mpg: 12, hp: 950, speed: 3, usage: 894, carImage: UIImage(named: "laferrari"))
        
        cardOne(car: carOne)
        cardTwo(car: carTwo)
    }
    
    @IBAction func buttonOne(_ sender: Any) {
        selectedCar = carOne
        details(of: carOne)
    }
    @IBAction func buttonTwo(_ sender: Any) {
        selectedCar = carTwo
        details(of: carTwo)
    }
    
    func details(of car: Car) {
        selectedCar = car
        performSegue(withIdentifier: "DetailSegue", sender: nil)
    }
    
    func cardOne(car: Car) {
        imageOne.image = car.carImage
        makeOne.text = car.make
        detailOne.text = "\(car.year) - \(car.model)"
    }
    
    func cardTwo(car: Car) {
        imageTwo.image = car.carImage
        makeTwo.text = car.make
        detailTwo.text = "\(car.year) - \(car.model)"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let DetailVC = segue.destination as? DetailViewController {
            DetailVC.car = selectedCar
        }
    }
    
    //unwind segue
    @IBAction func unwindFromDetalVC(unwind: UIStoryboardSegue) {}

}

