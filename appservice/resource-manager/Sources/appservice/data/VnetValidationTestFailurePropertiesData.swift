// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct VnetValidationTestFailurePropertiesData : VnetValidationTestFailurePropertiesProtocol {
    public var testName: String?
    public var details: String?

        enum CodingKeys: String, CodingKey {case testName = "testName"
        case details = "details"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.testName) {
        self.testName = try container.decode(String?.self, forKey: .testName)
    }
    if container.contains(.details) {
        self.details = try container.decode(String?.self, forKey: .details)
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
    if self.testName != nil { try container.encode(self.testName, forKey: .testName) }
    if self.details != nil { try container.encode(self.details, forKey: .details) }
  }
}

extension DataFactory {
  public static func createVnetValidationTestFailurePropertiesProtocol() -> VnetValidationTestFailurePropertiesProtocol {
    return VnetValidationTestFailurePropertiesData()
  }
}
