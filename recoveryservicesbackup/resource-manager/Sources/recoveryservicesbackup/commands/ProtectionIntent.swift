// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// ProtectionIntent is the open API 2.0 Specs for Azure RecoveryServices Backup service
import Foundation
import azureSwiftRuntime
extension Commands {
public struct ProtectionIntent {
    public static func CreateOrUpdate(vaultName: String, resourceGroupName: String, subscriptionId: String, fabricName: String, intentObjectName: String, parameters: ProtectionIntentResourceProtocol) -> ProtectionIntentCreateOrUpdate {
        return CreateOrUpdateCommand(vaultName: vaultName, resourceGroupName: resourceGroupName, subscriptionId: subscriptionId, fabricName: fabricName, intentObjectName: intentObjectName, parameters: parameters)
    }
    public static func Validate(azureRegion: String, subscriptionId: String, parameters: PreValidateEnableBackupRequestProtocol) -> ProtectionIntentValidate {
        return ValidateCommand(azureRegion: azureRegion, subscriptionId: subscriptionId, parameters: parameters)
    }
}
}