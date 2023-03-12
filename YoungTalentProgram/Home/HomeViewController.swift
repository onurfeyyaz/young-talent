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
        /*
        var item: [messageCellItem] {
            switch self {
            case .kozalak:
                return [messageCellItem(senderImage: "demoProfilePicture", senderName: "Feyyaz", message: "KOZALAK", date: "12:34"),
                        messageCellItem(senderImage: "demoProfilePicture", senderName: "Onur", message: "tamamdır", date: "10:23")]
            case .ios:
                [messageCellItem(senderImage: "demoProfilePicture", senderName: "Feyyaz", message: "IOS", date: "12:34"),
                               messageCellItem(senderImage: "demoProfilePicture", senderName: "Onur", message: "tamamdır", date: "10:23")]
            case .android:
                [messageCellItem(senderImage: "demoProfilePicture", senderName: "Feyyaz", message: "ANDROID", date: "12:34"),
                                messageCellItem(senderImage: "demoProfilePicture", senderName: "Onur", message: "tamamdır", date: "10:23")]
            }
        } */
    }
    
    
    let messagesKozalak = [messageCellItem(senderImage: "demoProfilePicture", senderName: "Feyyaz", message: "KOZALAK", date: "12:34"),
                    messageCellItem(senderImage: "demoProfilePicture", senderName: "Onur", message: "tamamdır", date: "10:23")]
    let messagesIos = [messageCellItem(senderImage: "demoProfilePicture", senderName: "Feyyaz", message: "IOS", date: "12:34"),
                    messageCellItem(senderImage: "demoProfilePicture", senderName: "Onur", message: "tamamdır", date: "10:23")]
    let messagesAndroid = [messageCellItem(senderImage: "demoProfilePicture", senderName: "Feyyaz", message: "ANDROID", date: "12:34"),
                    messageCellItem(senderImage: "demoProfilePicture", senderName: "Onur", message: "tamamdır", date: "10:23")]
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
    }
}

extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let section = Section(rawValue: section) else { return 1 }
        
        switch section {
        case .kozalak:
            return messagesKozalak.count
        case .ios:
            return messagesIos.count
        case .android:
            return messagesAndroid.count
        }

    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return Section.allCases.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let section = Section(rawValue: indexPath.section) else { return UITableViewCell()}
       
        switch section {
        case .kozalak:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ItemTableViewCell", for: indexPath) as? ItemTableViewCell
            cell?.configureCell(image: messagesKozalak[indexPath.row].senderImage, name: messagesKozalak[indexPath.row].senderName, message: messagesKozalak[indexPath.row].message, date: messagesKozalak[indexPath.row].date ?? "kozalak")
            return cell ?? UITableViewCell()
        case .ios:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ItemTableViewCell", for: indexPath) as? ItemTableViewCell
            cell?.configureCell(image: messagesIos[indexPath.row].senderImage, name: messagesIos[indexPath.row].senderName, message: messagesIos[indexPath.row].message, date: messagesIos[indexPath.row].date ?? "ios")
            return cell ?? UITableViewCell()
        case .android:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ItemTableViewCell", for: indexPath) as? ItemTableViewCell
            cell?.configureCell(image: messagesAndroid[indexPath.row].senderImage, name: messagesAndroid[indexPath.row].senderName, message: messagesAndroid[indexPath.row].message, date: messagesAndroid[indexPath.row].date ?? "android")
            return cell ?? UITableViewCell()
        }
 
    }
    
}
