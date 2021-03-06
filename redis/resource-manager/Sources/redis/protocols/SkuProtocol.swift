// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// SkuProtocol is SKU parameters supplied to the create Redis operation.
public protocol SkuProtocol : Codable {
     var name: SkuNameEnum { get set }
     var family: SkuFamilyEnum { get set }
     var capacity: Int32 { get set }
}
