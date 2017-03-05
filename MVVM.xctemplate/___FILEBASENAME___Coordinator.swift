//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
// Required implementation 
// CoordinatorProtocol.swift

import UIKit
import RxSwift

class ___FILEBASENAMEASIDENTIFIER___Coordinator: CoordinatorProtocol {
    
    // MARK: - Public Properties
    
    var finished: Observable<Void> { return finishedSubject.asObservable() }
    
    // MARK: - Private Properties
    
    private var finishedSubject = PublishSubject<Void>()
    private let navigationController: UINavigationController
    
    // MARK: - Lifecycle
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    // MARK: - Coordinator Methods
    
    func start() {}
    
    func finish() {}
    
}
