//
//  BotonUno.swift
//  burguer_king_CAMS
//
//  Created by Carlos Mendizabal on 11/04/21.
//

import UIKit

class BotonUno: UIButton {

    var hue: CGFloat {
      didSet {
        setNeedsDisplay()
      }
    }
    
    var saturation: CGFloat {
      didSet {
        setNeedsDisplay()
      }
    }
    
    var brightness: CGFloat {
      didSet {
        setNeedsDisplay()
      }
    }
    required init?(coder aDecoder: NSCoder) {
      self.hue = 1
        self.saturation = 0.5
      self.brightness = 1
      
      super.init(coder: aDecoder)
      
      self.isOpaque = false
      self.backgroundColor = .clear
    }

    override func draw(_ rect: CGRect) {
      guard let context = UIGraphicsGetCurrentContext() else {
        return
      }

      let color = UIColor(hue: hue,
        saturation: saturation,
        brightness: brightness,
        alpha: 1.0)

      context.setFillColor(color.cgColor)
      context.fill(bounds)
    }
}
