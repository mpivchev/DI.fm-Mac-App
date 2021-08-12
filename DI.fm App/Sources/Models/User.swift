import Foundation

// MARK: - User
struct User: Decodable {
    let apiKey: String
    let confirmed: Bool
    let email, firstName: String
    let id: Int
    let lastName, listenKey, timezone: String
    let networkFavoriteChannels: [NetworkFavoriteChannel]
    let activated, hasPurchases: Bool
    let images: Images
}

// MARK: - EmailCampaign
struct EmailCampaign: Codable {
    let autoOptIn: Bool
    let createdAt: Date
    let id: Int
    let key, name: String
    let position: Int
    let sailthruName: String
    let updatedAt: Date
    let network: Network
}

// MARK: - Network
struct Network: Codable {
    let key: String
}

// MARK: - Images
struct Images: Codable {
}

// MARK: - NetworkFavoriteChannel
struct NetworkFavoriteChannel: Codable {
    let channelID, position: Int?
}

// MARK: - Subscription
struct Subscription: Codable {
    let autoRenew: Bool
    let id: Int
    let status, startsOn, expiresOn: String
    let trial, billable: Bool
    let services: [Service]
    let plan: Plan
}

// MARK: - Plan
struct Plan: Codable {
    let allowTrial: Bool
    let id: Int
    let key: String
    let mobileOnly: Bool
    let name: String
    let priority, trialDurationDays: Int
    let updatedAt: Date
}

// MARK: - Service
struct Service: Codable {
    let id: Int
    let key, name: String
}
