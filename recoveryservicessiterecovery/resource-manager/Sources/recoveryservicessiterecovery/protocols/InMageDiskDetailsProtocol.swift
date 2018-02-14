// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// InMageDiskDetailsProtocol is vMware/Physical specific Disk Details
public protocol InMageDiskDetailsProtocol : Codable {
     var diskId: String? { get set }
     var diskName: String? { get set }
     var diskSizeInMB: String? { get set }
     var diskType: String? { get set }
     var diskConfiguration: String? { get set }
     var volumeList: [DiskVolumeDetailsProtocol?]? { get set }
}
