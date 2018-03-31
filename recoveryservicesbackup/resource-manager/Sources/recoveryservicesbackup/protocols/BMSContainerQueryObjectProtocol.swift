// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// BMSContainerQueryObjectProtocol is the query filters that can be used with the list containers API.
public protocol BMSContainerQueryObjectProtocol : Codable {
     var backupManagementType: BackupManagementTypeEnum { get set }
     var containerType: ContainerTypeEnum? { get set }
     var backupEngineName: String? { get set }
     var fabricName: String? { get set }
     var status: String? { get set }
     var friendlyName: String? { get set }
}
