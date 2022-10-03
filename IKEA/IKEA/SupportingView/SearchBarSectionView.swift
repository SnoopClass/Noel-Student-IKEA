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
        self.addSubview(titleLable)
        let titleLableConstraint = [
            titleLable.topAnchor.constraint(equalTo: self.topAnchor, constant: 30),
            titleLable.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30)
        ]
        NSLayoutConstraint.activate(titleLableConstraint)
    }
    
}
