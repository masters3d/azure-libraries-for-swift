// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct AS2AgreementContentData : AS2AgreementContentProtocol {
    public var receiveAgreement: AS2OneWayAgreementProtocol
    public var sendAgreement: AS2OneWayAgreementProtocol

        enum CodingKeys: String, CodingKey {case receiveAgreement = "receiveAgreement"
        case sendAgreement = "sendAgreement"
        }

  public init(receiveAgreement: AS2OneWayAgreementProtocol, sendAgreement: AS2OneWayAgreementProtocol) {
    self.receiveAgreement = receiveAgreement
    self.sendAgreement = sendAgreement
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.receiveAgreement = try container.decode(AS2OneWayAgreementData.self, forKey: .receiveAgreement)
    self.sendAgreement = try container.decode(AS2OneWayAgreementData.self, forKey: .sendAgreement)
    if var pageDecoder = decoder as? PageDecoder {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.receiveAgreement as! AS2OneWayAgreementData, forKey: .receiveAgreement)
    try container.encode(self.sendAgreement as! AS2OneWayAgreementData, forKey: .sendAgreement)
  }
}

extension DataFactory {
  public static func createAS2AgreementContentProtocol(receiveAgreement: AS2OneWayAgreementProtocol, sendAgreement: AS2OneWayAgreementProtocol) -> AS2AgreementContentProtocol {
    return AS2AgreementContentData(receiveAgreement: receiveAgreement, sendAgreement: sendAgreement)
  }
}
