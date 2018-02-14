// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// DPMProtectedItemExtendedInfoProtocol is additional information of DPM Protected item.
public protocol DPMProtectedItemExtendedInfoProtocol : Codable {
     var protectableObjectLoadPath: [String:String]? { get set }
     var protected: Bool? { get set }
     var isPresentOnCloud: Bool? { get set }
     var lastBackupStatus: String? { get set }
     var lastRefreshedAt: Date? { get set }
     var oldestRecoveryPoint: Date? { get set }
     var recoveryPointCount: Int32? { get set }
     var onPremiseOldestRecoveryPoint: Date? { get set }
     var onPremiseLatestRecoveryPoint: Date? { get set }
     var onPremiseRecoveryPointCount: Int32? { get set }
     var isCollocated: Bool? { get set }
     var protectionGroupName: String? { get set }
     var diskStorageUsedInBytes: String? { get set }
     var totalDiskStorageSizeInBytes: String? { get set }
}