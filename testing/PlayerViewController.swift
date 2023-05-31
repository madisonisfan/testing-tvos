//
//  PlayerViewController.swift
//  Practice_TVOS
//
//  Created by Madison Isfan on 1/20/23.
//


import AVKit
import SwiftUI



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
