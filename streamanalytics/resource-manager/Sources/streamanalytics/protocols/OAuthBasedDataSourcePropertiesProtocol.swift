// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// OAuthBasedDataSourcePropertiesProtocol is the properties that are associated with data sources that use OAuth as
// their authentication model.
public protocol OAuthBasedDataSourcePropertiesProtocol : Codable {
     var refreshToken: String? { get set }
     var tokenUserPrincipalName: String? { get set }
     var tokenUserDisplayName: String? { get set }
}
