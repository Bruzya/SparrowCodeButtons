//
//  BlueButton.swift
//  SparowCodeButtons
//
//  Created by Evgenii Mazrukho on 06.11.2023.
//

import UIKit

class BlueButton: UIButton {
    
    //MARK: - Lifecycle
    override init(frame: CGRect) {
        super.init(frame: .zero)
    }
    
    convenience init(title: String) {
        self.init(type: .custom)
        configure()
        
        setTitle(title, for: .normal)
        setImage(.init(systemName: "arrow.forward.circle.fill")?.withRenderingMode(.alwaysTemplate), for: .normal)
        setImage(.init(systemName: "arrow.forward.circle.fill")?.withRenderingMode(.alwaysTemplate), for: .highlighted)
        addTargets()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Methods
    private func configure() {
        var configuration = UIButton.Configuration.filled()
        configuration.baseForegroundColor = .white
        configuration.baseBackgroundColor = .systemBlue
        configuration.cornerStyle = .large
        configuration.imagePlacement = .trailing
        configuration.imagePadding = 8
        configuration.contentInsets = NSDirectionalEdgeInsets(top: 10,
                                                              leading: 14,
                                                              bottom: 14,
                                                              trailing: 10)
        configuration.buttonSize = .medium
        self.configuration = configuration
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func addTargets() {
        let longPress = UILongPressGestureRecognizer(target: self, action: #selector(longPress))
        addGestureRecognizer(longPress)
    }
    
    @objc private func longPress(gesture: UILongPressGestureRecognizer) {
        
    }
}

