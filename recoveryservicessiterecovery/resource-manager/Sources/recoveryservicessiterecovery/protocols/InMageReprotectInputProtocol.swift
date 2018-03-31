// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// InMageReprotectInputProtocol is inMageAzureV2 specific provider input.
public protocol InMageReprotectInputProtocol : ReverseReplicationProviderSpecificInputProtocol {
     var masterTargetId: String { get set }
     var processServerId: String { get set }
     var retentionDrive: String { get set }
     var runAsAccountId: String? { get set }
     var datastoreName: String? { get set }
     var diskExclusionInput: InMageDiskExclusionInputProtocol? { get set }
     var profileId: String { get set }
     var disksToInclude: [String]? { get set }
}
