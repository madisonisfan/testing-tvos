//
//  PlayerControlsOverlayView.swift
//  testing
//
//  Created by Madison Isfan on 6/7/23.
//

import UIKit


//IN THE PROJECT INSTEAD OF UIVIEW IT IS OVERLAYVIEW
class PlayerControlsOverlayView: UIView {//
    var transportBar: TransportBar!
    var bottomStackView: UIStackView!
    
    override init(
        frame: CGRect = .zero
        //interactor: PlayerControlsInteractor
        //styleProvider: StyleProvidings
        
    ){
        super.init(frame: frame)
        //self.interactor = interactor
        //self.styleProvider = styleProvider
        //self.transportBarInteractor = TransportBarInteractor()
        
        
        setupSubviews()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupSubViews() {
        
    }
    
}
