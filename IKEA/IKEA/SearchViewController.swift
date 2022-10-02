//
//  SearchViewController.swift
//  IKEA
//
//  Created by Yu ahyeon on 2022/10/02.
//

import UIKit

class SearchViewController: UIViewController {

    // MARK: - property

    

    // MARK: - life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupAttributes()
    }

    // MARK: - func

    func setupAttributes() {
        view.backgroundColor = .systemBackground
        setupNavigationBar()
    }
    
    func setupNavigationBar() {
        navigationItem.title = "검색"
        navigationItem.largeTitleDisplayMode = .always
        navigationController?.navigationBar.prefersLargeTitles = true
    }

}
