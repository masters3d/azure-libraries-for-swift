// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// AddDataLakeStoreWithAccountParametersProtocol is the parameters used to add a new Data Lake Store account while
// creating a new Data Lake Analytics account.
public protocol AddDataLakeStoreWithAccountParametersProtocol : Codable {
     var name: String { get set }
     var properties: AddDataLakeStorePropertiesProtocol? { get set }
}
