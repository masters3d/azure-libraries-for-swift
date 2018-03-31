// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct EmailReceiverData : EmailReceiverProtocol {
    public var name: String
    public var emailAddress: String
    public var status: ReceiverStatusEnum?

        enum CodingKeys: String, CodingKey {case name = "name"
        case emailAddress = "emailAddress"
        case status = "status"
        }

  public init(name: String, emailAddress: String) {
    self.name = name
    self.emailAddress = emailAddress
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.name = try container.decode(String.self, forKey: .name)
    self.emailAddress = try container.decode(String.self, forKey: .emailAddress)
    if container.contains(.status) {
        self.status = try container.decode(ReceiverStatusEnum?.self, forKey: .status)
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
    try container.encode(self.name, forKey: .name)
    try container.encode(self.emailAddress, forKey: .emailAddress)
    if self.status != nil { try container.encode(self.status, forKey: .status) }
  }
}

extension DataFactory {
  public static func createEmailReceiverProtocol(name: String, emailAddress: String) -> EmailReceiverProtocol {
    return EmailReceiverData(name: name, emailAddress: emailAddress)
  }
}
