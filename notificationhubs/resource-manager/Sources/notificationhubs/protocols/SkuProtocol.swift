// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// SkuProtocol is the Sku description for a namespace
public protocol SkuProtocol : Codable {
     var name: SkuNameEnum { get set }
     var tier: String? { get set }
     var size: String? { get set }
     var family: String? { get set }
     var capacity: Int32? { get set }
}
