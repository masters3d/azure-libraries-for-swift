// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// DataLakeStoreAccountInformationListResultProtocol is data Lake Store account list information.
public protocol DataLakeStoreAccountInformationListResultProtocol : Codable {
     var value: [DataLakeStoreAccountInformationProtocol?]? { get set }
     var _nextLink: String? { get set }
}
