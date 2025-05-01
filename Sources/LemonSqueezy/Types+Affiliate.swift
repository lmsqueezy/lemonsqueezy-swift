import Foundation

public struct Affiliate: Codable, Identifiable {
    public typealias ID = String
    
    /// The unique identifier of this user.
    public let id: ID
    
    /// The type of the resource.
    public let type: String
    
    /// An object representing the resource data.
    public let attributes: Attributes
}

extension Affiliate {
    public struct APIResponse: Codable {
        let data: Affiliate
    }
    
    /// An object representing the resources data.
    public struct Attributes: Codable {
        /// The ID of the store this checkout belongs to.
        public let storeId: Int
        
        /// The ID of the user this affiliate belongs to.
        public let userId: Int
        
        /// The full name of the affiliate.
        public let userName: String?
        
        /// The email address of the affiliate.
        public let userEmail: String
        
        /// The domain this affiliate uses to promote products.
        public let shareDomain: String?
        
        /// The status of the affiliate. Either `active`, `pending` or `disabled`.
        public let status: String

        /// The list of products enabled for this affiliate in the JSON format.
        public let products: [String: AffiliateProduct]?
        
        /// The application note of the affiliate.
        public let applicationNote: String?
        
        /// A positive integer in cents representing the total earnings of the affiliate.
        public let totalEarnings: Int
        
        /// A positive integer in cents representing the unpaid earnings of the affiliate.
        public let unpaidEarnings: Int
        
        /// An [ISO-8601](https://en.wikipedia.org/wiki/ISO_8601) formatted date-time string indicating when the object was created.
        public let createdAt: String
        
        /// An [ISO-8601](https://en.wikipedia.org/wiki/ISO_8601) formatted date-time string indicating when the object was last updated.
        public let updatedAt: String
    }

    public struct AffiliateProduct: Codable {
        public let variantId: Int
        public let type: String
        public let commission: Int
        public let enabled: Bool
    }
}

extension Affiliate {
    /// Related resources that can be included in the same response by using the `include` query parameter.
    public struct Included: Codable {
        
    }
}
