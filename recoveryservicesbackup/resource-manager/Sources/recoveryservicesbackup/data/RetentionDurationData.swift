// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct RetentionDurationData : RetentionDurationProtocol {
    public var count: Int32?
    public var durationType: RetentionDurationTypeEnum?

        enum CodingKeys: String, CodingKey {case count = "count"
        case durationType = "durationType"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.count) {
        self.count = try container.decode(Int32?.self, forKey: .count)
    }
    if container.contains(.durationType) {
        self.durationType = try container.decode(RetentionDurationTypeEnum?.self, forKey: .durationType)
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
    if self.count != nil {try container.encode(self.count, forKey: .count)}
    if self.durationType != nil {try container.encode(self.durationType, forKey: .durationType)}
  }
}

extension DataFactory {
  public static func createRetentionDurationProtocol() -> RetentionDurationProtocol {
    return RetentionDurationData()
  }
}
