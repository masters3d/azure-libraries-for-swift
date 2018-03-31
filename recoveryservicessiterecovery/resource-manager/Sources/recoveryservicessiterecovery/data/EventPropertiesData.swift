// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct EventPropertiesData : EventPropertiesProtocol {
    public var eventCode: String?
    public var description: String?
    public var eventType: String?
    public var affectedObjectFriendlyName: String?
    public var severity: String?
    public var timeOfOccurrence: Date?
    public var fabricId: String?
    public var providerSpecificDetails: EventProviderSpecificDetailsProtocol?
    public var eventSpecificDetails: EventSpecificDetailsProtocol?
    public var healthErrors: [HealthErrorProtocol?]?

        enum CodingKeys: String, CodingKey {case eventCode = "eventCode"
        case description = "description"
        case eventType = "eventType"
        case affectedObjectFriendlyName = "affectedObjectFriendlyName"
        case severity = "severity"
        case timeOfOccurrence = "timeOfOccurrence"
        case fabricId = "fabricId"
        case providerSpecificDetails = "providerSpecificDetails"
        case eventSpecificDetails = "eventSpecificDetails"
        case healthErrors = "healthErrors"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.eventCode) {
        self.eventCode = try container.decode(String?.self, forKey: .eventCode)
    }
    if container.contains(.description) {
        self.description = try container.decode(String?.self, forKey: .description)
    }
    if container.contains(.eventType) {
        self.eventType = try container.decode(String?.self, forKey: .eventType)
    }
    if container.contains(.affectedObjectFriendlyName) {
        self.affectedObjectFriendlyName = try container.decode(String?.self, forKey: .affectedObjectFriendlyName)
    }
    if container.contains(.severity) {
        self.severity = try container.decode(String?.self, forKey: .severity)
    }
    if container.contains(.timeOfOccurrence) {
        self.timeOfOccurrence = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .timeOfOccurrence)), format: .dateTime)
    }
    if container.contains(.fabricId) {
        self.fabricId = try container.decode(String?.self, forKey: .fabricId)
    }
    if container.contains(.providerSpecificDetails) {
        self.providerSpecificDetails = try container.decode(EventProviderSpecificDetailsData?.self, forKey: .providerSpecificDetails)
    }
    if container.contains(.eventSpecificDetails) {
        self.eventSpecificDetails = try container.decode(EventSpecificDetailsData?.self, forKey: .eventSpecificDetails)
    }
    if container.contains(.healthErrors) {
        self.healthErrors = try container.decode([HealthErrorData?]?.self, forKey: .healthErrors)
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
    if self.eventCode != nil { try container.encode(self.eventCode, forKey: .eventCode) }
    if self.description != nil { try container.encode(self.description, forKey: .description) }
    if self.eventType != nil { try container.encode(self.eventType, forKey: .eventType) }
    if self.affectedObjectFriendlyName != nil { try container.encode(self.affectedObjectFriendlyName, forKey: .affectedObjectFriendlyName) }
    if self.severity != nil { try container.encode(self.severity, forKey: .severity) }
    if self.timeOfOccurrence != nil {
        try container.encode(DateConverter.toString(date: self.timeOfOccurrence!, format: .dateTime), forKey: .timeOfOccurrence)
    }
    if self.fabricId != nil { try container.encode(self.fabricId, forKey: .fabricId) }
    if self.providerSpecificDetails != nil { try container.encode(self.providerSpecificDetails as! EventProviderSpecificDetailsData?, forKey: .providerSpecificDetails) }
    if self.eventSpecificDetails != nil { try container.encode(self.eventSpecificDetails as! EventSpecificDetailsData?, forKey: .eventSpecificDetails) }
    if self.healthErrors != nil { try container.encode(self.healthErrors as! [HealthErrorData?]?, forKey: .healthErrors) }
  }
}

extension DataFactory {
  public static func createEventPropertiesProtocol() -> EventPropertiesProtocol {
    return EventPropertiesData()
  }
}
