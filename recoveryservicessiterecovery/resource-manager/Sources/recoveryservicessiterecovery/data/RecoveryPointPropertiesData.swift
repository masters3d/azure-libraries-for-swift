// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct RecoveryPointPropertiesData : RecoveryPointPropertiesProtocol {
    public var recoveryPointTime: Date?
    public var recoveryPointType: String?
    public var providerSpecificDetails: ProviderSpecificRecoveryPointDetailsProtocol?

        enum CodingKeys: String, CodingKey {case recoveryPointTime = "recoveryPointTime"
        case recoveryPointType = "recoveryPointType"
        case providerSpecificDetails = "providerSpecificDetails"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.recoveryPointTime) {
        self.recoveryPointTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .recoveryPointTime)), format: .dateTime)
    }
    if container.contains(.recoveryPointType) {
        self.recoveryPointType = try container.decode(String?.self, forKey: .recoveryPointType)
    }
    if container.contains(.providerSpecificDetails) {
        self.providerSpecificDetails = try container.decode(ProviderSpecificRecoveryPointDetailsData?.self, forKey: .providerSpecificDetails)
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
    if self.recoveryPointTime != nil {
        try container.encode(DateConverter.toString(date: self.recoveryPointTime!, format: .dateTime), forKey: .recoveryPointTime)
    }
    if self.recoveryPointType != nil {try container.encode(self.recoveryPointType, forKey: .recoveryPointType)}
    if self.providerSpecificDetails != nil {try container.encode(self.providerSpecificDetails as! ProviderSpecificRecoveryPointDetailsData?, forKey: .providerSpecificDetails)}
  }
}

extension DataFactory {
  public static func createRecoveryPointPropertiesProtocol() -> RecoveryPointPropertiesProtocol {
    return RecoveryPointPropertiesData()
  }
}
