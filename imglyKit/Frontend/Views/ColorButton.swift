//
//  ColorButton.swift
//  imglyKit
//
//  Created by Carsten Przyluczky on 05/03/15.
//  Copyright (c) 2015 9elements GmbH. All rights reserved.
//

import Foundation
import UIKit

/**
 *  The `ColorButton` provides a button that is used within the `TextColorSelectorView`. Each button represents one color.
 */
@objc(IMGLYColorButton) public class ColorButton: UIButton {
    /**
     Initializes and returns a newly allocated view with the specified frame rectangle.

     - parameter frame: The frame rectangle for the view, measured in points.

     - returns: An initialized view object or `nil` if the object couldn't be created.
     */
    public override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    /**
     Returns an object initialized from data in a given unarchiver.

     - parameter aDecoder: An unarchiver object.

     - returns: `self`, initialized using the data in decoder.
     */
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    private func commonInit() {
        styleButton()
    }

    private func styleButton() {
        selected = false
        layer.cornerRadius = 3
        layer.masksToBounds = true
        layer.borderWidth = 1.0 / contentScaleFactor
        let alpha = 0.3
        layer.borderColor = UIColor(white: 1.0, alpha: CGFloat(alpha)).CGColor
    }
}
