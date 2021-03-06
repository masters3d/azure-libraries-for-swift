// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// CreateTrustedIdProviderWithAccountParametersProtocol is the parameters used to create a new trusted identity
// provider while creating a new Data Lake Store account.
public protocol CreateTrustedIdProviderWithAccountParametersProtocol : Codable {
     var name: String { get set }
     var properties: CreateOrUpdateTrustedIdProviderPropertiesProtocol { get set }
}
