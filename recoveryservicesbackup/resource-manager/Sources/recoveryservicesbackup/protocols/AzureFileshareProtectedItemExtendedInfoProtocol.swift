// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// AzureFileshareProtectedItemExtendedInfoProtocol is additional information about Azure File Share backup item.
public protocol AzureFileshareProtectedItemExtendedInfoProtocol : Codable {
     var oldestRecoveryPoint: Date? { get set }
     var recoveryPointCount: Int32? { get set }
     var policyState: String? { get set }
}
