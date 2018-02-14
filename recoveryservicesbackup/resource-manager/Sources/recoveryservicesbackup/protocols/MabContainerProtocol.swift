// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// MabContainerProtocol is container with items backed up using MAB backup engine.
public protocol MabContainerProtocol : ProtectionContainerProtocol {
     var canReRegister: Bool? { get set }
     var containerId: Int64? { get set }
     var protectedItemCount: Int64? { get set }
     var agentVersion: String? { get set }
     var extendedInfo: MabContainerExtendedInfoProtocol? { get set }
     var mabContainerHealthDetails: [MABContainerHealthDetailsProtocol?]? { get set }
     var containerHealthState: String? { get set }
}
