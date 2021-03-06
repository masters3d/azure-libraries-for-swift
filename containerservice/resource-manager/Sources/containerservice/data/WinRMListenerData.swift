// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct WinRMListenerData : WinRMListenerProtocol {
    public var _protocol: ProtocolTypesEnum?
    public var certificateUrl: String?

        enum CodingKeys: String, CodingKey {case _protocol = "protocol"
        case certificateUrl = "certificateUrl"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(._protocol) {
        self._protocol = try container.decode(ProtocolTypesEnum?.self, forKey: ._protocol)
    }
    if container.contains(.certificateUrl) {
        self.certificateUrl = try container.decode(String?.self, forKey: .certificateUrl)
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
    if self._protocol != nil {try container.encode(self._protocol, forKey: ._protocol)}
    if self.certificateUrl != nil {try container.encode(self.certificateUrl, forKey: .certificateUrl)}
  }
}

extension DataFactory {
  public static func createWinRMListenerProtocol() -> WinRMListenerProtocol {
    return WinRMListenerData()
  }
}
