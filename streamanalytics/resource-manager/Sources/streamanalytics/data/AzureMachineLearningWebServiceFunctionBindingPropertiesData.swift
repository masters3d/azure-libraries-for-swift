// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct AzureMachineLearningWebServiceFunctionBindingPropertiesData : AzureMachineLearningWebServiceFunctionBindingPropertiesProtocol {
    public var endpoint: String?
    public var apiKey: String?
    public var inputs: AzureMachineLearningWebServiceInputsProtocol?
    public var outputs: [AzureMachineLearningWebServiceOutputColumnProtocol?]?
    public var batchSize: Int32?

        enum CodingKeys: String, CodingKey {case endpoint = "endpoint"
        case apiKey = "apiKey"
        case inputs = "inputs"
        case outputs = "outputs"
        case batchSize = "batchSize"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.endpoint) {
        self.endpoint = try container.decode(String?.self, forKey: .endpoint)
    }
    if container.contains(.apiKey) {
        self.apiKey = try container.decode(String?.self, forKey: .apiKey)
    }
    if container.contains(.inputs) {
        self.inputs = try container.decode(AzureMachineLearningWebServiceInputsData?.self, forKey: .inputs)
    }
    if container.contains(.outputs) {
        self.outputs = try container.decode([AzureMachineLearningWebServiceOutputColumnData?]?.self, forKey: .outputs)
    }
    if container.contains(.batchSize) {
        self.batchSize = try container.decode(Int32?.self, forKey: .batchSize)
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
    if self.endpoint != nil {try container.encode(self.endpoint, forKey: .endpoint)}
    if self.apiKey != nil {try container.encode(self.apiKey, forKey: .apiKey)}
    if self.inputs != nil {try container.encode(self.inputs as! AzureMachineLearningWebServiceInputsData?, forKey: .inputs)}
    if self.outputs != nil {try container.encode(self.outputs as! [AzureMachineLearningWebServiceOutputColumnData?]?, forKey: .outputs)}
    if self.batchSize != nil {try container.encode(self.batchSize, forKey: .batchSize)}
  }
}

extension DataFactory {
  public static func createAzureMachineLearningWebServiceFunctionBindingPropertiesProtocol() -> AzureMachineLearningWebServiceFunctionBindingPropertiesProtocol {
    return AzureMachineLearningWebServiceFunctionBindingPropertiesData()
  }
}
