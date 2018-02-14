// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// MountSettingsProtocol is details of the File Server.
public protocol MountSettingsProtocol : Codable {
     var mountPoint: String? { get set }
     var fileServerPublicIP: String? { get set }
     var fileServerInternalIP: String? { get set }
     var fileServerType: FileServerTypeEnum? { get set }
}