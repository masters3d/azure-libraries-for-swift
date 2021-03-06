// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct TrafficManagerNameAvailabilityData : TrafficManagerNameAvailabilityProtocol {
    public var name: String?
    public var type: String?
    public var nameAvailable: Bool?
    public var reason: String?
    public var message: String?

        enum CodingKeys: String, CodingKey {case name = "name"
        case type = "type"
        case nameAvailable = "nameAvailable"
        case reason = "reason"
        case message = "message"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.name) {
        self.name = try container.decode(String?.self, forKey: .name)
    }
    if container.contains(.type) {
        self.type = try container.decode(String?.self, forKey: .type)
    }
    if container.contains(.nameAvailable) {
        self.nameAvailable = try container.decode(Bool?.self, forKey: .nameAvailable)
    }
    if container.contains(.reason) {
        self.reason = try container.decode(String?.self, forKey: .reason)
    }
    if container.contains(.message) {
        self.message = try container.decode(String?.self, forKey: .message)
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
    if self.name != nil {try container.encode(self.name, forKey: .name)}
    if self.type != nil {try container.encode(self.type, forKey: .type)}
    if self.nameAvailable != nil {try container.encode(self.nameAvailable, forKey: .nameAvailable)}
    if self.reason != nil {try container.encode(self.reason, forKey: .reason)}
    if self.message != nil {try container.encode(self.message, forKey: .message)}
  }
}

extension DataFactory {
  public static func createTrafficManagerNameAvailabilityProtocol() -> TrafficManagerNameAvailabilityProtocol {
    return TrafficManagerNameAvailabilityData()
  }
}
