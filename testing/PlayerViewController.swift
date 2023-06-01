//
//  PlayerViewController.swift
//  Practice_TVOS
//
//  Created by Madison Isfan on 1/20/23.
//


import AVKit
import SwiftUI

class PlayerViewController: UIViewController {
    
    //let overlayView = UIView()
    //let movieLabel = UILabel()
   let pausePlayButton = UIButton()
    let videoURL = Bundle.main.url(forResource: "Calculator-styling", withExtension: "mp4")
    let player = AVPlayer(url: Bundle.main.url(forResource: "Calculator-styling", withExtension: "mp4")!)
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       
       
        
       // view.addSubview(pausePlayButton)
        // Step 1: Create an instance of AVPlayer
       
        
        // Step 2: Create an instance of AVPlayerViewController
        let playerViewController = AVPlayerViewController()
        playerViewController.player = player
        // Step 3: Customize the player view controller (optional)
        playerViewController.showsPlaybackControls = false
        //playerViewController.playbackControlsIncludeTransportBar = true
       /* playerViewController.contentOverlayView?.addSubview(overlayView)*/
        // Step 4: Present the AVPlayerViewController
        
        /*KEEP
        present(playerViewController, animated: true) {
            player.play() // Start playing the video
        }*/
        
        player.play()
        let playerFrame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        
        playerViewController.view.frame = playerFrame
        view.addSubview(playerViewController.view)
        addChild(playerViewController)
        //view.addSubview(pausePlayButton)
        
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func handleTap(_ gesture: UITapGestureRecognizer) {
           if gesture.state == .ended {
               if isPlaying() {
                   player.pause()
               } else {
                   player.play()
               }
           }
       }
    
    @objc func pausePlayControls(){
        print("pause")
      
    }
    
    
    func isPlaying () -> Bool {
        return player.rate != 0 && player.error == nil
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
