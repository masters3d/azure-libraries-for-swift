// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct AzureWorkloadJobExtendedInfoData : AzureWorkloadJobExtendedInfoProtocol {
    public var tasksList: [AzureWorkloadJobTaskDetailsProtocol?]?
    public var propertyBag: [String:String]?
    public var dynamicErrorMessage: String?

        enum CodingKeys: String, CodingKey {case tasksList = "tasksList"
        case propertyBag = "propertyBag"
        case dynamicErrorMessage = "dynamicErrorMessage"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.tasksList) {
        self.tasksList = try container.decode([AzureWorkloadJobTaskDetailsData?]?.self, forKey: .tasksList)
    }
    if container.contains(.propertyBag) {
        self.propertyBag = try container.decode([String:String]?.self, forKey: .propertyBag)
    }
    if container.contains(.dynamicErrorMessage) {
        self.dynamicErrorMessage = try container.decode(String?.self, forKey: .dynamicErrorMessage)
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
    if self.tasksList != nil {try container.encode(self.tasksList as! [AzureWorkloadJobTaskDetailsData?]?, forKey: .tasksList)}
    if self.propertyBag != nil {try container.encode(self.propertyBag, forKey: .propertyBag)}
    if self.dynamicErrorMessage != nil {try container.encode(self.dynamicErrorMessage, forKey: .dynamicErrorMessage)}
  }
}

extension DataFactory {
  public static func createAzureWorkloadJobExtendedInfoProtocol() -> AzureWorkloadJobExtendedInfoProtocol {
    return AzureWorkloadJobExtendedInfoData()
  }
}
