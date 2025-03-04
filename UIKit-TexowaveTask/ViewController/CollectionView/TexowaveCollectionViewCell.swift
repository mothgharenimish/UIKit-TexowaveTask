//
//  TexowaveCollectionViewCell.swift
//  UIKit-TexowaveTask
//
//  Created by Nimish Mothgare on 29/01/24.
//

import UIKit

class TexowaveCollectionViewCell: UICollectionViewCell {

    //MARK: -IBOutlet
    @IBOutlet weak var pdftitleLbl: UILabel!
    @IBOutlet weak var pdfView: UIView!
    @IBOutlet weak var pdfImg: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.pdfImg.layer.cornerRadius = self.pdfImg.frame.width / 2
        self.pdfView.layer.cornerRadius = self.pdfView.frame.width / 2

    }

}
