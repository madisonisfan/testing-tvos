//
//  ViewController.swift
//  testing
//
//  Created by Madison Isfan on 5/30/23.
//

import UIKit

class ViewController: UIViewController {
    
   // let customView = UIView()
    //let playerViewController = PlayerViewController()
    let button = UIButton(type: .system)

    let header = UILabel()
    
    //let newView = MyCustomView(frame: CGRect(x: 0, y: 0, width: 2000, height: 1000))

    override func viewDidLoad() {
        print("loading main")
        super.viewDidLoad()
        //view.addSubview(newView)
        header.text = "All Movies"
        header.frame = CGRect(x: 500, y: 20, width: 250, height: 50)
        header.textColor = .white
       
    
        button.frame = CGRect(x: 20, y: 100, width: 250, height: 400)
        button.setTitle("Movie", for: .normal)
        button.addTarget(self, action: #selector(buttonAction(_:)), for: .primaryActionTriggered)
        
        view.addSubview(button)
        view.addSubview(header)
    
    }
    
    @objc func buttonAction(_ sender:UIButton!){
        print("button pressed")
        //THIS FIXED THE PROBLEM
        let rootVC = MovieDetailViewController()
       // let rootVC = TestingController()
        let navVC = UINavigationController(rootViewController: rootVC)
        
        present(navVC, animated: true)
        //let playerViewController = PlayerViewController()
       //navigationController?.pushViewController(playerViewController, animated: true)
        
       // self.present(playerViewController, animated: true, completion: nil)
    }
    
    
    
    
    /*
    @IBAction func didTapButton() {
        self.present(SecondViewController(), animated: true)
        
    }*/


}


/*
class ViewController: UIViewController {
    
   // let customView = UIView()
    let playerController = PlayerViewController()
    
    let newView = MyCustomView(frame: CGRect(x: 0, y: 0, width: 2000, height: 1000))

    override func viewDidLoad() {
        print("loading main")
        super.viewDidLoad()
      
        
        addChild(playerController)
        playerController.view.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        view.addSubview(playerController.view)
        
    }
    
    /*
    @IBAction func didTapButton() {
        self.present(SecondViewController(), animated: true)
        
    }*/


}
 */

class SecondViewController: UIViewController {
    
    
    override func viewDidLoad() {
        print("loading")
   
        super.viewDidLoad()
        view.backgroundColor = .blue
    }
}

