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
        $0.text = "검색"
        $0.font = UIFont.boldSystemFont(ofSize: 22)
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }( UILabel())

    let searchBarTextField: UITextField = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.placeholder = "무엇을 찾고 있나요?"
        $0.frame = CGRect(x: 0, y: 0, width: 0, height: 100)
        $0.addLeftPadding()
        $0.layer.borderColor = UIColor.label.cgColor
        $0.layer.borderWidth = 1
        $0.layer.masksToBounds = true
        $0.layer.cornerRadius = 10
        return $0
    }(UITextField())

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
    func setupLayout() {
        setupTitle()
        setupSearchBar()
    }

    func setupTitle() {
        self.addSubview(titleLable)
        let titleLableConstraint = [
            titleLable.topAnchor.constraint(equalTo: self.topAnchor, constant: 30),
            titleLable.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30)
        ]
        NSLayoutConstraint.activate(titleLableConstraint)
    }

    func setupSearchBar() {
        self.addSubview(searchBarTextField)
        let searchBarTextFieldConstraint = [
            searchBarTextField.topAnchor.constraint(equalTo: titleLable.bottomAnchor, constant: 30),
            searchBarTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            searchBarTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            searchBarTextField.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ]
        NSLayoutConstraint.activate(searchBarTextFieldConstraint)
        searchBarTextField.addleftimage(image: UIImage(systemName: "magnifyingglass")!)
    }
    
}

extension UITextField {
    func addLeftPadding() {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: self.frame.height))
        self.leftView = paddingView
        self.leftViewMode = ViewMode.always
    }
    
    func addleftimage(image:UIImage) {
        let leftimage = UIImageView(frame: CGRect(x: 0, y: 0, width: image.size.width, height: image.size.height))
        leftimage.image = image
        leftimage.tintColor = .systemGray
        self.leftView = leftimage
        self.leftViewMode = .always
    }
}
