// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// InMageAzureV2ReprotectInputProtocol is inMageAzureV2 specific provider input.
public protocol InMageAzureV2ReprotectInputProtocol : ReverseReplicationProviderSpecificInputProtocol {
     var masterTargetId: String? { get set }
     var processServerId: String? { get set }
     var storageAccountId: String? { get set }
     var runAsAccountId: String? { get set }
     var policyId: String? { get set }
     var logStorageAccountId: String? { get set }
     var disksToInclude: [String]? { get set }
}
