// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct AzureMachineLearningWebServiceOutputColumnData : AzureMachineLearningWebServiceOutputColumnProtocol {
    public var name: String?
    public var dataType: String?

        enum CodingKeys: String, CodingKey {case name = "name"
        case dataType = "dataType"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.name) {
        self.name = try container.decode(String?.self, forKey: .name)
    }
    if container.contains(.dataType) {
        self.dataType = try container.decode(String?.self, forKey: .dataType)
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
    if self.name != nil {try container.encode(self.name, forKey: .name)}
    if self.dataType != nil {try container.encode(self.dataType, forKey: .dataType)}
  }
}

extension DataFactory {
  public static func createAzureMachineLearningWebServiceOutputColumnProtocol() -> AzureMachineLearningWebServiceOutputColumnProtocol {
    return AzureMachineLearningWebServiceOutputColumnData()
  }
}
