import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    struct messageCellItem {
        let senderImage: String
        let senderName: String
        let message: String
        let date: String?
    }
    
    struct messageSectionItem {
        let groupImage: UIImage?
        let groupName: String?
        let lastMessage: String
        let groupMessages: [messageCellItem]
    }
    
    enum Section: Int, CaseIterable {
        case kozalak = 0
        case ios
        case android
        
        var title: String {
            switch self {
            case .kozalak:
                return "Kozalak"
            case .ios:
                return "iOS Grubu"
            case .android:
                return "Android Grubu"
            }
        }
        
        var image: String {
           return "demoProfilePicture"
        }
        
        var lastMessage: String {
            switch self {
            case .kozalak:
                return "Last Kozalak"
            case .ios:
                return "Last iOS"
            case .android:
                return "Last Android"
            }
        }
        
        var items: [messageCellItem] {
            switch self {
            case .kozalak:
                return [messageCellItem(senderImage: "jorge", senderName: "Feyyaz", message: "KOZALAK", date: "12:34"),
                        messageCellItem(senderImage: "samantha", senderName: "Onur", message: "tamamdır", date: "10:23"),
                        messageCellItem(senderImage: "jorge", senderName: "Feyyaz", message: "KOZALAK", date: "12:34"),
                        messageCellItem(senderImage: "milendra", senderName: "Onur", message: "tamamdır", date: "10:23")]
            case .ios:
                return [messageCellItem(senderImage: "jorge", senderName: "Feyyaz", message: "IOS", date: "12:34"),
                        messageCellItem(senderImage: "antonio", senderName: "Onur", message: "tamamdır", date: "10:23"),
                        messageCellItem(senderImage: "samantha", senderName: "Feyyaz", message: "KOZALAK", date: "12:34"),
                        messageCellItem(senderImage: "micheal", senderName: "Onur", message: "tamamdır", date: "10:23")]
            case .android:
                return [messageCellItem(senderImage: "milendra", senderName: "Feyyaz", message: "ANDROID", date: "12:34"),
                                messageCellItem(senderImage: "samantha", senderName: "Onur", message: "tamamdır", date: "10:23")]
            }
        }
    }

   /*
    let section = [messageSectionItem(groupImage: UIImage(named: "demoProfilePicture"), groupName: "Group Name", lastMessage: "Last Message", groupMessages: [
        messageCellItem(senderImage: UIImage(named:"demoProfilePicture"), senderName: "Feyyaz", message: "Selam", date: "12:34"),
        messageCellItem(senderImage: UIImage(named:"demoProfilePicture"), senderName: "Onur", message: "tamamdır", date: "10:23")])
    ]
    */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        setupTableView()
    }
    
    func setupTableView(){
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "ItemTableViewCell", bundle: .main), forCellReuseIdentifier: "ItemTableViewCell")
        tableView.register(SectionView.self, forHeaderFooterViewReuseIdentifier: "SectionView")
    }
}

extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let section = Section(rawValue: section) else { return 1 }
        
        return section.items.count

    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return Section.allCases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let section = Section(rawValue: indexPath.section) else { return UITableViewCell()}
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemTableViewCell", for: indexPath) as? ItemTableViewCell
        cell?.configureCell(image: section.items[indexPath.row].senderImage, name: section.items[indexPath.row].senderName, message: section.items[indexPath.row].message, date: section.items[indexPath.row].date ?? "bos")
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard let section = Section(rawValue: section) else { return UIView()}
        
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "SectionView") as? SectionView
        header?.image.image = UIImage(named:section.image)
        header?.name.text = section.title
        header?.lastMessage.text = section.lastMessage
        
        return header
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 60
    }
}
