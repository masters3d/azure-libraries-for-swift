// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// SnapshotProtocol is snapshot resource.
public protocol SnapshotProtocol : ResourceProtocol {
     var managedBy: String? { get set }
     var sku: DiskSkuProtocol? { get set }
     var properties: DiskPropertiesProtocol? { get set }
}
