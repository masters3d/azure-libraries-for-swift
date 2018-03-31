// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct DayDetailsData : DayDetailsProtocol {
    public var time: String?

        enum CodingKeys: String, CodingKey {case time = "time"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.time) {
        self.time = try container.decode(String?.self, forKey: .time)
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
    if self.time != nil { try container.encode(self.time, forKey: .time) }
  }
}

extension DataFactory {
  public static func createDayDetailsProtocol() -> DayDetailsProtocol {
    return DayDetailsData()
  }
}
