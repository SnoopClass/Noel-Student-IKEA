//
//  RecentProductSectionView.swift
//  IKEA
//
//  Created by Yu ahyeon on 2022/10/05.
//

import UIKit

class RecentProductSectionView: UIView {

    // MARK: - Property

    private let titleLable: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "최근 본 제픔"
        $0.textColor = .label
        $0.font = UIFont.boldSystemFont(ofSize: 18)
        return $0
    }( UILabel())
    
    private let deleteLable: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "모두 삭제"
        $0.textColor = .label
        $0.font = UIFont.systemFont(ofSize: 14)
        return $0
    }( UILabel())
    
    private lazy var collectView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        
        let collectView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectView.delegate = self
        collectView.dataSource = self
        collectView.showsHorizontalScrollIndicator = false
        collectView.register(
            RecentProductCollectionViewCell.self,
            forCellWithReuseIdentifier: "RecentProductCollectionViewCell"
        )
        collectView.translatesAutoresizingMaskIntoConstraints = false
        
        return collectView
    }()

    // MARK: - Init

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .red
        setupRecentProduct()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Method
    func setupRecentProduct() {
        [
            titleLable,
            deleteLable,
            collectView
        ].forEach{ self.addSubview($0) }
        
        NSLayoutConstraint.activate([
            titleLable.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            titleLable.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0)
        ])
        
        NSLayoutConstraint.activate([
            deleteLable.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            deleteLable.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant:  -30)
        ])
        
        NSLayoutConstraint.activate([
            collectView.topAnchor.constraint(equalTo: titleLable.bottomAnchor, constant: 30),
            collectView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            collectView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant:  0),
            collectView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0),
            collectView.heightAnchor.constraint(equalToConstant: 80)
        ])
    }

}

// MARK: - CollectionViewDataSource
extension RecentProductSectionView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: RecentProductCollectionViewCell.identifier,
            for: indexPath
        ) as? RecentProductCollectionViewCell
        cell?.setupCellLayout()
        
        return cell ?? UICollectionViewCell()
    }
}

// MARK: - CollectionViewDelegateFlowLayout
extension RecentProductSectionView: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        CGSize(width: collectView.frame.width - 60.0, height: frame.width)
        CGSize(width: collectView.frame.width / 5, height: frame.width)

    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//        UIEdgeInsets(top: 0, left: 30, bottom: 0, right: 30)
//    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        10.0
    }
}
