//
//  ViewController.swift
//  ImageLoader
//
//  Created by fordlabs on 16/08/18.
//  Copyright © 2018 fordlabs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageViewOne: UIImageView!
    @IBOutlet weak var imageViewTwo: UIImageView!
    @IBOutlet weak var imageViewThree: UIImageView!
    @IBOutlet weak var imageViewFour: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setUpBackgroundBlink()
    }
    
    @IBAction func fetch(_ sender: Any) {
        if let imageOneUrl = URL(string: "https://vignette.wikia.nocookie.net/marvelcinematicuniverse/images/3/39/AoU_Iron_Man_Mk43_art.png"),
            let imageOne = try? UIImage(data: Data(contentsOf: imageOneUrl)) {
            imageViewOne.image = imageOne
        }
        
        if let imageTwoUrl = URL(string: "https://akns-images.eonline.com/eol_images/Entire_Site/2017920/rs_1080x1920-171020123522-1080.thor-ragnarok-4.102017.jpg"),
            let imageTwo = try? UIImage(data: Data(contentsOf: imageTwoUrl)) {
            imageViewTwo.image = imageTwo
        }
        
        if let imageThreeUrl = URL(string: "https://s1.r29static.com//bin/entry/d0d/0,0,1999,2399/1090x1308,80/1588304/image.jpg"),
            let imageThree = try? UIImage(data: Data(contentsOf: imageThreeUrl)) {
            imageViewThree.image = imageThree
        }
        
        if let imageFourUrl = URL(string: "https://vignette.wikia.nocookie.net/disney/images/f/fc/AoU_Hulk_01.png"),
            let imageFour = try? UIImage(data: Data(contentsOf: imageFourUrl)) {
            imageViewFour.image = imageFour
        }
    }
    
    private func setUpBackgroundBlink() {
        self.view.backgroundColor = UIColor.white
        Timer.scheduledTimer(timeInterval: 0.25, target: self, selector: #selector(blinkScreen), userInfo: nil, repeats: true)
    }
    
    @objc private func blinkScreen() {
        if self.view.backgroundColor == UIColor.white {
            self.view.backgroundColor = .black
        } else {
            self.view.backgroundColor = .white
        }
    }
}
