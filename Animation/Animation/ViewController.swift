//
//  ViewController.swift
//  Animation
//
//  Created by Cleís Aurora Pereira on 21/10/20.
//

import UIKit



class ViewController: UIViewController {

    var newY = 40

    override func viewDidLoad() {
        super.viewDidLoad()

        let firstView = UIView(frame: CGRect(x:0, y: newY, width: 50, height: 50))


        firstView.backgroundColor = .red
        firstView.isUserInteractionEnabled =  true

        let tap = UITapGestureRecognizer(target: self, action: #selector(addNewView))
        firstView.addGestureRecognizer(tap)

        view.addSubview(firstView)

        let frame = UIScreen.main.bounds

        UIView.animate(withDuration: 3){
        }




    }

    @objc func addNewView(){
        newY += 55


        let newView = UIView(frame: CGRect(x:0, y: newY, width: 50, height: 50))

//        if newView >= frame {
//            <#code#>
//        }

        newView.backgroundColor = .blue


        let tap = UITapGestureRecognizer(target: self, action: #selector(addNewView))
        newView.addGestureRecognizer(tap)

        view.addSubview(newView)

    }



}

