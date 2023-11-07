//
//  ViewController.swift
//  SparowCodeButtons
//
//  Created by Evgenii Mazrukho on 06.11.2023.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - UI
    private lazy var firstButton = BlueButton(title: "First Button")
    private lazy var secondButton = BlueButton(title: "Second Medium Button")
    private lazy var thirdButton = BlueButton(title: "Third")
    
    //MARK: - Properties
    private var buttonsArray: [BlueButton]?
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configure()
    }
    
    //MARK: - Methods
    private func configure() {
        buttonsArray = [firstButton, secondButton, thirdButton]
        var offset: CGFloat = 20
        
        buttonsArray?.forEach { view.addSubview($0) }
        buttonsArray?.forEach {
            setConstraints(button: $0, to: offset)
            offset += 50
        }
//        buttonsArray?.forEach { $0.addTarget(self, action: #selector(buttonTapped), for: .touchDownRepeat) }
        
//        let longPress = UILongPressGestureRecognizer(target: self, action: #selector(longPress))
//        longPress.delegate = self
//        buttonsArray?.forEach { $0.addGestureRecognizer(longPress) }
    }
    
//    @objc private func buttonTapped(_ sender: BlueButton) {
//        UIView.animate(withDuration: 0.2) {
//            sender.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
//        } completion: { _ in
//            sender.transform = CGAffineTransform.identity
//        }
//    }
    
//    @objc func longPress(gesture: UILongPressGestureRecognizer) {
//        if gesture.state == .began {
//            print("Long Press")
//        } else if gesture.state == .cancelled || gesture.state == .ended {
//            print("Ended")
//        }
//    }
}

//MARK: - Constraints
extension ViewController {
    private func setConstraints(button: UIButton,to offset: CGFloat) {
        NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: offset),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.heightAnchor.constraint(equalToConstant: 40),
        ])
    }
}
