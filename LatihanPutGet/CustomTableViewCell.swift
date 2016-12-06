//
//  CustomTableViewCell.swift
//  LatihanPutGet
//
//  Created by Nando Septian Husni on 12/4/16.
//  Copyright © 2016 IMA STUDIO. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
//    var labeljdk : String = ""
//    var labeldetk : String = ""
//    var imgPiew = UIImage()
    @IBOutlet weak var imgView: UIImageView!

    @IBOutlet weak var lblDet: UILabel!
    @IBOutlet weak var lblJdl: UILabel!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
//        lblJdl.text = labeljdk
//        lblDet.text = labeldetk
//        imgView.image = imgPiew
        // Configure the view for the selected state
    }

}
