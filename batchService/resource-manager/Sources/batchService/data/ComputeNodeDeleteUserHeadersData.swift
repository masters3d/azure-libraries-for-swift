// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ComputeNodeDeleteUserHeadersData : ComputeNodeDeleteUserHeadersProtocol {
    public var clientRequestId: String?
    public var requestId: String?

        enum CodingKeys: String, CodingKey {case clientRequestId = "client-request-id"
        case requestId = "request-id"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.clientRequestId) {
        self.clientRequestId = try container.decode(String?.self, forKey: .clientRequestId)
    }
    if container.contains(.requestId) {
        self.requestId = try container.decode(String?.self, forKey: .requestId)
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
    if self.clientRequestId != nil {try container.encode(self.clientRequestId, forKey: .clientRequestId)}
    if self.requestId != nil {try container.encode(self.requestId, forKey: .requestId)}
  }
}

extension DataFactory {
  public static func createComputeNodeDeleteUserHeadersProtocol() -> ComputeNodeDeleteUserHeadersProtocol {
    return ComputeNodeDeleteUserHeadersData()
  }
}
