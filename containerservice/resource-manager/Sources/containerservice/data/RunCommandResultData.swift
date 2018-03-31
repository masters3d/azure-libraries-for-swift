// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct RunCommandResultData : RunCommandResultProtocol, OperationStatusResponseProtocol {
    public var name: String?
    public var status: String?
    public var startTime: Date?
    public var endTime: Date?
    public var error: ApiErrorProtocol?
    public var properties: RunCommandResultPropertiesProtocol?

        enum CodingKeys: String, CodingKey {case name = "name"
        case status = "status"
        case startTime = "startTime"
        case endTime = "endTime"
        case error = "error"
        case properties = "properties"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.name) {
        self.name = try container.decode(String?.self, forKey: .name)
    }
    if container.contains(.status) {
        self.status = try container.decode(String?.self, forKey: .status)
    }
    if container.contains(.startTime) {
        self.startTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .startTime)), format: .dateTime)
    }
    if container.contains(.endTime) {
        self.endTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .endTime)), format: .dateTime)
    }
    if container.contains(.error) {
        self.error = try container.decode(ApiErrorData?.self, forKey: .error)
    }
    if container.contains(.properties) {
        self.properties = try container.decode(RunCommandResultPropertiesData?.self, forKey: .properties)
    }
    if var pageDecoder = decoder as? PageDecoder {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self.name != nil { try container.encode(self.name, forKey: .name) }
    if self.status != nil { try container.encode(self.status, forKey: .status) }
    if self.startTime != nil {
        try container.encode(DateConverter.toString(date: self.startTime!, format: .dateTime), forKey: .startTime)
    }
    if self.endTime != nil {
        try container.encode(DateConverter.toString(date: self.endTime!, format: .dateTime), forKey: .endTime)
    }
    if self.error != nil { try container.encode(self.error as! ApiErrorData?, forKey: .error) }
    if self.properties != nil { try container.encode(self.properties as! RunCommandResultPropertiesData?, forKey: .properties) }
  }
}

extension DataFactory {
  public static func createRunCommandResultProtocol() -> RunCommandResultProtocol {
    return RunCommandResultData()
  }
}
