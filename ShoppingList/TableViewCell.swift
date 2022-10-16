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
    var act:Bool = true
    var act2:Bool = true
    
   var act11: [Bool] = []
//    [(UserDefaults.standard.bool(forKey: "check"))]
    var act22: [Bool] = []
//    (UserDefaults.standard.bool(forKey: "star"))
    
    
    var act111 = UserDefaults.standard.array(forKey: "check") as? [Bool] ?? [Bool()]
    
    var ischeckedCheck: Bool = false
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
 

    @IBAction func checkBtn(_ sender: UIButton) {
        act = !act
        
        UserDefaults.standard.set(act, forKey: "check")
        
        if act {
            check.setImage(UIImage(systemName: "checkmark.square"), for: .normal)
            UserDefaults.standard.bool(forKey: "check")
           
        } else {
            check.setImage(UIImage(systemName: "checkmark.square.fill"), for: .normal)
            UserDefaults.standard.bool(forKey: "check")
            
        }
        print(UserDefaults.standard.bool(forKey: "check"))
        
    }
   
    @IBAction func checkStar(_ sender: UIButton) {
         act2 = !act2
        UserDefaults.standard.set(act2, forKey: "star")
        
         if act2 {
             star.setImage(UIImage(systemName: "star"), for: .normal)
             UserDefaults.standard.bool(forKey: "star")
         } else {
             star.setImage(UIImage(systemName: "star.fill"), for: .normal)
             UserDefaults.standard.bool(forKey: "star")
         }
        print(UserDefaults.standard.bool(forKey: "star"))
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        
            }
}
