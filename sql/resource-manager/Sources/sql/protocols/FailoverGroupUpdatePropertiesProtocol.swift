// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// FailoverGroupUpdatePropertiesProtocol is properties of a failover group update.
public protocol FailoverGroupUpdatePropertiesProtocol : Codable {
     var readWriteEndpoint: FailoverGroupReadWriteEndpointProtocol? { get set }
     var readOnlyEndpoint: FailoverGroupReadOnlyEndpointProtocol? { get set }
     var databases: [String]? { get set }
}
