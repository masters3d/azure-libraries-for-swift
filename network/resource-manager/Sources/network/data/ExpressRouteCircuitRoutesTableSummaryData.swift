// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ExpressRouteCircuitRoutesTableSummaryData : ExpressRouteCircuitRoutesTableSummaryProtocol {
    public var neighbor: String?
    public var V: Int32?
    public var _as: Int32?
    public var upDown: String?
    public var statePfxRcd: String?

        enum CodingKeys: String, CodingKey {case neighbor = "neighbor"
        case V = "v"
        case _as = "as"
        case upDown = "upDown"
        case statePfxRcd = "statePfxRcd"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.neighbor) {
        self.neighbor = try container.decode(String?.self, forKey: .neighbor)
    }
    if container.contains(.V) {
        self.V = try container.decode(Int32?.self, forKey: .V)
    }
    if container.contains(._as) {
        self._as = try container.decode(Int32?.self, forKey: ._as)
    }
    if container.contains(.upDown) {
        self.upDown = try container.decode(String?.self, forKey: .upDown)
    }
    if container.contains(.statePfxRcd) {
        self.statePfxRcd = try container.decode(String?.self, forKey: .statePfxRcd)
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
    if self.neighbor != nil { try container.encode(self.neighbor, forKey: .neighbor) }
    if self.V != nil { try container.encode(self.V, forKey: .V) }
    if self._as != nil { try container.encode(self._as, forKey: ._as) }
    if self.upDown != nil { try container.encode(self.upDown, forKey: .upDown) }
    if self.statePfxRcd != nil { try container.encode(self.statePfxRcd, forKey: .statePfxRcd) }
  }
}

extension DataFactory {
  public static func createExpressRouteCircuitRoutesTableSummaryProtocol() -> ExpressRouteCircuitRoutesTableSummaryProtocol {
    return ExpressRouteCircuitRoutesTableSummaryData()
  }
}
