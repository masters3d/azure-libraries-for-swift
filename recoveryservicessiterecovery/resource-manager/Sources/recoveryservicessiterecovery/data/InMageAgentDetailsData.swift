// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct InMageAgentDetailsData : InMageAgentDetailsProtocol {
    public var agentVersion: String?
    public var agentUpdateStatus: String?
    public var postUpdateRebootStatus: String?
    public var agentExpiryDate: Date?

        enum CodingKeys: String, CodingKey {case agentVersion = "agentVersion"
        case agentUpdateStatus = "agentUpdateStatus"
        case postUpdateRebootStatus = "postUpdateRebootStatus"
        case agentExpiryDate = "agentExpiryDate"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.agentVersion) {
        self.agentVersion = try container.decode(String?.self, forKey: .agentVersion)
    }
    if container.contains(.agentUpdateStatus) {
        self.agentUpdateStatus = try container.decode(String?.self, forKey: .agentUpdateStatus)
    }
    if container.contains(.postUpdateRebootStatus) {
        self.postUpdateRebootStatus = try container.decode(String?.self, forKey: .postUpdateRebootStatus)
    }
    if container.contains(.agentExpiryDate) {
        self.agentExpiryDate = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .agentExpiryDate)), format: .dateTime)
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
    if self.agentVersion != nil { try container.encode(self.agentVersion, forKey: .agentVersion) }
    if self.agentUpdateStatus != nil { try container.encode(self.agentUpdateStatus, forKey: .agentUpdateStatus) }
    if self.postUpdateRebootStatus != nil { try container.encode(self.postUpdateRebootStatus, forKey: .postUpdateRebootStatus) }
    if self.agentExpiryDate != nil {
        try container.encode(DateConverter.toString(date: self.agentExpiryDate!, format: .dateTime), forKey: .agentExpiryDate)
    }
  }
}

extension DataFactory {
  public static func createInMageAgentDetailsProtocol() -> InMageAgentDetailsProtocol {
    return InMageAgentDetailsData()
  }
}
