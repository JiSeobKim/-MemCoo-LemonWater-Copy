//
//  FavoriteCell.swift
//  MemebershipCoupon
//
//  Created by Joosung Kim on 06/01/2017.
//  Copyright © 2017 mino. All rights reserved.
//

import UIKit

class FavoriteCell: UITableViewCell {
    
    @IBOutlet weak var barcodeImg: UIImageView!
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var barcodeNumber: UILabel!
    @IBOutlet weak var titleLbl: UILabel!
    
    @IBOutlet weak var view: UIView!
    
    
    func configureCell(item: Favorite) {
        
        logo.layer.applyLogoShadowLayout()
        

            if item.isCoupon == true {
                titleLbl.text = item.toCoupon?.title
                let barcodeNo = String(item.toCoupon?.barcode ?? "")
                barcodeNumber.text = barcodeNo?.addHyphen()
                barcodeImg.image = generateBarcodeFromString(string: barcodeNo)
                logo.image = item.toCoupon?.toImage?.image as! UIImage?
            } else if item.isMembership == true {
                titleLbl.text = item.toMembership?.toBrand?.title
                let barcodeNo = item.toMembership?.barcode
                barcodeNumber.text = barcodeNo?.addHyphen()
                barcodeImg.image = generateBarcodeFromString(string: barcodeNo)
                logo.image = item.toMembership?.toImage?.image as! UIImage?
            }
        
        let outView = self.contentView.viewWithTag(1)
        
        outView?.layer.applyCellShadowLayout()
        view.layer.applyCellBolderLayout()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

}
