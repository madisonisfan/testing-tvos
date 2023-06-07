//
//  TestingController.swift
//  testing
//
//  Created by Madison Isfan on 6/6/23.
//

import UIKit
import AVKit

class TestingController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       let testingButtonView = TestingButtonView(frame: CGRect(x: 500, y: 400, width: 1000, height: 100))
       // let customViewControl = ControlButtonView(frame: CGRect(x: 0, y: 0, width: 1500, height: 200))
        let player = AVPlayer(url: Bundle.main.url(forResource: "Calculator-styling", withExtension: "mp4")! )
        let playerViewController = AVPlayerViewController()
        playerViewController.player = player
    
        playerViewController.showsPlaybackControls = false
        
        let playerFrame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        playerViewController.view.frame = playerFrame
        
        
        player.play()
        addChild(playerViewController)
        
        //ADDING SUBVIEWS
        view.addSubview(playerViewController.view)
        view.addSubview(testingButtonView)
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
