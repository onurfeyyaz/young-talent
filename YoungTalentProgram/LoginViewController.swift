import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var phoneNumberTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    func setupUI() {
        phoneNumberTextField.borderStyle = .none
        phoneNumberTextField.layer.cornerRadius = 17.0
        phoneNumberTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: phoneNumberTextField.frame.height))
        phoneNumberTextField.leftViewMode = .always
    }
}
