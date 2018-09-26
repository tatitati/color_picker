//
//  ColorPickerVC.swift
//  color-pick
//
//  Created by Francisco Albusac on 16/07/2018.
//  Copyright © 2018 Francisco Albusac. All rights reserved.
//

import UIKit

class ColorPickerVC: UIViewController {

    var delegate: ColorTransferDelegate? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func colorBtnWasPressed(sender: UIButton) {
        delegate?.colorDidChoose(color: sender.backgroundColor!,
                withName: sender.titleLabel!.text!)
        
        self.navigationController?.popViewController(animated: true)
    }

}
