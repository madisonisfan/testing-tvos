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
    let transportBar = UIButton(type: .system)

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        center = self.center
        //alpha = 0
     
        setUpTransportBar()
        setUpPausePlayButton()
        
    }
    
    func setUpTransportBar() {
        
        transportBar.frame = CGRect(x: 30, y: 30, width:1500, height: 10)
        transportBar.backgroundColor = .black
        transportBar.addTarget(self, action: #selector(transportBarControls), for: .primaryActionTriggered)
        
        
        addSubview(transportBar)
    }
    
    /*
    private func trackRect(for bounds: CGRect) -> {
        CGRect(
            x: bounds.origin.x + Constant.margin,
            y: bounds.size.height / 2 - interactor.configuration.trackHeight / 2,
            width: bounds.width - (Constant.margin * 2),
            height: interactor.configuration.trackHeight
        )
    }*/
    
    
    func setUpPausePlayButton(){
        pausePlayButton.frame = CGRect(x: 400, y: 100, width:150, height: 100)
        pausePlayButton.backgroundColor = .black
        //pausePlayButton.setTitle("Pause/Play", for: .normal)
        //pausePlayButton.setTitleColor(.white, for: .normal)
        pausePlayButton.addTarget(self, action: #selector(pausePlayControls), for: .primaryActionTriggered)
        pausePlayButton.setImage(UIImage(systemName: "playpause"), for: .normal)
        
        addSubview(pausePlayButton)
    }
    
   
    
    /*
    override var canBecomeFocused: Bool {
        return true
    }*/
    
    
    
    override var preferredFocusEnvironments: [UIFocusEnvironment] {
        return [transportBar, pausePlayButton]
       // return [secondButton, pausePlayButton ]
    }
    
    required init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
       
     }
    
    @objc func testButton() {
        print("test button")
    }
    
    @objc func transportBarControls(){
     print("pressed transport bar")
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
