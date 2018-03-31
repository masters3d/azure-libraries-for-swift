// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ExportDevicesRequestProtocol is use to provide parameters when requesting an export of all devices in the IoT hub.
public protocol ExportDevicesRequestProtocol : Codable {
     var exportBlobContainerUri: String { get set }
     var excludeKeys: Bool { get set }
}
