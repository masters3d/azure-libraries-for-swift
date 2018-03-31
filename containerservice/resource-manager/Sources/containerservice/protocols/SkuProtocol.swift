// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// SkuProtocol is describes a virtual machine scale set sku.
public protocol SkuProtocol : Codable {
     var name: String? { get set }
     var tier: String? { get set }
     var capacity: Int64? { get set }
}
