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

class UserViewController: UIViewController, AnyView, UITableViewDelegate, UITableViewDataSource {
    
    var presenter: AnyPresenter?
    
    private let  tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.isHidden = true
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemIndigo
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    func update(with users: [User]) {
        
    }
    
    func update(with error: String) {
        
    }
    
    // TableView Delegate and DataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
