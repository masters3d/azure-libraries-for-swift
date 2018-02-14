// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// DataDiskProtocol is data Disk settings which will be used by the data disks associated to Compute Nodes in the pool.
public protocol DataDiskProtocol : Codable {
     var lun: Int32 { get set }
     var caching: CachingTypeEnum? { get set }
     var diskSizeGB: Int32 { get set }
     var storageAccountType: StorageAccountTypeEnum? { get set }
}
