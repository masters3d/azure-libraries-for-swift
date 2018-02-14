// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// BackupEngineExtendedInfoProtocol is additional information on backup engine.
public protocol BackupEngineExtendedInfoProtocol : Codable {
     var databaseName: String? { get set }
     var protectedItemsCount: Int32? { get set }
     var protectedServersCount: Int32? { get set }
     var diskCount: Int32? { get set }
     var usedDiskSpace: Double? { get set }
     var availableDiskSpace: Double? { get set }
     var refreshedAt: Date? { get set }
     var azureProtectedInstances: Int32? { get set }
}
