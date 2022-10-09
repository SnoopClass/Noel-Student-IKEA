//
//  RecentProductSectionView.swift
//  IKEA
//
//  Created by Yu ahyeon on 2022/10/05.
//

import UIKit

class RecentProductSectionView: UIView {

    // MARK: - Property
    private lazy var collectView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        
        let collectView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectView.delegate = self
        collectView.dataSource = self
        collectView.showsHorizontalScrollIndicator = false
        collectView.register(
            UICollectionViewCell.self,
            forCellWithReuseIdentifier: "RecentProductSectionViewCell")
        
        return collectView
    }()

    
    // MARK: - Init

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .red
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Method


}

// MARK: - CollectionViewDataSource
extension RecentProductSectionView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: "RecentProductSectionViewCell",
            for: indexPath
        )
        cell.backgroundColor = .red
        
        return cell
    }
}

// MARK: - CollectionViewDelegateFlowLayout
extension RecentProductSectionView: UICollectionViewDelegateFlowLayout{
    
}

