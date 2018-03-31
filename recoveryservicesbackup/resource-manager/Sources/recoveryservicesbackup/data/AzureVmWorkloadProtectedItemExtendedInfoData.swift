// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct AzureVmWorkloadProtectedItemExtendedInfoData : AzureVmWorkloadProtectedItemExtendedInfoProtocol {
    public var oldestRecoveryPoint: Date?
    public var recoveryPointCount: Int32?
    public var policyState: String?

        enum CodingKeys: String, CodingKey {case oldestRecoveryPoint = "oldestRecoveryPoint"
        case recoveryPointCount = "recoveryPointCount"
        case policyState = "policyState"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.oldestRecoveryPoint) {
        self.oldestRecoveryPoint = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .oldestRecoveryPoint)), format: .dateTime)
    }
    if container.contains(.recoveryPointCount) {
        self.recoveryPointCount = try container.decode(Int32?.self, forKey: .recoveryPointCount)
    }
    if container.contains(.policyState) {
        self.policyState = try container.decode(String?.self, forKey: .policyState)
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
    if self.oldestRecoveryPoint != nil {
        try container.encode(DateConverter.toString(date: self.oldestRecoveryPoint!, format: .dateTime), forKey: .oldestRecoveryPoint)
    }
    if self.recoveryPointCount != nil {try container.encode(self.recoveryPointCount, forKey: .recoveryPointCount)}
    if self.policyState != nil {try container.encode(self.policyState, forKey: .policyState)}
  }
}

extension DataFactory {
  public static func createAzureVmWorkloadProtectedItemExtendedInfoProtocol() -> AzureVmWorkloadProtectedItemExtendedInfoProtocol {
    return AzureVmWorkloadProtectedItemExtendedInfoData()
  }
}
