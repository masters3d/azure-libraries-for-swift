// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// HybridConnectionPropertiesProtocol is hybridConnection resource specific properties
public protocol HybridConnectionPropertiesProtocol : Codable {
     var serviceBusNamespace: String? { get set }
     var relayName: String? { get set }
     var relayArmUri: String? { get set }
     var hostname: String? { get set }
     var port: Int32? { get set }
     var sendKeyName: String? { get set }
     var sendKeyValue: String? { get set }
     var serviceBusSuffix: String? { get set }
}
