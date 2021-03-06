// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ListAccountSasResponseData : ListAccountSasResponseProtocol {
    public var accountSasToken: String?

        enum CodingKeys: String, CodingKey {case accountSasToken = "accountSasToken"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.accountSasToken) {
        self.accountSasToken = try container.decode(String?.self, forKey: .accountSasToken)
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
    if self.accountSasToken != nil {try container.encode(self.accountSasToken, forKey: .accountSasToken)}
  }
}

extension DataFactory {
  public static func createListAccountSasResponseProtocol() -> ListAccountSasResponseProtocol {
    return ListAccountSasResponseData()
  }
}
