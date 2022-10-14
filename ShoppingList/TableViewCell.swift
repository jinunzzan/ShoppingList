//
//  TableViewCell.swift
//  ShoppingList
//
//  Created by Eunchan Kim on 2022/10/13.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var star: UIButton!
   
    @IBOutlet weak var cellLabel: UILabel!

    @IBOutlet weak var check: UIButton!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func checkBtn(_ sender: UIButton) {
        check.setImage(UIImage(systemName: "checkmark.square.fill"), for: .normal)
        UserDefaults.standard.set(check.isEnabled, forKey: "check")
        check.isEnabled = UserDefaults.standard.bool(forKey: "check")
        print(UserDefaults.standard.bool(forKey: "check"))
    }
    
    @IBAction func checkStar(_ sender: Any) {
        star.setImage(UIImage(systemName: "star.fill"), for: .normal)
    }

}
