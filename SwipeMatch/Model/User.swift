//
//  User.swift
//  SwipeMatch
//
//  Created by Bochkarov Valentyn on 15/05/2020.
//  Copyright © 2020 Bochkarov Valentyn. All rights reserved.
//

import UIKit

struct User {
    // defining our properties for our model layer
    let name: String
    let age: Int
    let profession: String
    let imageName: String
    
    func toCardViewModel() -> CardViewModel {
        let attributedText = NSMutableAttributedString(string: name, attributes: [.font: UIFont.systemFont(ofSize: 32, weight: .heavy)])
          attributedText.append(NSAttributedString(string: "  \(age)", attributes: [.font: UIFont.systemFont(ofSize: 24, weight: .regular)]))
          attributedText.append(NSAttributedString(string: "\n\(profession)", attributes: [.font: UIFont.systemFont(ofSize: 20, weight: .regular)]))
        return CardViewModel(imageName: imageName, attributedString: attributedText, textAlignment: .left)
    }
}
