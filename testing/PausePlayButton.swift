//
//  PausePlayButton.swift
//  testing
//
//  Created by Madison Isfan on 5/31/23.
//

import UIKit

class PausePlayButton: UIView {
    
    let label = UILabel()
    var isPlaying: Bool = false
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
       setupView()
     }
    
    private func setupView() {
        backgroundColor = .blue
        label.text = "Play/Pause"
        label.textColor = .white
        label.frame = CGRect(x: 0 , y: 0, width: frame.size.width-5, height: frame.size.height-5)
        
        addSubview(label)
        
        let gesture = UITapGestureRecognizer(target: self, action: #selector(self.tapped(_:)))
              addGestureRecognizer(gesture)
       
    }
    
    @objc func tapped(_ sender: UITapGestureRecognizer) {
           print("tapped")
        }
    
   

}
