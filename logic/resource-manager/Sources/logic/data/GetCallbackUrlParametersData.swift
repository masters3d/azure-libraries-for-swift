// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct GetCallbackUrlParametersData : GetCallbackUrlParametersProtocol {
    public var notAfter: Date?
    public var keyType: KeyTypeEnum?

        enum CodingKeys: String, CodingKey {case notAfter = "notAfter"
        case keyType = "keyType"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.notAfter) {
        self.notAfter = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .notAfter)), format: .dateTime)
    }
    if container.contains(.keyType) {
        self.keyType = try container.decode(KeyTypeEnum?.self, forKey: .keyType)
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
    if self.notAfter != nil {
        try container.encode(DateConverter.toString(date: self.notAfter!, format: .dateTime), forKey: .notAfter)
    }
    if self.keyType != nil {try container.encode(self.keyType, forKey: .keyType)}
  }
}

extension DataFactory {
  public static func createGetCallbackUrlParametersProtocol() -> GetCallbackUrlParametersProtocol {
    return GetCallbackUrlParametersData()
  }
}
