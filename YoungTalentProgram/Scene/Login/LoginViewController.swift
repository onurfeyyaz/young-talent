import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var termsAndConds: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    func setupUI() {
        emailTextField.borderStyle = .none
        emailTextField.layer.cornerRadius = 17.0
        emailTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: emailTextField.frame.height))
        emailTextField.leftViewMode = .always
        
        passwordTextField.borderStyle = .none
        passwordTextField.layer.cornerRadius = 17.0
        passwordTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: passwordTextField.frame.height))
        passwordTextField.leftViewMode = .always
        
        let attributedLabel = NSMutableAttributedString(string: "By click continue you are agree with our Terms and Condition")
        
        attributedLabel.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.gray,
                            range: NSRange(location: 0,
                                           length: "By click continue you are agree with our".count))
        
        attributedLabel.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.purple,
                            range: NSRange(location: ("By click continue you are agree with our".count + 1),
                                           length: "Terms and Condition".count))
        
        termsAndConds.attributedText = attributedLabel
    }
}
