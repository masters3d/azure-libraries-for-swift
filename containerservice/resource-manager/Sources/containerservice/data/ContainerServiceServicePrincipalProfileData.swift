// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ContainerServiceServicePrincipalProfileData : ContainerServiceServicePrincipalProfileProtocol {
    public var clientId: String
    public var secret: String

        enum CodingKeys: String, CodingKey {case clientId = "clientId"
        case secret = "secret"
        }

  public init(clientId: String, secret: String)  {
    self.clientId = clientId
    self.secret = secret
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.clientId = try container.decode(String.self, forKey: .clientId)
    self.secret = try container.decode(String.self, forKey: .secret)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.clientId, forKey: .clientId)
    try container.encode(self.secret, forKey: .secret)
  }
}

extension DataFactory {
  public static func createContainerServiceServicePrincipalProfileProtocol(clientId: String, secret: String) -> ContainerServiceServicePrincipalProfileProtocol {
    return ContainerServiceServicePrincipalProfileData(clientId: clientId, secret: secret)
  }
}
