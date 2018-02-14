// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// AzureBlobStorageHttpLogsConfigProtocol is http logs to azure blob storage configuration.
public protocol AzureBlobStorageHttpLogsConfigProtocol : Codable {
     var sasUrl: String? { get set }
     var retentionInDays: Int32? { get set }
     var enabled: Bool? { get set }
}
