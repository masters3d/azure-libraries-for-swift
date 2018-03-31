// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// MaxSizeCapabilityProtocol is the maximum size limits for a database.
public protocol MaxSizeCapabilityProtocol : Codable {
     var limit: Int64? { get set }
     var unit: MaxSizeUnitsEnum? { get set }
     var status: CapabilityStatusEnum? { get set }
}
