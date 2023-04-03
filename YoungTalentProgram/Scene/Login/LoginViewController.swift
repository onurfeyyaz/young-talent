import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var termsAndConds: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    @IBAction func loginAction(_ sender: UIButton) {
        getData { result in
            switch result {
            case .success(let success):
                print("SUCCESSS ******* \(success.body.accessToken)")
            case .failure(let error):
                print("ERRRORR \(error)")
            }
        }
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

extension LoginViewController: HTTPClient {
    func getData(_ completion: @escaping (Result<LoginResponse, RequestError>) -> Void) {
        sendRequest(endpoint: LoginEndpoint.withEmail, responseModel: LoginResponse.self) { result in
            switch result {
            case .success(let response):
                print("RESPONSEE ******* \(response)")
                completion(.success(response))
            case .failure(let error):
                print("Error first ******* \(error.localizedDescription)")
                completion(.failure(error))
            }
        }
    }
}
