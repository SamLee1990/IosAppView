//
//  TopChartsTableViewCell.swift
//  IosAppView
//
//  Created by 李世文 on 2020/8/9.
//

import UIKit

class TopChartsTableViewCell: UITableViewCell {

    @IBOutlet weak var appIconImage: UIImageView!
    @IBOutlet weak var appNameLabel: UILabel!
    @IBOutlet weak var introLabel: UILabel!
    @IBOutlet weak var priceButton: UIButton!
    @IBOutlet weak var appChartLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
