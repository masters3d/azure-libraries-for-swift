// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ProcessThreadInfoPropertiesData : ProcessThreadInfoPropertiesProtocol {
    public var id: Int32?
    public var href: String?
    public var process: String?
    public var startAddress: String?
    public var currentPriority: Int32?
    public var priorityLevel: String?
    public var basePriority: Int32?
    public var startTime: Date?
    public var totalProcessorTime: String?
    public var userProcessorTime: String?
    public var priviledgedProcessorTime: String?
    public var state: String?
    public var waitReason: String?

        enum CodingKeys: String, CodingKey {case id = "id"
        case href = "href"
        case process = "process"
        case startAddress = "startAddress"
        case currentPriority = "currentPriority"
        case priorityLevel = "priorityLevel"
        case basePriority = "basePriority"
        case startTime = "startTime"
        case totalProcessorTime = "totalProcessorTime"
        case userProcessorTime = "userProcessorTime"
        case priviledgedProcessorTime = "priviledgedProcessorTime"
        case state = "state"
        case waitReason = "waitReason"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.id) {
        self.id = try container.decode(Int32?.self, forKey: .id)
    }
    if container.contains(.href) {
        self.href = try container.decode(String?.self, forKey: .href)
    }
    if container.contains(.process) {
        self.process = try container.decode(String?.self, forKey: .process)
    }
    if container.contains(.startAddress) {
        self.startAddress = try container.decode(String?.self, forKey: .startAddress)
    }
    if container.contains(.currentPriority) {
        self.currentPriority = try container.decode(Int32?.self, forKey: .currentPriority)
    }
    if container.contains(.priorityLevel) {
        self.priorityLevel = try container.decode(String?.self, forKey: .priorityLevel)
    }
    if container.contains(.basePriority) {
        self.basePriority = try container.decode(Int32?.self, forKey: .basePriority)
    }
    if container.contains(.startTime) {
        self.startTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .startTime)), format: .dateTime)
    }
    if container.contains(.totalProcessorTime) {
        self.totalProcessorTime = try container.decode(String?.self, forKey: .totalProcessorTime)
    }
    if container.contains(.userProcessorTime) {
        self.userProcessorTime = try container.decode(String?.self, forKey: .userProcessorTime)
    }
    if container.contains(.priviledgedProcessorTime) {
        self.priviledgedProcessorTime = try container.decode(String?.self, forKey: .priviledgedProcessorTime)
    }
    if container.contains(.state) {
        self.state = try container.decode(String?.self, forKey: .state)
    }
    if container.contains(.waitReason) {
        self.waitReason = try container.decode(String?.self, forKey: .waitReason)
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
    if self.id != nil {try container.encode(self.id, forKey: .id)}
    if self.href != nil {try container.encode(self.href, forKey: .href)}
    if self.process != nil {try container.encode(self.process, forKey: .process)}
    if self.startAddress != nil {try container.encode(self.startAddress, forKey: .startAddress)}
    if self.currentPriority != nil {try container.encode(self.currentPriority, forKey: .currentPriority)}
    if self.priorityLevel != nil {try container.encode(self.priorityLevel, forKey: .priorityLevel)}
    if self.basePriority != nil {try container.encode(self.basePriority, forKey: .basePriority)}
    if self.startTime != nil {
        try container.encode(DateConverter.toString(date: self.startTime!, format: .dateTime), forKey: .startTime)
    }
    if self.totalProcessorTime != nil {try container.encode(self.totalProcessorTime, forKey: .totalProcessorTime)}
    if self.userProcessorTime != nil {try container.encode(self.userProcessorTime, forKey: .userProcessorTime)}
    if self.priviledgedProcessorTime != nil {try container.encode(self.priviledgedProcessorTime, forKey: .priviledgedProcessorTime)}
    if self.state != nil {try container.encode(self.state, forKey: .state)}
    if self.waitReason != nil {try container.encode(self.waitReason, forKey: .waitReason)}
  }
}

extension DataFactory {
  public static func createProcessThreadInfoPropertiesProtocol() -> ProcessThreadInfoPropertiesProtocol {
    return ProcessThreadInfoPropertiesData()
  }
}
