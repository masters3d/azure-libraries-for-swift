// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct TestJobCreateParametersData : TestJobCreateParametersProtocol {
    public var parameters: [String:String]?
    public var runOn: String?

        enum CodingKeys: String, CodingKey {case parameters = "parameters"
        case runOn = "runOn"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.parameters) {
        self.parameters = try container.decode([String:String]?.self, forKey: .parameters)
    }
    if container.contains(.runOn) {
        self.runOn = try container.decode(String?.self, forKey: .runOn)
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
    if self.parameters != nil {try container.encode(self.parameters, forKey: .parameters)}
    if self.runOn != nil {try container.encode(self.runOn, forKey: .runOn)}
  }
}

extension DataFactory {
  public static func createTestJobCreateParametersProtocol() -> TestJobCreateParametersProtocol {
    return TestJobCreateParametersData()
  }
}
