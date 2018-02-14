// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ProtectedItemsQueryParameterData : ProtectedItemsQueryParameterProtocol {
    public var sourceFabricName: String?
    public var recoveryPlanName: String?
    public var vCenterName: String?

        enum CodingKeys: String, CodingKey {case sourceFabricName = "sourceFabricName"
        case recoveryPlanName = "recoveryPlanName"
        case vCenterName = "vCenterName"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.sourceFabricName) {
        self.sourceFabricName = try container.decode(String?.self, forKey: .sourceFabricName)
    }
    if container.contains(.recoveryPlanName) {
        self.recoveryPlanName = try container.decode(String?.self, forKey: .recoveryPlanName)
    }
    if container.contains(.vCenterName) {
        self.vCenterName = try container.decode(String?.self, forKey: .vCenterName)
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
    if self.sourceFabricName != nil {try container.encode(self.sourceFabricName, forKey: .sourceFabricName)}
    if self.recoveryPlanName != nil {try container.encode(self.recoveryPlanName, forKey: .recoveryPlanName)}
    if self.vCenterName != nil {try container.encode(self.vCenterName, forKey: .vCenterName)}
  }
}

extension DataFactory {
  public static func createProtectedItemsQueryParameterProtocol() -> ProtectedItemsQueryParameterProtocol {
    return ProtectedItemsQueryParameterData()
  }
}
