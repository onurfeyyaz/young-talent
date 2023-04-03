import Foundation

public enum LoginEndpoint {
    case withEmail
    case withGoogle
}
extension LoginEndpoint: Endpoint {
    
    public var method: RequestMethod {
        return .post
    }
    
    public var header: [String : String]? {
        return [
            "X-Device-Id": "134ACE7F-12B1-4CB0-8640-CCA1E277A42D--",
            "X-Platform": "OSX",
            "X-Device-Name": "iPhone 12 Mini",
            "X-Push-Notification-Token": "a3a008557dffa51bf5b7f24deb4dbc1196397a22e72b0980f0b3a9cb219204ee",
            "Authorization": "Basic eXRwMjAyM0Btb2J2ZW4uY29tOllUUDIwMjM=",
            "Accept-Encoding": "gzip, deflate, br",
            "Accept": "*/*"
        ]
    }
    
    public var path: String {
        return "/api/v1/auth/login"
    }
    
    public var queryItems: [URLQueryItem]? {
        return nil
    }
    
    public var body: [String : String]? {
        return nil
    }
}
