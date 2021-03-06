// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// DataDisksProtocol is settings for the data disk which would be created for the File Server.
public protocol DataDisksProtocol : Codable {
     var diskSizeInGB: Int32 { get set }
     var cachingType: CachingTypeEnum? { get set }
     var diskCount: Int32 { get set }
     var storageAccountType: StorageAccountTypeEnum { get set }
}
