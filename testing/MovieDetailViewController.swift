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
    
    let buttonView = UIView()
    let buttonOne = UIButton(type: .system)
    let buttonTwo = UIButton(type: .system)
    let testingButtonView = TestingButtonView(frame: CGRect(x: 500, y: 400, width: 1000, height: 100))
    
    

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
        
        
        view.addSubview(testingButtonView)
        
    }
    
    
    @objc func buttonAction(){
        let playerVC = PlayerViewController()
        navigationController?.pushViewController(playerVC, animated: true)
      
    }


}

class TestingButtonView: UIView {
    let buttonOne = UIButton(type: .system)
    let buttonTwo = UIButton(type: .system)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        buttonOne.frame = CGRect(x: 0, y: 50, width: 200, height: 30)
        buttonOne.setTitle("one", for: .normal)
        buttonOne.setTitleColor(.black, for: .normal)
        
        buttonTwo.frame = CGRect(x: 900, y: 50, width: 200, height: 30)
        buttonTwo.setTitle("one", for: .normal)
        buttonTwo.setTitleColor(.black, for: .normal)
        
        addSubview(buttonOne)
        addSubview(buttonTwo)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
