// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// GetObjectsParametersProtocol is request parameters for the GetObjectsByObjectIds API.
public protocol GetObjectsParametersProtocol : Codable {
     var additionalProperties: [String:[String: String?]]? { get set }
     var objectIds: [String]? { get set }
     var types: [String]? { get set }
     var includeDirectoryObjectReferences: Bool { get set }
}