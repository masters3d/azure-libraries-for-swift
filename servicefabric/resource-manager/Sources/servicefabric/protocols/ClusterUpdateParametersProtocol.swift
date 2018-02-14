// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ClusterUpdateParametersProtocol is cluster update request
public protocol ClusterUpdateParametersProtocol : Codable {
     var properties: ClusterPropertiesUpdateParametersProtocol? { get set }
     var tags: [String:String]? { get set }
}
