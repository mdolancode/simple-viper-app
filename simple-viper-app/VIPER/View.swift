//
//  View.swift
//  simple-viper-app
//
//  Created by Matthew Dolan on 2024-10-29.
//

import Foundation
import UIKit

// Responsible for user interface
// View Controller
// protocol
// Reference to the presenter

protocol AnyView {
    var presenter: AnyPresenter? { get set }
    
    func update(with users: [User])
    func update(with error: String)
    
}

class UserViewController: UIViewController, AnyView {
    var presenter: AnyPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func update(with users: [User]) {
        
    }
    
    func update(with error: String) {
        
    }
}
