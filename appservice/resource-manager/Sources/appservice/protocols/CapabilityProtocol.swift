// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// CapabilityProtocol is describes the capabilities/features allowed for a specific SKU.
public protocol CapabilityProtocol : Codable {
     var name: String? { get set }
     var value: String? { get set }
     var reason: String? { get set }
}
