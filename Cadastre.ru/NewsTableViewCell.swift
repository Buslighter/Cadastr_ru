//
//  NewsTableViewCell.swift
//  Cadastre.ru
//
//  Created by gleba on 19.11.2022.
//

import UIKit

class NewsTableViewCell: UITableViewCell {

    @IBOutlet var newsImageView: UIImageView!
    @IBOutlet var newsTitleLabel: UILabel!
    @IBOutlet var newsLabel: UILabel!
    @IBOutlet var newsStatsLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
