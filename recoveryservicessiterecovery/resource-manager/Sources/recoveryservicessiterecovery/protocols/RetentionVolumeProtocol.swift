// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// RetentionVolumeProtocol is the retention details of the MT.
public protocol RetentionVolumeProtocol : Codable {
     var volumeName: String? { get set }
     var capacityInBytes: Int64? { get set }
     var freeSpaceInBytes: Int64? { get set }
     var thresholdPercentage: Int32? { get set }
}
