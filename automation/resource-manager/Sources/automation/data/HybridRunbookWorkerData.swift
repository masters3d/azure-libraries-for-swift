// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct HybridRunbookWorkerData : HybridRunbookWorkerProtocol {
    public var name: String?
    public var ip: String?
    public var registrationTime: Date?

        enum CodingKeys: String, CodingKey {case name = "name"
        case ip = "ip"
        case registrationTime = "registrationTime"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.name) {
        self.name = try container.decode(String?.self, forKey: .name)
    }
    if container.contains(.ip) {
        self.ip = try container.decode(String?.self, forKey: .ip)
    }
    if container.contains(.registrationTime) {
        self.registrationTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .registrationTime)), format: .dateTime)
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
    if self.ip != nil { try container.encode(self.ip, forKey: .ip) }
    if self.registrationTime != nil {
        try container.encode(DateConverter.toString(date: self.registrationTime!, format: .dateTime), forKey: .registrationTime)
    }
  }
}

extension DataFactory {
  public static func createHybridRunbookWorkerProtocol() -> HybridRunbookWorkerProtocol {
    return HybridRunbookWorkerData()
  }
}
