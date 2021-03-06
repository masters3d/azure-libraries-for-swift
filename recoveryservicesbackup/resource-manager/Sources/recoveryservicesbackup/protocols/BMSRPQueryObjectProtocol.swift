// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// BMSRPQueryObjectProtocol is filters to list backup copies.
public protocol BMSRPQueryObjectProtocol : Codable {
     var startDate: Date? { get set }
     var endDate: Date? { get set }
     var restorePointQueryType: RestorePointQueryTypeEnum? { get set }
     var extendedInfo: Bool? { get set }
}
