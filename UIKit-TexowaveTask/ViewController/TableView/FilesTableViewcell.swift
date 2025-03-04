//
//  FilesTableViewcell.swift
//  UIKit-TexowaveTask
//
//  Created by Nimish Mothgare on 29/01/24.
//

import UIKit

class FilesTableViewcell: UITableViewCell {
    
    //MARK: -IBOutlet
    @IBOutlet weak var filenameLbl: UILabel!
    @IBOutlet weak var dateandtimeLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
