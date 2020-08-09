//
//  TodayTopTableViewCell.swift
//  IosAppView
//
//  Created by 李世文 on 2020/8/8.
//

import UIKit

class TodayTopTableViewCell: UITableViewCell {
    
    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var bigLabel: UILabel!
    @IBOutlet weak var footerLabel: UILabel!
    @IBOutlet weak var todayView: UIView!
    @IBOutlet weak var todayImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
