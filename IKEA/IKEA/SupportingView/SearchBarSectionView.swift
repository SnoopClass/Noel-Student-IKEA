//
//  SearchBarSectionView.swift
//  IKEA
//
//  Created by Yu ahyeon on 2022/10/03.
//

import UIKit

class SearchBarSectionView: UIView {

    // MARK: - Property

    private let titleLable: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "검색"
        $0.font = UIFont.boldSystemFont(ofSize: 22)

        return $0
    }( UILabel())

    private let searchBarbackground: UIView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.layer.borderColor = UIColor.label.cgColor
        $0.layer.borderWidth = 0.5
        $0.layer.masksToBounds = true
        $0.layer.cornerRadius = 25
        return $0
    }(UIView())

    private let searchBarIcon: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.image = UIImage(systemName: "magnifyingglass")
        $0.tintColor = .systemGray
        return $0
    }(UIImageView())

    private let searchBarPlaceholder: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.font = UIFont.systemFont(ofSize: 14)
        $0.text = "무엇을 찾고 있나요?"
        $0.textColor = .systemGray2
        return $0
    }(UILabel())

    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .red
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Method

    private func setupLayout() {
        setupTitle()
        setupSearchBar()
    }

    private func setupTitle() {
        self.addSubview(titleLable)
        NSLayoutConstraint.activate([
            titleLable.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            titleLable.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0)
        ])
    }

    private func setupSearchBar() {
        self.addSubview(searchBarbackground)
        NSLayoutConstraint.activate([
            searchBarbackground.topAnchor.constraint(equalTo: titleLable.bottomAnchor, constant: 25),
            searchBarbackground.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            searchBarbackground.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant:  -30),
            searchBarbackground.heightAnchor.constraint(equalToConstant: 50)
        ])

        searchBarbackground.addSubview(searchBarIcon)
        NSLayoutConstraint.activate([
            searchBarIcon.centerYAnchor.constraint(equalTo: searchBarbackground.centerYAnchor),
            searchBarIcon.leadingAnchor.constraint(equalTo: searchBarbackground.leadingAnchor, constant: 20),
            searchBarIcon.heightAnchor.constraint(equalToConstant: 20),
            searchBarIcon.widthAnchor.constraint(equalToConstant: 20)
        ])

        searchBarbackground.addSubview(searchBarPlaceholder)
        NSLayoutConstraint.activate([
            searchBarPlaceholder.centerYAnchor.constraint(equalTo: searchBarbackground.centerYAnchor),
            searchBarPlaceholder.leadingAnchor.constraint(equalTo: searchBarIcon.trailingAnchor, constant: 10)
        ])

    }
}
