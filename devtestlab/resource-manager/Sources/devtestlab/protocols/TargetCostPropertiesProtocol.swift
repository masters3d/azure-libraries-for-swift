// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// TargetCostPropertiesProtocol is properties of a cost target.
public protocol TargetCostPropertiesProtocol : Codable {
     var status: TargetCostStatusEnum? { get set }
     var target: Int32? { get set }
     var costThresholds: [CostThresholdPropertiesProtocol?]? { get set }
     var cycleStartDateTime: Date? { get set }
     var cycleEndDateTime: Date? { get set }
     var cycleType: ReportingCycleTypeEnum? { get set }
}
