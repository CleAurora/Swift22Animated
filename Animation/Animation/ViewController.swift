//
//  ViewController.swift
//  Animation
//
//  Created by Cleís Aurora Pereira on 21/10/20.
//

import UIKit



class ViewController: UIViewController {

    var newY: CGFloat = 40
    var newX: CGFloat = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        createFirstView()
    }

    private func createFirstView() {
        newY = 40
        newX = 0
        let firstView = UIView(frame: CGRect(x:0, y: newY, width: 50, height: 50))

        firstView.backgroundColor = .random
        firstView.isUserInteractionEnabled =  true

        let tap = UITapGestureRecognizer(target: self, action: #selector(addNewView))
        firstView.addGestureRecognizer(tap)

        view.addSubview(firstView)
    }

    @objc func addNewView() {
        newY += 55

        if (newY + 50) >= view.frame.height {
            newY = 40
            newX += 55
        }

        if (newX + 50) >= view.frame.width {
            let finalView = UIView(frame: CGRect(x: view.frame.midX, y: view.frame.midY, width: 50, height: 50))
            finalView.backgroundColor = .random
            view.addSubview(finalView)

            UIView.animate(withDuration: 1) {
                finalView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
            } completion: { isCompleted in
                if isCompleted {
                    UIView.animate(withDuration: 1) {
                        self.view.subviews.forEach { subview in
                            subview.removeFromSuperview()
                        }
                        self.createFirstView()
                    }
                }
            }

            return
        }

        print(newX, newY, view.frame)

        let newView = UIView(frame: CGRect(x: newX, y: newY, width: 50, height: 50))

//        if newView >= frame {
//            <#code#>
//        }

        newView.backgroundColor = .random


        let tap = UITapGestureRecognizer(target: self, action: #selector(addNewView))
        newView.addGestureRecognizer(tap)

        view.addSubview(newView)

    }



}

