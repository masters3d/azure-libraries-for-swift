// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// RecoveryPlanCollectionProtocol is recovery plan collection details.
public protocol RecoveryPlanCollectionProtocol : Codable {
     var value: [RecoveryPlanProtocol?]? { get set }
     var _nextLink: String? { get set }
}
