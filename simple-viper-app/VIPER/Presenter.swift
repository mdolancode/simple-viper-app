//
//  Presenter.swift
//  simple-viper-app
//
//  Created by Matthew Dolan on 2024-10-29.
//

import Foundation

// Object
// protocol
// Reference to Interactor, Router, View

protocol AnyPresenter {
    var router: AnyRouter? { get set }
    var interactor: AnyInteractor? { get set }
    var view: AnyView? { get set }
    
    func interactorDidFetchUsers(with result: Result<[User], Error>)
    
}

class UserPresenter: AnyPresenter {
    var router: AnyRouter?
    
    var interactor: AnyInteractor?
    
    var view: AnyView?
    
    func interactorDidFetchUsers(with result: Result<[User], Error>) {
        
    }
}
