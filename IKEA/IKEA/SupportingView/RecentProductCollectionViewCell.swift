//
//  RecentProductCollectionViewCell.swift
//  IKEA
//
//  Created by Yu ahyeon on 2022/10/10.
//

import UIKit

class RecentProductCollectionViewCell: UICollectionViewCell {

    static let identifier = "RecentProductCollectionViewCell"

    // MARK: - Property
    private lazy var productImage: UIImageView = {
        $0.image = UIImage(named: "RecentProductTestImage")
        $0.contentMode = .scaleAspectFit
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIImageView())

    // MARK: - Init

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupCellLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Method

    func setupCellLayout() {
        self.addSubview(productImage)
        NSLayoutConstraint.activate([
            productImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            productImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            productImage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
            productImage.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0),
        ])
        
    }
}
