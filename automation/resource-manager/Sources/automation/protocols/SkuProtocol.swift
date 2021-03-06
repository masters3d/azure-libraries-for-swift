// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// SkuProtocol is the account SKU.
public protocol SkuProtocol : Codable {
     var name: SkuNameEnumEnum { get set }
     var family: String? { get set }
     var capacity: Int32? { get set }
}
