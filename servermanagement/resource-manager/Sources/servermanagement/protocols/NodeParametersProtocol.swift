// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// NodeParametersProtocol is parameter collection for operations on arm node resource.
public protocol NodeParametersProtocol : Codable {
     var location: String? { get set }
     var tags: [String: String?]? { get set }
     var properties: NodeParametersPropertiesProtocol? { get set }
}
