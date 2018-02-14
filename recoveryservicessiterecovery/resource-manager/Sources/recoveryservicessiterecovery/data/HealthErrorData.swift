// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct HealthErrorData : HealthErrorProtocol {
    public var errorSource: String?
    public var errorType: String?
    public var errorLevel: String?
    public var errorCode: String?
    public var errorMessage: String?
    public var possibleCauses: String?
    public var recommendedAction: String?
    public var creationTimeUtc: Date?
    public var recoveryProviderErrorMessage: String?
    public var entityId: String?
    public var childErrors: [HealthErrorProtocol?]?

        enum CodingKeys: String, CodingKey {case errorSource = "errorSource"
        case errorType = "errorType"
        case errorLevel = "errorLevel"
        case errorCode = "errorCode"
        case errorMessage = "errorMessage"
        case possibleCauses = "possibleCauses"
        case recommendedAction = "recommendedAction"
        case creationTimeUtc = "creationTimeUtc"
        case recoveryProviderErrorMessage = "recoveryProviderErrorMessage"
        case entityId = "entityId"
        case childErrors = "childErrors"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.errorSource) {
        self.errorSource = try container.decode(String?.self, forKey: .errorSource)
    }
    if container.contains(.errorType) {
        self.errorType = try container.decode(String?.self, forKey: .errorType)
    }
    if container.contains(.errorLevel) {
        self.errorLevel = try container.decode(String?.self, forKey: .errorLevel)
    }
    if container.contains(.errorCode) {
        self.errorCode = try container.decode(String?.self, forKey: .errorCode)
    }
    if container.contains(.errorMessage) {
        self.errorMessage = try container.decode(String?.self, forKey: .errorMessage)
    }
    if container.contains(.possibleCauses) {
        self.possibleCauses = try container.decode(String?.self, forKey: .possibleCauses)
    }
    if container.contains(.recommendedAction) {
        self.recommendedAction = try container.decode(String?.self, forKey: .recommendedAction)
    }
    if container.contains(.creationTimeUtc) {
        self.creationTimeUtc = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .creationTimeUtc)), format: .dateTime)
    }
    if container.contains(.recoveryProviderErrorMessage) {
        self.recoveryProviderErrorMessage = try container.decode(String?.self, forKey: .recoveryProviderErrorMessage)
    }
    if container.contains(.entityId) {
        self.entityId = try container.decode(String?.self, forKey: .entityId)
    }
    if container.contains(.childErrors) {
        self.childErrors = try container.decode([HealthErrorData?]?.self, forKey: .childErrors)
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
    if self.errorSource != nil {try container.encode(self.errorSource, forKey: .errorSource)}
    if self.errorType != nil {try container.encode(self.errorType, forKey: .errorType)}
    if self.errorLevel != nil {try container.encode(self.errorLevel, forKey: .errorLevel)}
    if self.errorCode != nil {try container.encode(self.errorCode, forKey: .errorCode)}
    if self.errorMessage != nil {try container.encode(self.errorMessage, forKey: .errorMessage)}
    if self.possibleCauses != nil {try container.encode(self.possibleCauses, forKey: .possibleCauses)}
    if self.recommendedAction != nil {try container.encode(self.recommendedAction, forKey: .recommendedAction)}
    if self.creationTimeUtc != nil {
        try container.encode(DateConverter.toString(date: self.creationTimeUtc!, format: .dateTime), forKey: .creationTimeUtc)
    }
    if self.recoveryProviderErrorMessage != nil {try container.encode(self.recoveryProviderErrorMessage, forKey: .recoveryProviderErrorMessage)}
    if self.entityId != nil {try container.encode(self.entityId, forKey: .entityId)}
    if self.childErrors != nil {try container.encode(self.childErrors as! [HealthErrorData?]?, forKey: .childErrors)}
  }
}

extension DataFactory {
  public static func createHealthErrorProtocol() -> HealthErrorProtocol {
    return HealthErrorData()
  }
}
