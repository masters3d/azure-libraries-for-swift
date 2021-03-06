// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ScheduleUpdatePropertiesData : ScheduleUpdatePropertiesProtocol {
    public var description: String?
    public var isEnabled: Bool?

        enum CodingKeys: String, CodingKey {case description = "description"
        case isEnabled = "isEnabled"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.description) {
        self.description = try container.decode(String?.self, forKey: .description)
    }
    if container.contains(.isEnabled) {
        self.isEnabled = try container.decode(Bool?.self, forKey: .isEnabled)
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
    if self.description != nil {try container.encode(self.description, forKey: .description)}
    if self.isEnabled != nil {try container.encode(self.isEnabled, forKey: .isEnabled)}
  }
}

extension DataFactory {
  public static func createScheduleUpdatePropertiesProtocol() -> ScheduleUpdatePropertiesProtocol {
    return ScheduleUpdatePropertiesData()
  }
}
