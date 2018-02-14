// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct DiagnosticAnalysisPropertiesData : DiagnosticAnalysisPropertiesProtocol {
    public var startTime: Date?
    public var endTime: Date?
    public var abnormalTimePeriods: [AbnormalTimePeriodProtocol?]?
    public var payload: [AnalysisDataProtocol?]?
    public var nonCorrelatedDetectors: [DetectorDefinitionProtocol?]?

        enum CodingKeys: String, CodingKey {case startTime = "startTime"
        case endTime = "endTime"
        case abnormalTimePeriods = "abnormalTimePeriods"
        case payload = "payload"
        case nonCorrelatedDetectors = "nonCorrelatedDetectors"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.startTime) {
        self.startTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .startTime)), format: .dateTime)
    }
    if container.contains(.endTime) {
        self.endTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .endTime)), format: .dateTime)
    }
    if container.contains(.abnormalTimePeriods) {
        self.abnormalTimePeriods = try container.decode([AbnormalTimePeriodData?]?.self, forKey: .abnormalTimePeriods)
    }
    if container.contains(.payload) {
        self.payload = try container.decode([AnalysisDataData?]?.self, forKey: .payload)
    }
    if container.contains(.nonCorrelatedDetectors) {
        self.nonCorrelatedDetectors = try container.decode([DetectorDefinitionData?]?.self, forKey: .nonCorrelatedDetectors)
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
    if self.startTime != nil {
        try container.encode(DateConverter.toString(date: self.startTime!, format: .dateTime), forKey: .startTime)
    }
    if self.endTime != nil {
        try container.encode(DateConverter.toString(date: self.endTime!, format: .dateTime), forKey: .endTime)
    }
    if self.abnormalTimePeriods != nil {try container.encode(self.abnormalTimePeriods as! [AbnormalTimePeriodData?]?, forKey: .abnormalTimePeriods)}
    if self.payload != nil {try container.encode(self.payload as! [AnalysisDataData?]?, forKey: .payload)}
    if self.nonCorrelatedDetectors != nil {try container.encode(self.nonCorrelatedDetectors as! [DetectorDefinitionData?]?, forKey: .nonCorrelatedDetectors)}
  }
}

extension DataFactory {
  public static func createDiagnosticAnalysisPropertiesProtocol() -> DiagnosticAnalysisPropertiesProtocol {
    return DiagnosticAnalysisPropertiesData()
  }
}
