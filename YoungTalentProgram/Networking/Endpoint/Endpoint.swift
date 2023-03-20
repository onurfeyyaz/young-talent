import Foundation

public protocol Endpoint {
    var scheme: String { get }
    var host: String { get }
    var path: String { get }
    var port: String { get }
    var method: RequestMethod { get }
    var header: [String: String]? { get }
    var body: [String: String]? { get }
    var queryItems: [URLQueryItem]? { get }
}

extension Endpoint {
    public var scheme: String {
        return "https"
    }
    
    public var host: String {
        return "momentumv2.mobven.com"
    }
    
    public var port: String {
        return "7076"
    }
}
