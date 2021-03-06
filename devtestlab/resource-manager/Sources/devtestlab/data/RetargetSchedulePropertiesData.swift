// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct RetargetSchedulePropertiesData : RetargetSchedulePropertiesProtocol {
    public var currentResourceId: String?
    public var targetResourceId: String?

        enum CodingKeys: String, CodingKey {case currentResourceId = "currentResourceId"
        case targetResourceId = "targetResourceId"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.currentResourceId) {
        self.currentResourceId = try container.decode(String?.self, forKey: .currentResourceId)
    }
    if container.contains(.targetResourceId) {
        self.targetResourceId = try container.decode(String?.self, forKey: .targetResourceId)
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
    if self.currentResourceId != nil {try container.encode(self.currentResourceId, forKey: .currentResourceId)}
    if self.targetResourceId != nil {try container.encode(self.targetResourceId, forKey: .targetResourceId)}
  }
}

extension DataFactory {
  public static func createRetargetSchedulePropertiesProtocol() -> RetargetSchedulePropertiesProtocol {
    return RetargetSchedulePropertiesData()
  }
}
