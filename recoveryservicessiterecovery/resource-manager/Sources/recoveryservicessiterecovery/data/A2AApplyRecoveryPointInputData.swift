// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct A2AApplyRecoveryPointInputData : A2AApplyRecoveryPointInputProtocol, ApplyRecoveryPointProviderSpecificInputProtocol {


  public init()  {
  }

  public init(from decoder: Decoder) throws {
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
  }
}

extension DataFactory {
  public static func createA2AApplyRecoveryPointInputProtocol() -> A2AApplyRecoveryPointInputProtocol {
    return A2AApplyRecoveryPointInputData()
  }
}
