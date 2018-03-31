// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// TaskIdRangeProtocol is the start and end of the range are inclusive. For example, if a range has start 9 and end 12,
// then it represents tasks '9', '10', '11' and '12'.
public protocol TaskIdRangeProtocol : Codable {
     var start: Int32 { get set }
     var end: Int32 { get set }
}
