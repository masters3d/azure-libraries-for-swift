// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct VMNicInputDetailsData : VMNicInputDetailsProtocol {
    public var nicId: String?
    public var recoveryVMSubnetName: String?
    public var replicaNicStaticIPAddress: String?
    public var selectionType: String?

        enum CodingKeys: String, CodingKey {case nicId = "nicId"
        case recoveryVMSubnetName = "recoveryVMSubnetName"
        case replicaNicStaticIPAddress = "replicaNicStaticIPAddress"
        case selectionType = "selectionType"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.nicId) {
        self.nicId = try container.decode(String?.self, forKey: .nicId)
    }
    if container.contains(.recoveryVMSubnetName) {
        self.recoveryVMSubnetName = try container.decode(String?.self, forKey: .recoveryVMSubnetName)
    }
    if container.contains(.replicaNicStaticIPAddress) {
        self.replicaNicStaticIPAddress = try container.decode(String?.self, forKey: .replicaNicStaticIPAddress)
    }
    if container.contains(.selectionType) {
        self.selectionType = try container.decode(String?.self, forKey: .selectionType)
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
    if self.nicId != nil {try container.encode(self.nicId, forKey: .nicId)}
    if self.recoveryVMSubnetName != nil {try container.encode(self.recoveryVMSubnetName, forKey: .recoveryVMSubnetName)}
    if self.replicaNicStaticIPAddress != nil {try container.encode(self.replicaNicStaticIPAddress, forKey: .replicaNicStaticIPAddress)}
    if self.selectionType != nil {try container.encode(self.selectionType, forKey: .selectionType)}
  }
}

extension DataFactory {
  public static func createVMNicInputDetailsProtocol() -> VMNicInputDetailsProtocol {
    return VMNicInputDetailsData()
  }
}
