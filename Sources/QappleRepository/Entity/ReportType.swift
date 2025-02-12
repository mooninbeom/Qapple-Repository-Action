//
//  ReportType.swift
//  QappleRepository
//
//  Created by 김민준 on 2/12/25.
//

import Foundation

/// 신고 유형
public enum ReportType: String, CaseIterable, Sendable {
    case DISTRIBUTION_OF_ILLEGAL_PHOTOGRAPHS
    case COMMERCIAL_ADVERTISING_AND_SALES
    case INADEQUATE_BOARD_CHARACTER
    case ABUSIVE_LANGUAGE_AND_DISPARAGEMENT
    case POLITICAL_PARTY_OR_POLITICIAN_DEMEANING_AND_CAMPAIGNING
    case LEAK_IMPERSONATION_FRAUD
    case TRICK_TEASING_PLASTERED
    
    public var toString: String {
        switch self {
        case .DISTRIBUTION_OF_ILLEGAL_PHOTOGRAPHS: "불법촬영물 등의 유통"
        case .COMMERCIAL_ADVERTISING_AND_SALES: "상업적 광고 및 판매"
        case .INADEQUATE_BOARD_CHARACTER: "게시판 성격에 부적절함"
        case .ABUSIVE_LANGUAGE_AND_DISPARAGEMENT: "욕설/비하"
        case .POLITICAL_PARTY_OR_POLITICIAN_DEMEANING_AND_CAMPAIGNING: "정당/정치인 비하 및 선거운동"
        case .LEAK_IMPERSONATION_FRAUD: "유출/사칭/사기"
        case .TRICK_TEASING_PLASTERED: "낚시/놀림/도배"
        }
    }
}
