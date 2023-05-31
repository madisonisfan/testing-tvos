//
//  CustomView.swift
//  testing
//
//  Created by Madison Isfan on 5/30/23.
//

import Foundation
import UIKit

class MyCustomView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
       setupView()
     }
    
    private func setupView() {
        backgroundColor = .gray
       
    }
    
    
}

