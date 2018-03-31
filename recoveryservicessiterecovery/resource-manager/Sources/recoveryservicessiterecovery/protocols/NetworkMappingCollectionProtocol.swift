// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// NetworkMappingCollectionProtocol is list of network mappings. As with NetworkMapping, it should be possible to reuse
// a prev version of this class. It doesn't seem likely this class could be anything more than a slightly bespoke
// collection of NetworkMapping. Hence it makes sense to override Load with Base.NetworkMapping instead of existing
// CurrentVersion.NetworkMapping.
public protocol NetworkMappingCollectionProtocol : Codable {
     var value: [NetworkMappingProtocol?]? { get set }
     var _nextLink: String? { get set }
}
