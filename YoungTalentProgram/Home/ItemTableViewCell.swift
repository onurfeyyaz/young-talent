import UIKit

class ItemTableViewCell: UITableViewCell {

    
    @IBOutlet weak var itemImage: UIImageView!
    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var itemMessage: UILabel!
    @IBOutlet weak var itemDate: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func configureCell(image: String, name: String, message: String, date: String) {
        itemImage.image = UIImage(named: image)
        itemName.text = name
        itemMessage.text = message
        itemDate.text = date
    }
}
