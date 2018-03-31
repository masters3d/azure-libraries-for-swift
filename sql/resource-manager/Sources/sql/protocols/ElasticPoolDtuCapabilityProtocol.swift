// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ElasticPoolDtuCapabilityProtocol is the Elastic Pool DTU capability.
public protocol ElasticPoolDtuCapabilityProtocol : Codable {
     var limit: Int64? { get set }
     var maxDatabaseCount: Int64? { get set }
     var status: CapabilityStatusEnum? { get set }
     var supportedMaxSizes: [MaxSizeCapabilityProtocol?]? { get set }
     var includedMaxSize: MaxSizeCapabilityProtocol? { get set }
     var supportedPerDatabaseMaxSizes: [MaxSizeCapabilityProtocol?]? { get set }
     var supportedPerDatabaseMaxDtus: [ElasticPoolPerDatabaseMaxDtuCapabilityProtocol?]? { get set }
}
