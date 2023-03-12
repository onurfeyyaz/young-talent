import UIKit

class OTPViewController: UIViewController {

    @IBOutlet weak var otpCode1: UITextField!
    @IBOutlet weak var otpCode2: UITextField!
    @IBOutlet weak var otpCode3: UITextField!
    @IBOutlet weak var otpCode4: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        otpCode1.borderStyle = .none
        otpCode1.layer.cornerRadius = 17.0
        otpCode2.borderStyle = .none
        otpCode2.layer.cornerRadius = 17.0
        otpCode3.borderStyle = .none
        otpCode3.layer.cornerRadius = 17.0
        otpCode4.borderStyle = .none
        otpCode4.layer.cornerRadius = 17.0
    }

}
