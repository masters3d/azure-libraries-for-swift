// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct MaxSizeCapabilityData : MaxSizeCapabilityProtocol {
    public var limit: Int64?
    public var unit: MaxSizeUnitsEnum?
    public var status: CapabilityStatusEnum?

        enum CodingKeys: String, CodingKey {case limit = "limit"
        case unit = "unit"
        case status = "status"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.limit) {
        self.limit = try container.decode(Int64?.self, forKey: .limit)
    }
    if container.contains(.unit) {
        self.unit = try container.decode(MaxSizeUnitsEnum?.self, forKey: .unit)
    }
    if container.contains(.status) {
        self.status = try container.decode(CapabilityStatusEnum?.self, forKey: .status)
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
    if self.limit != nil {try container.encode(self.limit, forKey: .limit)}
    if self.unit != nil {try container.encode(self.unit, forKey: .unit)}
    if self.status != nil {try container.encode(self.status, forKey: .status)}
  }
}

extension DataFactory {
  public static func createMaxSizeCapabilityProtocol() -> MaxSizeCapabilityProtocol {
    return MaxSizeCapabilityData()
  }
}
