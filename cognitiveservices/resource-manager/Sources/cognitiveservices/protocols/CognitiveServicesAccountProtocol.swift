// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// CognitiveServicesAccountProtocol is cognitive Services Account is an Azure resource representing the provisioned
// account, its type, location and SKU.
public protocol CognitiveServicesAccountProtocol : Codable {
     var etag: String? { get set }
     var id: String? { get set }
     var kind: String? { get set }
     var location: String? { get set }
     var name: String? { get set }
     var properties: CognitiveServicesAccountPropertiesProtocol? { get set }
     var sku: SkuProtocol? { get set }
     var tags: [String:String]? { get set }
     var type: String? { get set }
}