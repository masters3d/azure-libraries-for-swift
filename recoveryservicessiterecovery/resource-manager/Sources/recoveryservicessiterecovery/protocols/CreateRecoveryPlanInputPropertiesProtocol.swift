// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// CreateRecoveryPlanInputPropertiesProtocol is recovery plan creation properties.
public protocol CreateRecoveryPlanInputPropertiesProtocol : Codable {
     var primaryFabricId: String { get set }
     var recoveryFabricId: String { get set }
     var failoverDeploymentModel: FailoverDeploymentModelEnum? { get set }
     var groups: [RecoveryPlanGroupProtocol] { get set }
}
