// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// DestinationPropertiesProtocol is properties describing the storage account, blob container and acrchive anme format
// for capture destination
public protocol DestinationPropertiesProtocol : Codable {
     var storageAccountResourceId: String? { get set }
     var blobContainer: String? { get set }
     var archiveNameFormat: String? { get set }
}
