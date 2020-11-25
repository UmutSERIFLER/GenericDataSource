//
//  BeerTableViewCell.swift
//  GenericDataSource
//
//  Created by Umut SERIFLER on 22/11/2020.
//

import UIKit

class BeerTableViewCell: UITableViewCell, ConfigurableCell {

    // MARK: - ConfigurableCell
    func configure(_ item: BeerViewModel, at indexPath: IndexPath) {
        self.textLabel?.text = item.title
        self.detailTextLabel?.text = item.subTitle
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
        self.tintColor = .green
        self.selectionStyle = .none
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
