//
//  LemonSqueezy+Affiliate.swift
//  LemonSqueezy
//
//  Created by Ram Maurya on 01/05/25.
//

import Foundation

extension LemonSqueezy {
    /// Get a single affiliate by ID.
    ///
    /// - Parameters:
    ///    - affiliateId: The ID of the affiliate you'd like to retrieve.
    ///    - queryItems: An array of `URLQueryItem`, passed as query parameters.
    /// - Returns: A response object containing the requested ``Affiliate``.
    public func getAffiliate(_ affiliateId: Affiliate.ID, queryItems: [URLQueryItem] = []) async throws -> LemonSqueezyAPIDataAndIncluded<Affiliate, Affiliate.Included> {
        return try await call(route: .affiliate(affiliateId), queryItems: queryItems)
    }
     
    /// Returns a list of affiliates.
    /// - Parameters:
    ///    - pageNumber: The page number to return the response for.
    ///    - pageSize: The number of resources to return per-page.
    ///    - queryItems: An array of `URLQueryItem`, passed as query parameters.
    /// - Returns: A response object containing an array of ``Affiliate``.
    public func getAffiliates(pageNumber: Int = 1, pageSize: Int = 10, queryItems: [URLQueryItem] = []) async throws -> LemonSqueezyAPIDataIncludedAndMeta<[Affiliate], Affiliate.Included, Meta> {
        return try await call(route: .affiliates, queryItems: queryItems, pageNumber: pageNumber, pageSize: pageSize)
    }
}
