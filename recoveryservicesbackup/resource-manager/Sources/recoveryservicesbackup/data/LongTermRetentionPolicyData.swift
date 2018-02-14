// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct LongTermRetentionPolicyData : LongTermRetentionPolicyProtocol, RetentionPolicyProtocol {
    public var dailySchedule: DailyRetentionScheduleProtocol?
    public var weeklySchedule: WeeklyRetentionScheduleProtocol?
    public var monthlySchedule: MonthlyRetentionScheduleProtocol?
    public var yearlySchedule: YearlyRetentionScheduleProtocol?

        enum CodingKeys: String, CodingKey {case dailySchedule = "dailySchedule"
        case weeklySchedule = "weeklySchedule"
        case monthlySchedule = "monthlySchedule"
        case yearlySchedule = "yearlySchedule"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.dailySchedule) {
        self.dailySchedule = try container.decode(DailyRetentionScheduleData?.self, forKey: .dailySchedule)
    }
    if container.contains(.weeklySchedule) {
        self.weeklySchedule = try container.decode(WeeklyRetentionScheduleData?.self, forKey: .weeklySchedule)
    }
    if container.contains(.monthlySchedule) {
        self.monthlySchedule = try container.decode(MonthlyRetentionScheduleData?.self, forKey: .monthlySchedule)
    }
    if container.contains(.yearlySchedule) {
        self.yearlySchedule = try container.decode(YearlyRetentionScheduleData?.self, forKey: .yearlySchedule)
    }
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self.dailySchedule != nil {try container.encode(self.dailySchedule as! DailyRetentionScheduleData?, forKey: .dailySchedule)}
    if self.weeklySchedule != nil {try container.encode(self.weeklySchedule as! WeeklyRetentionScheduleData?, forKey: .weeklySchedule)}
    if self.monthlySchedule != nil {try container.encode(self.monthlySchedule as! MonthlyRetentionScheduleData?, forKey: .monthlySchedule)}
    if self.yearlySchedule != nil {try container.encode(self.yearlySchedule as! YearlyRetentionScheduleData?, forKey: .yearlySchedule)}
  }
}

extension DataFactory {
  public static func createLongTermRetentionPolicyProtocol() -> LongTermRetentionPolicyProtocol {
    return LongTermRetentionPolicyData()
  }
}
