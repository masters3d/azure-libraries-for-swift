// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// PriceSheetModelProtocol is price sheet result. It contains the pricesheet associated with billing period
public protocol PriceSheetModelProtocol : Codable {
     var pricesheets: [PriceSheetPropertiesProtocol?]? { get set }
     var _nextLink: String? { get set }
}