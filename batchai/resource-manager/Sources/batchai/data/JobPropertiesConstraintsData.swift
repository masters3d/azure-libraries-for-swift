// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct JobPropertiesConstraintsData : JobPropertiesConstraintsProtocol {
    public var maxWallClockTime: String?

        enum CodingKeys: String, CodingKey {case maxWallClockTime = "maxWallClockTime"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.maxWallClockTime) {
        self.maxWallClockTime = try container.decode(String?.self, forKey: .maxWallClockTime)
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
    if self.maxWallClockTime != nil { try container.encode(self.maxWallClockTime, forKey: .maxWallClockTime) }
  }
}

extension DataFactory {
  public static func createJobPropertiesConstraintsProtocol() -> JobPropertiesConstraintsProtocol {
    return JobPropertiesConstraintsData()
  }
}
