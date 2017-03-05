//
//  StoryboardInitializable.swift
//  RequiredSweets
//
//  Created by Roman Dmitrieivich on 3/5/17.
//  Copyright © 2017 Roman Dmitrieivich. All rights reserved.
//

import UIKit

protocol StoryboardInitializable {
    static var storyboardName: String { get }
    static func initFromStoryboard() -> Self
}

extension StoryboardInitializable where Self: UIViewController {
    static var storyboardName: String {
        return String(describing: Self.self)
    }
    
    static func initFromStoryboard() -> Self {
        guard
            let viewController = UIStoryboard(name: storyboardName, bundle: nil).instantiateInitialViewController() as? Self
            else {
                fatalError("Could not instantiate initial view controller from \(storyboardName) storyboard.")
        }
        
        return viewController
    }
    
}
