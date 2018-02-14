// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct AS2ValidationSettingsData : AS2ValidationSettingsProtocol {
    public var overrideMessageProperties: Bool
    public var encryptMessage: Bool
    public var signMessage: Bool
    public var compressMessage: Bool
    public var checkDuplicateMessage: Bool
    public var interchangeDuplicatesValidityDays: Int32
    public var checkCertificateRevocationListOnSend: Bool
    public var checkCertificateRevocationListOnReceive: Bool
    public var encryptionAlgorithm: EncryptionAlgorithmEnum
    public var signingAlgorithm: SigningAlgorithmEnum?

        enum CodingKeys: String, CodingKey {case overrideMessageProperties = "overrideMessageProperties"
        case encryptMessage = "encryptMessage"
        case signMessage = "signMessage"
        case compressMessage = "compressMessage"
        case checkDuplicateMessage = "checkDuplicateMessage"
        case interchangeDuplicatesValidityDays = "interchangeDuplicatesValidityDays"
        case checkCertificateRevocationListOnSend = "checkCertificateRevocationListOnSend"
        case checkCertificateRevocationListOnReceive = "checkCertificateRevocationListOnReceive"
        case encryptionAlgorithm = "encryptionAlgorithm"
        case signingAlgorithm = "signingAlgorithm"
        }

  public init(overrideMessageProperties: Bool, encryptMessage: Bool, signMessage: Bool, compressMessage: Bool, checkDuplicateMessage: Bool, interchangeDuplicatesValidityDays: Int32, checkCertificateRevocationListOnSend: Bool, checkCertificateRevocationListOnReceive: Bool, encryptionAlgorithm: EncryptionAlgorithmEnum)  {
    self.overrideMessageProperties = overrideMessageProperties
    self.encryptMessage = encryptMessage
    self.signMessage = signMessage
    self.compressMessage = compressMessage
    self.checkDuplicateMessage = checkDuplicateMessage
    self.interchangeDuplicatesValidityDays = interchangeDuplicatesValidityDays
    self.checkCertificateRevocationListOnSend = checkCertificateRevocationListOnSend
    self.checkCertificateRevocationListOnReceive = checkCertificateRevocationListOnReceive
    self.encryptionAlgorithm = encryptionAlgorithm
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.overrideMessageProperties = try container.decode(Bool.self, forKey: .overrideMessageProperties)
    self.encryptMessage = try container.decode(Bool.self, forKey: .encryptMessage)
    self.signMessage = try container.decode(Bool.self, forKey: .signMessage)
    self.compressMessage = try container.decode(Bool.self, forKey: .compressMessage)
    self.checkDuplicateMessage = try container.decode(Bool.self, forKey: .checkDuplicateMessage)
    self.interchangeDuplicatesValidityDays = try container.decode(Int32.self, forKey: .interchangeDuplicatesValidityDays)
    self.checkCertificateRevocationListOnSend = try container.decode(Bool.self, forKey: .checkCertificateRevocationListOnSend)
    self.checkCertificateRevocationListOnReceive = try container.decode(Bool.self, forKey: .checkCertificateRevocationListOnReceive)
    self.encryptionAlgorithm = try container.decode(EncryptionAlgorithmEnum.self, forKey: .encryptionAlgorithm)
    if container.contains(.signingAlgorithm) {
        self.signingAlgorithm = try container.decode(SigningAlgorithmEnum?.self, forKey: .signingAlgorithm)
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
    try container.encode(self.overrideMessageProperties, forKey: .overrideMessageProperties)
    try container.encode(self.encryptMessage, forKey: .encryptMessage)
    try container.encode(self.signMessage, forKey: .signMessage)
    try container.encode(self.compressMessage, forKey: .compressMessage)
    try container.encode(self.checkDuplicateMessage, forKey: .checkDuplicateMessage)
    try container.encode(self.interchangeDuplicatesValidityDays, forKey: .interchangeDuplicatesValidityDays)
    try container.encode(self.checkCertificateRevocationListOnSend, forKey: .checkCertificateRevocationListOnSend)
    try container.encode(self.checkCertificateRevocationListOnReceive, forKey: .checkCertificateRevocationListOnReceive)
    try container.encode(self.encryptionAlgorithm, forKey: .encryptionAlgorithm)
    if self.signingAlgorithm != nil {try container.encode(self.signingAlgorithm, forKey: .signingAlgorithm)}
  }
}

extension DataFactory {
  public static func createAS2ValidationSettingsProtocol(overrideMessageProperties: Bool, encryptMessage: Bool, signMessage: Bool, compressMessage: Bool, checkDuplicateMessage: Bool, interchangeDuplicatesValidityDays: Int32, checkCertificateRevocationListOnSend: Bool, checkCertificateRevocationListOnReceive: Bool, encryptionAlgorithm: EncryptionAlgorithmEnum) -> AS2ValidationSettingsProtocol {
    return AS2ValidationSettingsData(overrideMessageProperties: overrideMessageProperties, encryptMessage: encryptMessage, signMessage: signMessage, compressMessage: compressMessage, checkDuplicateMessage: checkDuplicateMessage, interchangeDuplicatesValidityDays: interchangeDuplicatesValidityDays, checkCertificateRevocationListOnSend: checkCertificateRevocationListOnSend, checkCertificateRevocationListOnReceive: checkCertificateRevocationListOnReceive, encryptionAlgorithm: encryptionAlgorithm)
  }
}
