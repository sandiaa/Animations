//
//  myViewController.swift
//  Animations
//
//  Created by Admin on 20/12/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class myViewController: UIViewController {

    let myView = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
    let myView2 = UIView(frame: CGRect(x: 200, y: 500, width: 200, height: 300))
    let myButton = UIButton()
    
    let lbl = UILabel()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = .white
        
        myView.backgroundColor = .red
        myView.alpha = 1.0
//        view.addSubview(myView)
        
        myView2.backgroundColor = .green
        myView2.alpha = 1.0
//        view.addSubview(myView2)
        
        myButton.setTitle("Click Me", for: .normal)
        myButton.backgroundColor = .blue
        myButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        view.addSubview(myButton)
        
        
       lbl.text = "Animation"
       lbl.textAlignment  = .center
       lbl.textColor = .green
       lbl.font = UIFont.boldSystemFont(ofSize: 20)
        view.addSubview(lbl)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        myButton.frame = CGRect(x: 10, y: view.bounds.height-100, width: view.bounds.width-20, height: 50)
        lbl.frame = CGRect(x: 10, y: 100, width: view.bounds.width-20, height: 50)
    }

    //MARK: Target Method
    @objc   func didTapButton() {
        print("button clicked")
    
//        UIView.animate(withDuration: 1) {
//           self.myView.frame = CGRect(x: 200, y: 500, width: 100, height: 100)
//        }
        
        UIView.animate(withDuration: 20, delay: 0, options: .curveLinear, animations: {
            
         //   self.lbl.font  = UIFont.boldSystemFont(ofSize: 50)
            self.lbl.textAlignment = .right
            self.lbl.text = "project"
            
            
        }) { (finished) in
            
        }
    }
}

extension CGFloat {
    func toRadian()->CGFloat {
        return self * CGFloat.pi/180
    }
}
