//
//  PreReleaseVersionsResponse.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
    
/// A response containing a list of resources.
public struct PreReleaseVersionsResponse: Decodable {

    /// (Required) The resource data.
    public let data: [PrereleaseVersion]

    /// The requested relationship data.￼
    ///  Possible types: Build, App
    public let include: [PreReleaseVersionsResponse.Included]?

    /// (Required) Navigational links that include the self-link.
    public let links: PagedDocumentLinks

    /// Paging information.
    public let meta: PagingInformation?
    
    public enum Included: Decodable {
        case build(Build)
        case app(App)
        public init(from decoder: Decoder) throws {
            if let wrapped = try? Build(from: decoder) {
                self = .build(wrapped)
                return
            }
            
            if let wrapped = try? App(from: decoder) {
                self = .app(wrapped)
                return
            }

            throw DecodingError.typeMismatch(
                Included.self,
                DecodingError.Context(codingPath: [], debugDescription: "Not convertable to \(Included.self)")
            )
        }
    }
}
