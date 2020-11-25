//
//  CountryCollectionViewCell.swift
//  GenericDataSource
//
//  Created by Umut SERIFLER on 23/11/2020.
//

import UIKit

class CountryCollectionViewCell: UICollectionViewCell, ConfigurableCell {

    func configure(_ item: CountryViewModel, at indexPath: IndexPath) {
        self.placeLabels(item)
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.contentView.subviews.forEach({$0.removeFromSuperview()})
    }
    
    func placeLabels(_ item: CountryViewModel) {
        
        // Title Label
        let title = UILabel(frame: CGRect(x: 0, y: 0, width: self.bounds.size.width, height: self.bounds.size.height / 2))
        title.textAlignment = .center
        title.text = item.title
        
        // SubTitle Label
        let subTitle = UILabel(frame: CGRect(x: 0, y: 0, width: self.bounds.size.width, height: self.bounds.size.height / 2))
        subTitle.textAlignment = .center
        subTitle.text = item.subTitle
        
        
        //Stack View
        let stackView   = UIStackView()
        stackView.axis  = NSLayoutConstraint.Axis.vertical
        stackView.distribution  = UIStackView.Distribution.equalSpacing
        stackView.alignment = UIStackView.Alignment.center
        stackView.spacing   = 16.0

        stackView.addArrangedSubview(title)
        stackView.addArrangedSubview(subTitle)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        self.contentView.addSubview(stackView)

        //Constraints
        stackView.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor).isActive = true
    }
    

}


