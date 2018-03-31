// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// DailyRetentionScheduleProtocol is daily retention schedule.
public protocol DailyRetentionScheduleProtocol : Codable {
     var retentionTimes: [Date]? { get set }
     var retentionDuration: RetentionDurationProtocol? { get set }
}
