//
//  DetailViewController.swift
//  Cool Car
//
//  Created by Rohit Jangid on 07/09/20.
//  Copyright © 2020 Rohit Jangid. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var car: Car!

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var make: UILabel!
    @IBOutlet weak var detail: UILabel!
    @IBOutlet weak var mpg: UILabel!
    @IBOutlet weak var hp: UILabel!
    @IBOutlet weak var speed: UILabel!
    @IBOutlet weak var usage: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadDetails(car: car)
    }
    
    func loadDetails(car: Car) {
        image.image = car.carImage
        make.text = car.make
        detail.text = "\(car.year) - \(car.model)"
        mpg.text = String(car.mpg)
        hp.text = String(car.hp)
        speed.text = "\(car.speed)"
        usage.text = "\(car.usage)"
    }

}
