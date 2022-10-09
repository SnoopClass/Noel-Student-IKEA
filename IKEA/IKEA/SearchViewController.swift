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
        $0.layer.backgroundColor = UIColor.black.cgColor
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
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIStackView())

    private lazy var searchBarSectionView: SearchBarSectionView = {
        return $0
    }(SearchBarSectionView())

    private lazy var recentProductSectionView: RecentProductSectionView = {
        $0.backgroundColor = .yellow
        return $0
    }(RecentProductSectionView())

    private lazy var categorySectionView: UIView = {
        $0.backgroundColor = .orange
        return $0
    }(UIView())

    private lazy var campaignSectionView: UIView = {
        $0.backgroundColor = .green
        return $0
    }(UIView())

    private lazy var popularProductSectionVie: UIView = {
        $0.backgroundColor = .blue
        return $0
    }(UIView())

    private lazy var loginSectionView: UIView = {
        $0.backgroundColor = .purple
        return $0
    }(UIView())

    private lazy var informationSectionView: UIView = {
        $0.backgroundColor = .systemPink
        return $0
    }(UIView())

    // MARK: - life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupAttributes()
        setupLayout()
    }

    // MARK: - func

    private func setupAttributes() {
        view.backgroundColor = .systemBackground
    }

    private func setupLayout() {
        setupscrollView()
        setupstackView()
    }

    private func setupscrollView(){
        view.addSubview(scrollView)
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
        ])

        scrollView.addSubview(contentView)
        
        let contentViewCenterY = contentView.centerYAnchor.constraint(equalTo: scrollView.centerYAnchor)
        contentViewCenterY.priority = .defaultLow

        let contentViewHeight = contentView.heightAnchor.constraint(greaterThanOrEqualTo: view.heightAnchor)
        contentViewHeight.priority = .defaultLow

        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor),
            contentView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            contentViewCenterY,
            contentViewHeight
        ])
    }

    private func setupstackView() {
        contentView.addSubview(stackView)
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: contentView.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
        [
            searchBarSectionView,
            recentProductSectionView,
            categorySectionView,
            categorySectionView,
            popularProductSectionVie,
            loginSectionView,
            informationSectionView
        ].forEach {
            self.stackView.addArrangedSubview($0)
        }
    }
}
