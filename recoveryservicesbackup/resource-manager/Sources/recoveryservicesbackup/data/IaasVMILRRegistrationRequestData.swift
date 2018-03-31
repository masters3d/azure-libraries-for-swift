// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct IaasVMILRRegistrationRequestData : IaasVMILRRegistrationRequestProtocol, ILRRequestProtocol {
    public var recoveryPointId: String?
    public var virtualMachineId: String?
    public var initiatorName: String?
    public var renewExistingRegistration: Bool?

        enum CodingKeys: String, CodingKey {case recoveryPointId = "recoveryPointId"
        case virtualMachineId = "virtualMachineId"
        case initiatorName = "initiatorName"
        case renewExistingRegistration = "renewExistingRegistration"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.recoveryPointId) {
        self.recoveryPointId = try container.decode(String?.self, forKey: .recoveryPointId)
    }
    if container.contains(.virtualMachineId) {
        self.virtualMachineId = try container.decode(String?.self, forKey: .virtualMachineId)
    }
    if container.contains(.initiatorName) {
        self.initiatorName = try container.decode(String?.self, forKey: .initiatorName)
    }
    if container.contains(.renewExistingRegistration) {
        self.renewExistingRegistration = try container.decode(Bool?.self, forKey: .renewExistingRegistration)
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
    if self.recoveryPointId != nil { try container.encode(self.recoveryPointId, forKey: .recoveryPointId) }
    if self.virtualMachineId != nil { try container.encode(self.virtualMachineId, forKey: .virtualMachineId) }
    if self.initiatorName != nil { try container.encode(self.initiatorName, forKey: .initiatorName) }
    if self.renewExistingRegistration != nil { try container.encode(self.renewExistingRegistration, forKey: .renewExistingRegistration) }
  }
}

extension DataFactory {
  public static func createIaasVMILRRegistrationRequestProtocol() -> IaasVMILRRegistrationRequestProtocol {
    return IaasVMILRRegistrationRequestData()
  }
}
