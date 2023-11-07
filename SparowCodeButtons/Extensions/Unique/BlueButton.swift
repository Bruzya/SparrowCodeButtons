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
        configure(for: title)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Methods
    private func configure(for title: String) {
        var configuration = UIButton.Configuration.filled()
        configuration.title = title
        configuration.baseForegroundColor = .white
        configuration.baseBackgroundColor = .systemBlue
        configuration.cornerStyle = .large
        configuration.image = UIImage(systemName: "arrow.forward.circle.fill")
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
}
