import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var setupAccountNameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        setupAccountNameTextField.borderStyle = .none
        setupAccountNameTextField.layer.cornerRadius = 17.0
        setupAccountNameTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: setupAccountNameTextField.frame.height))
        setupAccountNameTextField.leftViewMode = .always
    }
}
