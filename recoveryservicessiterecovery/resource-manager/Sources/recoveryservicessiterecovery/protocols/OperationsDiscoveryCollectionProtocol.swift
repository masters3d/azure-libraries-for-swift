// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// OperationsDiscoveryCollectionProtocol is collection of ClientDiscovery details.
public protocol OperationsDiscoveryCollectionProtocol : Codable {
     var value: [OperationsDiscoveryProtocol?]? { get set }
     var _nextLink: String? { get set }
}
