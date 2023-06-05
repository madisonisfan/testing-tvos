//
//  ControlButtonView.swift
//  testing
//
//  Created by Madison Isfan on 6/5/23.
//

import UIKit

class ControlButtonView: UIView {
    weak var delegate: PlayerDelegate?
    let pausePlayButton = UIButton(type: .system)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
       // view.frame = CGRect(x: 0, y: 0, width: 1500, height: 200)
        backgroundColor = .white
        center = self.center
        alpha = 0
        
        pausePlayButton.frame = CGRect(x: 400, y: 100, width:300, height: 100)
        pausePlayButton.backgroundColor = .black
        pausePlayButton.setTitle("Pause/Play", for: .normal)
        pausePlayButton.setTitleColor(.white, for: .normal)
        pausePlayButton.addTarget(self, action: #selector(pausePlayControls), for: .primaryActionTriggered)
        addSubview(pausePlayButton)
    }
    
    override var preferredFocusEnvironments: [UIFocusEnvironment] {
            return [pausePlayButton]
        }
    
    required init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
       
     }
    
    @objc func pausePlayControls(){
        
        if delegate != nil {
            
     
            if delegate!.isPlaying() {
                delegate!.pauseButtonTapped()
            } else {
                delegate!.playButtonTapped()
            }
        }
        
      
        /*
        
        if isPlaying() {
            player.pause()
            print("pause")
        } else {
            player.play()
            print("play")
        }*/
        
      
    }
    
    /*
    func isPlaying () -> Bool {
        if player.rate != 0 && player.error == nil {
            // AVPlayer is currently playing
            return true
        } else {
            // AVPlayer is paused or encountered an error
            return false
        }
    }*/
    

}
