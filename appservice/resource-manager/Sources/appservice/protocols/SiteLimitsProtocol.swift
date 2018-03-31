// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// SiteLimitsProtocol is metric limits set on an app.
public protocol SiteLimitsProtocol : Codable {
     var maxPercentageCpu: Double? { get set }
     var maxMemoryInMb: Int64? { get set }
     var maxDiskSizeInMb: Int64? { get set }
}
