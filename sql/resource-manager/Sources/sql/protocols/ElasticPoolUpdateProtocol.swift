// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ElasticPoolUpdateProtocol is represents an elastic pool update.
public protocol ElasticPoolUpdateProtocol : ResourceProtocol {
     var tags: [String:String]? { get set }
     var properties: ElasticPoolPropertiesProtocol? { get set }
}
