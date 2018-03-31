// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct DscReportResourceData : DscReportResourceProtocol {
    public var resourceId: String?
    public var sourceInfo: String?
    public var dependsOn: [DscReportResourceNavigationProtocol?]?
    public var moduleName: String?
    public var moduleVersion: String?
    public var resourceName: String?
    public var error: String?
    public var status: String?
    public var durationInSeconds: Double?
    public var startDate: Date?

        enum CodingKeys: String, CodingKey {case resourceId = "resourceId"
        case sourceInfo = "sourceInfo"
        case dependsOn = "dependsOn"
        case moduleName = "moduleName"
        case moduleVersion = "moduleVersion"
        case resourceName = "resourceName"
        case error = "error"
        case status = "status"
        case durationInSeconds = "durationInSeconds"
        case startDate = "startDate"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.resourceId) {
        self.resourceId = try container.decode(String?.self, forKey: .resourceId)
    }
    if container.contains(.sourceInfo) {
        self.sourceInfo = try container.decode(String?.self, forKey: .sourceInfo)
    }
    if container.contains(.dependsOn) {
        self.dependsOn = try container.decode([DscReportResourceNavigationData?]?.self, forKey: .dependsOn)
    }
    if container.contains(.moduleName) {
        self.moduleName = try container.decode(String?.self, forKey: .moduleName)
    }
    if container.contains(.moduleVersion) {
        self.moduleVersion = try container.decode(String?.self, forKey: .moduleVersion)
    }
    if container.contains(.resourceName) {
        self.resourceName = try container.decode(String?.self, forKey: .resourceName)
    }
    if container.contains(.error) {
        self.error = try container.decode(String?.self, forKey: .error)
    }
    if container.contains(.status) {
        self.status = try container.decode(String?.self, forKey: .status)
    }
    if container.contains(.durationInSeconds) {
        self.durationInSeconds = try container.decode(Double?.self, forKey: .durationInSeconds)
    }
    if container.contains(.startDate) {
        self.startDate = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .startDate)), format: .dateTime)
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
    if self.resourceId != nil {try container.encode(self.resourceId, forKey: .resourceId)}
    if self.sourceInfo != nil {try container.encode(self.sourceInfo, forKey: .sourceInfo)}
    if self.dependsOn != nil {try container.encode(self.dependsOn as! [DscReportResourceNavigationData?]?, forKey: .dependsOn)}
    if self.moduleName != nil {try container.encode(self.moduleName, forKey: .moduleName)}
    if self.moduleVersion != nil {try container.encode(self.moduleVersion, forKey: .moduleVersion)}
    if self.resourceName != nil {try container.encode(self.resourceName, forKey: .resourceName)}
    if self.error != nil {try container.encode(self.error, forKey: .error)}
    if self.status != nil {try container.encode(self.status, forKey: .status)}
    if self.durationInSeconds != nil {try container.encode(self.durationInSeconds, forKey: .durationInSeconds)}
    if self.startDate != nil {
        try container.encode(DateConverter.toString(date: self.startDate!, format: .dateTime), forKey: .startDate)
    }
  }
}

extension DataFactory {
  public static func createDscReportResourceProtocol() -> DscReportResourceProtocol {
    return DscReportResourceData()
  }
}
