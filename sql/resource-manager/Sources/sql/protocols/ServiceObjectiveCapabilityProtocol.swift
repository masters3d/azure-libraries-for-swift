// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ServiceObjectiveCapabilityProtocol is the service objectives capability.
public protocol ServiceObjectiveCapabilityProtocol : Codable {
     var name: String? { get set }
     var status: CapabilityStatusEnum? { get set }
     var performanceLevel: PerformanceLevelProtocol? { get set }
     var id: String? { get set }
     var supportedMaxSizes: [MaxSizeCapabilityProtocol?]? { get set }
     var includedMaxSize: MaxSizeCapabilityProtocol? { get set }
}
