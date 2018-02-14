// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ApplicationGatewayProbeHealthResponseMatchData : ApplicationGatewayProbeHealthResponseMatchProtocol {
    public var _body: String?
    public var statusCodes: [String]?

        enum CodingKeys: String, CodingKey {case _body = "body"
        case statusCodes = "statusCodes"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(._body) {
        self._body = try container.decode(String?.self, forKey: ._body)
    }
    if container.contains(.statusCodes) {
        self.statusCodes = try container.decode([String]?.self, forKey: .statusCodes)
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
    if self._body != nil {try container.encode(self._body, forKey: ._body)}
    if self.statusCodes != nil {try container.encode(self.statusCodes as! [String]?, forKey: .statusCodes)}
  }
}

extension DataFactory {
  public static func createApplicationGatewayProbeHealthResponseMatchProtocol() -> ApplicationGatewayProbeHealthResponseMatchProtocol {
    return ApplicationGatewayProbeHealthResponseMatchData()
  }
}
