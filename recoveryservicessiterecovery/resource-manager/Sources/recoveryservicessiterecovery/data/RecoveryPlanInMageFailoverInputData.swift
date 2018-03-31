// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct RecoveryPlanInMageFailoverInputData : RecoveryPlanInMageFailoverInputProtocol, RecoveryPlanProviderSpecificFailoverInputProtocol {
    public var recoveryPointType: RpInMageRecoveryPointTypeEnum

        enum CodingKeys: String, CodingKey {case recoveryPointType = "recoveryPointType"
        }

  public init(recoveryPointType: RpInMageRecoveryPointTypeEnum)  {
    self.recoveryPointType = recoveryPointType
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.recoveryPointType = try container.decode(RpInMageRecoveryPointTypeEnum.self, forKey: .recoveryPointType)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.recoveryPointType, forKey: .recoveryPointType)
  }
}

extension DataFactory {
  public static func createRecoveryPlanInMageFailoverInputProtocol(recoveryPointType: RpInMageRecoveryPointTypeEnum) -> RecoveryPlanInMageFailoverInputProtocol {
    return RecoveryPlanInMageFailoverInputData(recoveryPointType: recoveryPointType)
  }
}
