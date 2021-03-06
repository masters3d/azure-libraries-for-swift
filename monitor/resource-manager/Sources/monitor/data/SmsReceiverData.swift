// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct SmsReceiverData : SmsReceiverProtocol {
    public var name: String
    public var countryCode: String
    public var phoneNumber: String
    public var status: ReceiverStatusEnum?

        enum CodingKeys: String, CodingKey {case name = "name"
        case countryCode = "countryCode"
        case phoneNumber = "phoneNumber"
        case status = "status"
        }

  public init(name: String, countryCode: String, phoneNumber: String)  {
    self.name = name
    self.countryCode = countryCode
    self.phoneNumber = phoneNumber
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.name = try container.decode(String.self, forKey: .name)
    self.countryCode = try container.decode(String.self, forKey: .countryCode)
    self.phoneNumber = try container.decode(String.self, forKey: .phoneNumber)
    if container.contains(.status) {
        self.status = try container.decode(ReceiverStatusEnum?.self, forKey: .status)
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
    try container.encode(self.name, forKey: .name)
    try container.encode(self.countryCode, forKey: .countryCode)
    try container.encode(self.phoneNumber, forKey: .phoneNumber)
    if self.status != nil {try container.encode(self.status, forKey: .status)}
  }
}

extension DataFactory {
  public static func createSmsReceiverProtocol(name: String, countryCode: String, phoneNumber: String) -> SmsReceiverProtocol {
    return SmsReceiverData(name: name, countryCode: countryCode, phoneNumber: phoneNumber)
  }
}
