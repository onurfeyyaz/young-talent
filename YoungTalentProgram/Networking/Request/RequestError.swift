import Foundation

public enum RequestError: Error {
    case decode
    case invalidURL
    case noResponse
    case unauthorized
    case unexpectedStatusCode
    case unknown
    
    var customMessage: String {
        switch self {
        case .decode:
            return "Decode Error"
        case .unauthorized:
            return "Session expired"
        default:
            return "Unknow error"
        }
    }
}
