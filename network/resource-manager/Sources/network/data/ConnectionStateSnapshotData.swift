// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ConnectionStateSnapshotData : ConnectionStateSnapshotProtocol {
    public var connectionState: ConnectionStateEnum?
    public var startTime: Date?
    public var endTime: Date?
    public var evaluationState: EvaluationStateEnum?
    public var hops: [ConnectivityHopProtocol?]?

        enum CodingKeys: String, CodingKey {case connectionState = "connectionState"
        case startTime = "startTime"
        case endTime = "endTime"
        case evaluationState = "evaluationState"
        case hops = "hops"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.connectionState) {
        self.connectionState = try container.decode(ConnectionStateEnum?.self, forKey: .connectionState)
    }
    if container.contains(.startTime) {
        self.startTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .startTime)), format: .dateTime)
    }
    if container.contains(.endTime) {
        self.endTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .endTime)), format: .dateTime)
    }
    if container.contains(.evaluationState) {
        self.evaluationState = try container.decode(EvaluationStateEnum?.self, forKey: .evaluationState)
    }
    if container.contains(.hops) {
        self.hops = try container.decode([ConnectivityHopData?]?.self, forKey: .hops)
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
    if self.connectionState != nil {try container.encode(self.connectionState, forKey: .connectionState)}
    if self.startTime != nil {
        try container.encode(DateConverter.toString(date: self.startTime!, format: .dateTime), forKey: .startTime)
    }
    if self.endTime != nil {
        try container.encode(DateConverter.toString(date: self.endTime!, format: .dateTime), forKey: .endTime)
    }
    if self.evaluationState != nil {try container.encode(self.evaluationState, forKey: .evaluationState)}
    if self.hops != nil {try container.encode(self.hops as! [ConnectivityHopData?]?, forKey: .hops)}
  }
}

extension DataFactory {
  public static func createConnectionStateSnapshotProtocol() -> ConnectionStateSnapshotProtocol {
    return ConnectionStateSnapshotData()
  }
}
