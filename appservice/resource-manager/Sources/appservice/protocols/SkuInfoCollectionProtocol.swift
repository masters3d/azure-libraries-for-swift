// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// SkuInfoCollectionProtocol is collection of SKU information.
public protocol SkuInfoCollectionProtocol : Codable {
     var value: [SkuInfoProtocol] { get set }
     var _nextLink: String? { get set }
}
