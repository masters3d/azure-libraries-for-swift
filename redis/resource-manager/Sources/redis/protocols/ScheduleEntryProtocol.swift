// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ScheduleEntryProtocol is patch schedule entry for a Premium Redis Cache.
public protocol ScheduleEntryProtocol : Codable {
     var dayOfWeek: DayOfWeekEnum { get set }
     var startHourUtc: Int32 { get set }
     var maintenanceWindow: String? { get set }
}
