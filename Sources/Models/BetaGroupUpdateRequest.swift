//
//  BetaGroupUpdateRequest.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
    
/// A request containing a single resource.
public struct BetaGroupUpdateRequest: Decodable {

    /// (Required) The resource data.
    public let data: BetaGroupUpdateRequest.Data
    
    public struct Data: Decodable {
    
        /// The resource's attributes.
        public let attributes: BetaGroupUpdateRequest.Data.Attributes?
    
        /// (Required) The opaque resource ID that uniquely identifies the resource.
        public let `id`: String
    
        /// (Required) The resource type.Value: betaGroups
        public let type: String
    }
}

/// MARK: BetaGroupUpdateRequest.Data
extension BetaGroupUpdateRequest.Data {
    /// Attributes that describe a resource.
    public struct Attributes: Decodable {
    
        /// The name for the beta group.
        public let name: String?
    
        /// A Boolean value that indicates whether a public link is enabled. Enabling a link allows you to invite anyone outside of your team to beta test your app. When you share this link, testers will be able to install the beta version of your app on their devices in TestFlight and share the link with others.
        public let publicLinkEnabled: Bool?
    
        /// The maximum number of testers that can join this beta group using the public link. Values must be between 1 and 10,000.
        public let publicLinkLimit: Int?
    
        /// A Boolean value that limits the number of testers who can join the beta group using the public link.
        public let publicLinkLimitEnabled: Bool?
    }
}
