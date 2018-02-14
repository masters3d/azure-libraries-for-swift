// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ResourceSkuCostsProtocol is describes metadata for retrieving price info.
public protocol ResourceSkuCostsProtocol : Codable {
     var meterID: String? { get set }
     var quantity: Int64? { get set }
     var extendedUnit: String? { get set }
}
