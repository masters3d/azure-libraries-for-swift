// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct VnetValidationFailureDetailsPropertiesData : VnetValidationFailureDetailsPropertiesProtocol {
    public var failed: Bool?
    public var failedTests: [VnetValidationTestFailureProtocol?]?

        enum CodingKeys: String, CodingKey {case failed = "failed"
        case failedTests = "failedTests"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.failed) {
        self.failed = try container.decode(Bool?.self, forKey: .failed)
    }
    if container.contains(.failedTests) {
        self.failedTests = try container.decode([VnetValidationTestFailureData?]?.self, forKey: .failedTests)
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
    if self.failed != nil { try container.encode(self.failed, forKey: .failed) }
    if self.failedTests != nil { try container.encode(self.failedTests as! [VnetValidationTestFailureData?]?, forKey: .failedTests) }
  }
}

extension DataFactory {
  public static func createVnetValidationFailureDetailsPropertiesProtocol() -> VnetValidationFailureDetailsPropertiesProtocol {
    return VnetValidationFailureDetailsPropertiesData()
  }
}
