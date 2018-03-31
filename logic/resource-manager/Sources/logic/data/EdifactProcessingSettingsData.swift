// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct EdifactProcessingSettingsData : EdifactProcessingSettingsProtocol {
    public var maskSecurityInfo: Bool
    public var preserveInterchange: Bool
    public var suspendInterchangeOnError: Bool
    public var createEmptyXmlTagsForTrailingSeparators: Bool
    public var useDotAsDecimalSeparator: Bool

        enum CodingKeys: String, CodingKey {case maskSecurityInfo = "maskSecurityInfo"
        case preserveInterchange = "preserveInterchange"
        case suspendInterchangeOnError = "suspendInterchangeOnError"
        case createEmptyXmlTagsForTrailingSeparators = "createEmptyXmlTagsForTrailingSeparators"
        case useDotAsDecimalSeparator = "useDotAsDecimalSeparator"
        }

  public init(maskSecurityInfo: Bool, preserveInterchange: Bool, suspendInterchangeOnError: Bool, createEmptyXmlTagsForTrailingSeparators: Bool, useDotAsDecimalSeparator: Bool) {
    self.maskSecurityInfo = maskSecurityInfo
    self.preserveInterchange = preserveInterchange
    self.suspendInterchangeOnError = suspendInterchangeOnError
    self.createEmptyXmlTagsForTrailingSeparators = createEmptyXmlTagsForTrailingSeparators
    self.useDotAsDecimalSeparator = useDotAsDecimalSeparator
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.maskSecurityInfo = try container.decode(Bool.self, forKey: .maskSecurityInfo)
    self.preserveInterchange = try container.decode(Bool.self, forKey: .preserveInterchange)
    self.suspendInterchangeOnError = try container.decode(Bool.self, forKey: .suspendInterchangeOnError)
    self.createEmptyXmlTagsForTrailingSeparators = try container.decode(Bool.self, forKey: .createEmptyXmlTagsForTrailingSeparators)
    self.useDotAsDecimalSeparator = try container.decode(Bool.self, forKey: .useDotAsDecimalSeparator)
    if var pageDecoder = decoder as? PageDecoder {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.maskSecurityInfo, forKey: .maskSecurityInfo)
    try container.encode(self.preserveInterchange, forKey: .preserveInterchange)
    try container.encode(self.suspendInterchangeOnError, forKey: .suspendInterchangeOnError)
    try container.encode(self.createEmptyXmlTagsForTrailingSeparators, forKey: .createEmptyXmlTagsForTrailingSeparators)
    try container.encode(self.useDotAsDecimalSeparator, forKey: .useDotAsDecimalSeparator)
  }
}

extension DataFactory {
  public static func createEdifactProcessingSettingsProtocol(maskSecurityInfo: Bool, preserveInterchange: Bool, suspendInterchangeOnError: Bool, createEmptyXmlTagsForTrailingSeparators: Bool, useDotAsDecimalSeparator: Bool) -> EdifactProcessingSettingsProtocol {
    return EdifactProcessingSettingsData(maskSecurityInfo: maskSecurityInfo, preserveInterchange: preserveInterchange, suspendInterchangeOnError: suspendInterchangeOnError, createEmptyXmlTagsForTrailingSeparators: createEmptyXmlTagsForTrailingSeparators, useDotAsDecimalSeparator: useDotAsDecimalSeparator)
  }
}
