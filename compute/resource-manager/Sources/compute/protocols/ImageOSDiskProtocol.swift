// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ImageOSDiskProtocol is describes an Operating System disk.
public protocol ImageOSDiskProtocol : Codable {
     var osType: OperatingSystemTypesEnum { get set }
     var osState: OperatingSystemStateTypesEnum { get set }
     var snapshot: SubResourceProtocol? { get set }
     var managedDisk: SubResourceProtocol? { get set }
     var blobUri: String? { get set }
     var caching: CachingTypesEnum? { get set }
     var diskSizeGB: Int32? { get set }
     var storageAccountType: StorageAccountTypesEnum? { get set }
}
