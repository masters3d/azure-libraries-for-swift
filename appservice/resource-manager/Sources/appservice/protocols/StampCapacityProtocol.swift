// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// StampCapacityProtocol is stamp capacity information.
public protocol StampCapacityProtocol : Codable {
     var name: String? { get set }
     var availableCapacity: Int64? { get set }
     var totalCapacity: Int64? { get set }
     var unit: String? { get set }
     var computeMode: ComputeModeOptionsEnum? { get set }
     var workerSize: WorkerSizeOptionsEnum? { get set }
     var workerSizeId: Int32? { get set }
     var excludeFromCapacityAllocation: Bool? { get set }
     var isApplicableForAllComputeModes: Bool? { get set }
     var siteMode: String? { get set }
}
