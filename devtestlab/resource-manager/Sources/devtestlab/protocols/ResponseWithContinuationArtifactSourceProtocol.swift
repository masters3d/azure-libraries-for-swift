// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ResponseWithContinuationArtifactSourceProtocol is the response of a list operation.
public protocol ResponseWithContinuationArtifactSourceProtocol : Codable {
     var value: [ArtifactSourceProtocol?]? { get set }
     var _nextLink: String? { get set }
}
