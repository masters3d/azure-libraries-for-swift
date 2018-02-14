// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// HubPropertiesFormatProtocol is properties of hub.
public protocol HubPropertiesFormatProtocol : Codable {
     var apiEndpoint: String? { get set }
     var webEndpoint: String? { get set }
     var provisioningState: String? { get set }
     var tenantFeatures: Int32? { get set }
     var hubBillingInfo: HubBillingInfoFormatProtocol? { get set }
}
