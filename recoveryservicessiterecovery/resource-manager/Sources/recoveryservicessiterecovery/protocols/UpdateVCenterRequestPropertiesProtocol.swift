// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// UpdateVCenterRequestPropertiesProtocol is the properties of an update vCenter request.
public protocol UpdateVCenterRequestPropertiesProtocol : Codable {
     var friendlyName: String? { get set }
     var ipAddress: String? { get set }
     var processServerId: String? { get set }
     var port: String? { get set }
     var runAsAccountId: String? { get set }
}
