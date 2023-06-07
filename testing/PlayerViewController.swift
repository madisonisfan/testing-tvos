//
//  PlayerViewController.swift
//  Practice_TVOS
//
//  Created by Madison Isfan on 1/20/23.
//


import AVKit
import SwiftUI

protocol PlayerDelegate: AnyObject {
    func playButtonTapped()
    func pauseButtonTapped()
    func isPlaying() -> Bool
}



class PlayerViewController: UIViewController {
   
   
    //let customControlView = UIView()
    let customViewControl = ControlButtonView(frame: CGRect(x: 0, y: 800, width: 2000, height: 200))
    
    //let videoURL = Bundle.main.url(forResource: "Calculator-styling", withExtension: "mp4")
    let player = AVPlayer(url: Bundle.main.url(forResource: "Calculator-styling", withExtension: "mp4")! )
    
    let testingButtonView = TestingButtonView(frame: CGRect(x: 500, y: 400, width: 1000, height: 100))
    

    override func viewDidLoad() {
        super.viewDidLoad()
      
        view.bringSubviewToFront(customViewControl)
        
        // Step 2: Create an instance of AVPlayerViewController
        let playerViewController = AVPlayerViewController()
        playerViewController.player = player
        // Step 3: Customize the player view controller (optional)
        playerViewController.showsPlaybackControls = false
     
        
        player.play()
        
        let playerFrame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        playerViewController.view.frame = playerFrame
        addChild(playerViewController)
        view.addSubview(playerViewController.view)
        view.addSubview(customViewControl)
       //view.addSubview(testingButtonView)
        customViewControl.delegate = self
        
        /*
        
       let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap))
       view.addGestureRecognizer(tapGesture)*/
       
    }
  
    
    /*
    override var preferredFocusEnvironments: [UIFocusEnvironment] {
    return [customViewControl]
    }*/
    
    /*
    override var preferredFocusedView: UIView? {
           return pausePlayButton
       }*/
    
    /*
    override func didUpdateFocus(in context: UIFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {
        if let nextFocusedView = context.nextFocusedView as? customControlView {
            // Handle focus updates specific to your subview
        } else {
            // Handle focus updates for other UI elements
        }
    }*/
    
   
    @objc func handleTap(_ gesture: UITapGestureRecognizer) {
        print("TAPPPPPED")
      
        /*
        UIView.animate(withDuration: 0.3) {
                   self.customViewControl.alpha = 1
        }*/
        
        player.pause()
        
        
        
        /*
        if gesture.state == .ended {
               if isPlaying() {
                   player.pause()
               } else {
                   player.play()
               }
           }*/
       }
    
   

}

extension PlayerViewController: PlayerDelegate {
    func playButtonTapped() {
          player.play()
      }
      
      func pauseButtonTapped() {
          player.pause()
      }
    
    func isPlaying () -> Bool {
        if player.rate != 0 && player.error == nil {
            // AVPlayer is currently playing
            return true
        } else {
            // AVPlayer is paused or encountered an error
            return false
        }
    }
}

/*
 
 overlayView.frame = CGRect(x:0, y:0, width: 2000, height: 100)
 overlayView.backgroundColor = .white
 
 movieLabel.text = "Movie Name"
 movieLabel.textColor = .black
 movieLabel.frame = CGRect(x: 0 , y: 20, width: 300, height: 50)
 
 pausePlayButton.setTitle("Pause/Play", for: .normal)
 pausePlayButton.setTitleColor(.white, for: .normal)
 pausePlayButton.backgroundColor = .black
 pausePlayButton.frame = CGRect(x: 500 , y: 20, width: 200, height: 50)
 pausePlayButton.addTarget(self, action: #selector(pausePlayControls), for: .primaryActionTriggered)
 
 overlayView.addSubview(movieLabel)
 overlayView.addSubview(pausePlayButton)
 
 
 */




/*
class PlayerViewController: UIViewController {
    
    
    override func viewDidLoad() {
        let videoURL = Bundle.main.url(forResource: "Calculator-styling", withExtension: "mp4")
        let playerItem = AVPlayerItem(url: videoURL!)
       
        
        let playerViewController = AVPlayerViewController()
        playerViewController.player = AVPlayer(playerItem: playerItem)
        
        playerViewController.showsPlaybackControls = false
       
        present(playerViewController, animated: true) {
            playerViewController.player?.play()
        }


        
        /*
        present(playerViewController, animated: true) {
                    player.play() // Start playing the video
        }*/
        
        
    }
}
*/



/*
class PlayerViewController: UIViewController {
    private var player: AVPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initialize the AVPlayer
        guard let videoURL = Bundle.main.url(forResource: "Calculator-styling", withExtension: "mp4") else {
            fatalError("Failed to find video file.")
        }
        
        let playerItem = AVPlayerItem(url: videoURL)
        player = AVPlayer(playerItem: playerItem)
        
        // Create a player view and add it to the view hierarchy
        let playerView = UIView(frame: view.bounds)
        playerView.backgroundColor = .black
        view.addSubview(playerView)
        
        
        
        // Add the player's layer to the player view
       let playerLayer = AVPlayerLayer(player: player)
        playerLayer.videoGravity = .resizeAspectFill
        playerLayer.frame = playerView.bounds
        playerView.layer.addSublayer(playerLayer)

        // Start playing the video
        player?.play()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the player when the view disappears
        player?.pause()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Resume playing the video when the view appears
        player?.play()
    }
}
*/
 
/*
struct PlayerViewController: UIViewControllerRepresentable {
   // var videoURL: URL

    private var player: AVPlayer {
        return AVPlayer(url: Bundle.main.url(forResource: "Calculator-styling", withExtension: "mp4")!)

    }

    func makeUIViewController(context: Context) -> AVPlayerViewController {
       
        
        let playerViewController = AVPlayerViewController()
        playerViewController.player = player
       // playerViewController.player?.play()
        
        return playerViewController
    }

    func updateUIViewController(_ playerController: AVPlayerViewController, context: Context) {
        //playerController.showsPlaybackControls = true
    }
    
    
}
 
 */
