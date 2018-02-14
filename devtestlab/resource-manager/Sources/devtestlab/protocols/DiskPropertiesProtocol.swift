// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// DiskPropertiesProtocol is properties of a disk.
public protocol DiskPropertiesProtocol : Codable {
     var diskType: StorageTypeEnum? { get set }
     var diskSizeGiB: Int32? { get set }
     var leasedByLabVmId: String? { get set }
     var diskBlobName: String? { get set }
     var diskUri: String? { get set }
     var createdDate: Date? { get set }
     var hostCaching: String? { get set }
     var managedDiskId: String? { get set }
     var provisioningState: String? { get set }
     var uniqueIdentifier: String? { get set }
}
