// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// AdminKeyResultProtocol is response containing the primary and secondary admin API keys for a given Azure Search
// service.
public protocol AdminKeyResultProtocol : Codable {
     var primaryKey: String? { get set }
     var secondaryKey: String? { get set }
}