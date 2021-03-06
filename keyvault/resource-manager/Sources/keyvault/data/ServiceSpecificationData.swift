// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ServiceSpecificationData : ServiceSpecificationProtocol {
    public var logSpecifications: [LogSpecificationProtocol?]?

        enum CodingKeys: String, CodingKey {case logSpecifications = "logSpecifications"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.logSpecifications) {
        self.logSpecifications = try container.decode([LogSpecificationData?]?.self, forKey: .logSpecifications)
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
    if self.logSpecifications != nil {try container.encode(self.logSpecifications as! [LogSpecificationData?]?, forKey: .logSpecifications)}
  }
}

extension DataFactory {
  public static func createServiceSpecificationProtocol() -> ServiceSpecificationProtocol {
    return ServiceSpecificationData()
  }
}
