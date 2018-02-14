// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// UserBaseProtocol is
public protocol UserBaseProtocol : Codable {
     var additionalProperties: [String:[String: String?]]? { get set }
     var immutableId: String? { get set }
     var usageLocation: String? { get set }
     var givenName: String? { get set }
     var surname: String? { get set }
     var userType: UserTypeEnum? { get set }
}