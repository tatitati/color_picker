//
//  ColorPresenterVC.swift
//  color-pick
//
//  Created by Francisco Albusac on 15/07/2018.
//  Copyright © 2018 Francisco Albusac. All rights reserved.
//

import UIKit

class ColorPresenterVC: UIViewController, ColorTransferDelegate {

    @IBOutlet weak var colorNameLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func colorDidChoose(color: UIColor, withName colorName: String) {
        view.backgroundColor = color
        colorNameLbl.text = colorName
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "presentColorPickerVC" {
            guard let ColorPickerVC = segue.destination as?
                ColorPickerVC else { return }
            ColorPickerVC.delegate = self
        }
    }
    
}

