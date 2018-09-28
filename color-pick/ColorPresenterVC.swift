//
//  ColorPresenterVC.swift
//  color-pick
//
//  Created by Francisco Albusac on 15/07/2018.
//  Copyright © 2018 Francisco Albusac. All rights reserved.
//

import UIKit

//
// ColorTransferDelegate is a protocol
//
class ColorPresenterVC: UIViewController, ColorTransferDelegate {

    @IBOutlet weak var colorNameLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //
    // function specified in protocol
    //
    func colorDidChoose(color: UIColor, withName colorName: String) {
        view.backgroundColor = color
        colorNameLbl.text = colorName
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //
        // We the segue we can get the other view in here like any other
        // reference/variable. That means that we can set variables in here
        // In here we pass THIS view to the other, so the other will be able
        // to modify this as well.
        //
        if segue.identifier == "presentColorPickerVC" {
            guard let ColorPickerVC = segue.destination as?
                ColorPickerVC
            else {
                    return
            }
            
            //
            // This is the key!
            //
            ColorPickerVC.delegate = self
        }
    }
    
}

