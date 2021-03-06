// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct DiskDetailsData : DiskDetailsProtocol {
    public var maxSizeMB: Int64?
    public var vhdType: String?
    public var vhdId: String?
    public var vhdName: String?

        enum CodingKeys: String, CodingKey {case maxSizeMB = "maxSizeMB"
        case vhdType = "vhdType"
        case vhdId = "vhdId"
        case vhdName = "vhdName"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.maxSizeMB) {
        self.maxSizeMB = try container.decode(Int64?.self, forKey: .maxSizeMB)
    }
    if container.contains(.vhdType) {
        self.vhdType = try container.decode(String?.self, forKey: .vhdType)
    }
    if container.contains(.vhdId) {
        self.vhdId = try container.decode(String?.self, forKey: .vhdId)
    }
    if container.contains(.vhdName) {
        self.vhdName = try container.decode(String?.self, forKey: .vhdName)
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
    if self.maxSizeMB != nil {try container.encode(self.maxSizeMB, forKey: .maxSizeMB)}
    if self.vhdType != nil {try container.encode(self.vhdType, forKey: .vhdType)}
    if self.vhdId != nil {try container.encode(self.vhdId, forKey: .vhdId)}
    if self.vhdName != nil {try container.encode(self.vhdName, forKey: .vhdName)}
  }
}

extension DataFactory {
  public static func createDiskDetailsProtocol() -> DiskDetailsProtocol {
    return DiskDetailsData()
  }
}
