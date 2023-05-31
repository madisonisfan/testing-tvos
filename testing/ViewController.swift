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
    
    let newView = MyCustomView(frame: CGRect(x: 0, y: 0, width: 2000, height: 1000))

    override func viewDidLoad() {
        print("loading main")
        super.viewDidLoad()
        //view.addSubview(newView)
        
        let button = UIButton(type: .system)
        
        button.frame = CGRect(x: 20, y: 20, width: 500, height: 100)
        button.setTitle("Play", for: .normal)
        button.addTarget(self, action: #selector(buttonAction(_:)), for: .primaryActionTriggered)
        view.addSubview(button)
    
    }
    
    @objc func buttonAction(_ sender:UIButton!){
        print("button pressed")
       let playerViewController = PlayerViewController()
       // self.navigationController?.pushViewController(playerViewController, animated: true)
        
        self.present(playerViewController, animated: true, completion: nil)
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

