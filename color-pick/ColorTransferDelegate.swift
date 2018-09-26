//
//  ColorTransferDelegate.swift
//  color-pick
//
//  Created by Francisco Albusac on 17/07/2018.
//  Copyright © 2018 Francisco Albusac. All rights reserved.
//

import Foundation
import UIKit

protocol ColorTransferDelegate {
    func colorDidChoose(color: UIColor, withName colorName: String)
}
