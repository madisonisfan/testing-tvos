//
//  MovieDetailViewController.swift
//  testing
//
//  Created by Madison Isfan on 5/31/23.
//

import UIKit

class MovieDetailViewController: UIViewController {

    let movieTitle  = UILabel()
    let button = UIButton(type: .system)
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        movieTitle.text = "The Best Movie"
        movieTitle.frame = CGRect(x: 20, y: 20, width: 500, height: 100)
        movieTitle.textColor = .white
        view.addSubview(movieTitle)
        
        
        button.setTitle("Play", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .white
        button.frame = CGRect(x: 500, y: 600, width: 500, height: 100)
        view.addSubview(button)
        button.addTarget(self, action: #selector(buttonAction), for: .primaryActionTriggered)
        
        
    }
    
    
    @objc func buttonAction(){
        let playerVC = PlayerViewController()
        navigationController?.pushViewController(playerVC, animated: true)
      
    }


}
