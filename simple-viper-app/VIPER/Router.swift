//
//  Router.swift
//  simple-viper-app
//
//  Created by Matthew Dolan on 2024-10-29.
//

import Foundation

// Object
// Entry point

protocol AnyRouter {
    static func start() -> AnyRouter
}

class UserRouter: AnyRouter {
    static func start() -> AnyRouter {
        let router = UserRouter()
        
        // Assign VIP
        
        return router
    }
}
