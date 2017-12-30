//
//  CoordinatorProtocol.swift
//  RequiredSweets
//
//  Created by Roman Dmitrieivich on 3/5/17.
//  Copyright © 2017 Roman Dmitrieivich. All rights reserved.
//

import RxSwift

protocol CoordinatorProtocol {
    var finished: Observable<Void> { get }
    func start()
}
