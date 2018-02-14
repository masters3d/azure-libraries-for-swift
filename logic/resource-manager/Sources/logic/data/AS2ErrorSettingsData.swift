// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct AS2ErrorSettingsData : AS2ErrorSettingsProtocol {
    public var suspendDuplicateMessage: Bool
    public var resendIfMdnNotReceived: Bool

        enum CodingKeys: String, CodingKey {case suspendDuplicateMessage = "suspendDuplicateMessage"
        case resendIfMdnNotReceived = "resendIfMdnNotReceived"
        }

  public init(suspendDuplicateMessage: Bool, resendIfMdnNotReceived: Bool)  {
    self.suspendDuplicateMessage = suspendDuplicateMessage
    self.resendIfMdnNotReceived = resendIfMdnNotReceived
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.suspendDuplicateMessage = try container.decode(Bool.self, forKey: .suspendDuplicateMessage)
    self.resendIfMdnNotReceived = try container.decode(Bool.self, forKey: .resendIfMdnNotReceived)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.suspendDuplicateMessage, forKey: .suspendDuplicateMessage)
    try container.encode(self.resendIfMdnNotReceived, forKey: .resendIfMdnNotReceived)
  }
}

extension DataFactory {
  public static func createAS2ErrorSettingsProtocol(suspendDuplicateMessage: Bool, resendIfMdnNotReceived: Bool) -> AS2ErrorSettingsProtocol {
    return AS2ErrorSettingsData(suspendDuplicateMessage: suspendDuplicateMessage, resendIfMdnNotReceived: resendIfMdnNotReceived)
  }
}
