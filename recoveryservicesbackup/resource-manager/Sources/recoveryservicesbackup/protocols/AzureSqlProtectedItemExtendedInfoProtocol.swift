// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// AzureSqlProtectedItemExtendedInfoProtocol is additional information on Azure Sql specific protected item.
public protocol AzureSqlProtectedItemExtendedInfoProtocol : Codable {
     var oldestRecoveryPoint: Date? { get set }
     var recoveryPointCount: Int32? { get set }
     var policyState: String? { get set }
}
