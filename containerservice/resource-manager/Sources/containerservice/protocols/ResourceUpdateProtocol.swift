// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ResourceUpdateProtocol is the Resource model definition.
public protocol ResourceUpdateProtocol : Codable {
     var tags: [String:String]? { get set }
     var sku: DiskSkuProtocol? { get set }
}
