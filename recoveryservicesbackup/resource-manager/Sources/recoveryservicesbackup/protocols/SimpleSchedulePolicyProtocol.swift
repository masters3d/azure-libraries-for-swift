// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// SimpleSchedulePolicyProtocol is simple policy schedule.
public protocol SimpleSchedulePolicyProtocol : SchedulePolicyProtocol {
     var scheduleRunFrequency: ScheduleRunTypeEnum? { get set }
     var scheduleRunDays: [DayOfWeekEnum?]? { get set }
     var scheduleRunTimes: [Date]? { get set }
     var scheduleWeeklyFrequency: Int32? { get set }
}
