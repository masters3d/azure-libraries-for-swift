// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ResourceRequestsData : ResourceRequestsProtocol {
    public var memoryInGB: Double
    public var cpu: Double

        enum CodingKeys: String, CodingKey {case memoryInGB = "memoryInGB"
        case cpu = "cpu"
        }

  public init(memoryInGB: Double, cpu: Double)  {
    self.memoryInGB = memoryInGB
    self.cpu = cpu
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.memoryInGB = try container.decode(Double.self, forKey: .memoryInGB)
    self.cpu = try container.decode(Double.self, forKey: .cpu)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.memoryInGB, forKey: .memoryInGB)
    try container.encode(self.cpu, forKey: .cpu)
  }
}

extension DataFactory {
  public static func createResourceRequestsProtocol(memoryInGB: Double, cpu: Double) -> ResourceRequestsProtocol {
    return ResourceRequestsData(memoryInGB: memoryInGB, cpu: cpu)
  }
}
