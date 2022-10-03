//
//  SearchViewController.swift
//  IKEA
//
//  Created by Yu ahyeon on 2022/10/02.
//

import UIKit

class SearchViewController: UIViewController {

    // MARK: - property

    private let scrollView: UIScrollView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.layer.backgroundColor = UIColor.red.cgColor
        return $0
    }(UIScrollView())

    private let contentView: UIView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIView())
    
    private lazy var stackView: UIStackView = {
        $0.axis = .vertical
        $0.distribution = .equalSpacing
        $0.spacing = 0.0
        return $0
    }(UIStackView())

    // MARK: - life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupAttributes()
        setupLayout()
    }

    // MARK: - func

    func setupAttributes() {
        view.backgroundColor = .systemBackground
        setupNavigationBar()
    }
    
    func setupLayout() {
        view.addSubview(scrollView)
        let scrollViewConstraint = [
            scrollView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
        ]
        NSLayoutConstraint.activate(scrollViewConstraint)

        scrollView.addSubview(contentView)
        let contentViewConstraint = [
            contentView.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor)
        ]
        NSLayoutConstraint.activate(contentViewConstraint)

        let contentViewCenterY = contentView.centerYAnchor.constraint(equalTo: scrollView.centerYAnchor)
        contentViewCenterY.priority = .defaultLow

        let contentViewHeight = contentView.heightAnchor.constraint(greaterThanOrEqualTo: view.heightAnchor)
        contentViewHeight.priority = .defaultLow

        NSLayoutConstraint.activate([
            contentView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            contentViewCenterY,
            contentViewHeight
        ])
    }

    func setupNavigationBar() {
        navigationItem.title = "검색"
        navigationItem.largeTitleDisplayMode = .always
        navigationController?.navigationBar.prefersLargeTitles = true
    }

}
