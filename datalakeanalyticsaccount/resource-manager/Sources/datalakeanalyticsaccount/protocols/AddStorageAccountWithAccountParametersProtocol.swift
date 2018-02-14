// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// AddStorageAccountWithAccountParametersProtocol is the parameters used to add a new Azure Storage account while
// creating a new Data Lake Analytics account.
public protocol AddStorageAccountWithAccountParametersProtocol : Codable {
     var name: String { get set }
     var properties: AddStorageAccountPropertiesProtocol { get set }
}
