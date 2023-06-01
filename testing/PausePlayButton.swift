//
//  PausePlayButton.swift
//  testing
//
//  Created by Madison Isfan on 5/31/23.
//

import UIKit
import AVKit

class PausePlayButton: UIView {
    
    let label = UILabel()
    var avPlayer: AVPlayer?
    var isPlaying: Bool {
        return avPlayer?.rate != 0 && avPlayer?.error == nil
    }
    
    func setup(in container: UIViewController) {
        let tapGesture = UITapGestureRecognizer(target: container, action: #selector(handleTap))
        addGestureRecognizer(tapGesture)
        

         setupView()
        // addObservers()
     }
    /*
    override init(frame: CGRect) {
        super.init(frame: frame )
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
       setupView()
     }*/
    
    private func setupView() {
        backgroundColor = .blue
        label.text = "Play/Pause"
        label.textColor = .white
        label.frame = CGRect(x: 0 , y: 0, width: frame.size.width-5, height: frame.size.height-5)
        
        addSubview(label)
        
    
        
       /* let gesture = UITapGestureRecognizer(target: self, action: #selector(self.tapped(_:)))
              addGestureRecognizer(gesture)*/
       
    }
    
    @objc func handleTap(_ sender: UITapGestureRecognizer) {
           print("tapped!!!")
        }
    
   

}
