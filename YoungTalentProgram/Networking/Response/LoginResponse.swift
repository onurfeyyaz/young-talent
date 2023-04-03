import Foundation


public struct LoginResponse: Codable {
    public let error: Bool
    public let reason: String
    public let body: Body
    
    public struct Body: Codable {
        public let id: String
        public let email: String
        public let refreshToken: String
        public let pushNotificationEnabled: Bool
        public let team: Team
        public let profilePhoto: String
        public let nameSurname: String
        public let title: String
        public let accessToken: String
        public let pushNotificationToken: String
    }
    
    public struct Team: Codable {
        public let name: String
        public let deletedAt: String?
        public let id: String
        public let company: Company
        public let createdAt: Date
        public let updatedAt: Date
    }
    
    public struct Company: Codable {
        public let id: String
    }
}
