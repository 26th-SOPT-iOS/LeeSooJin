//
//  NetworkResult.swift
//  sopt_ios_firstweek_homework2
//
//  Created by Soojin Lee on 2020/05/16.
//  Copyright © 2020 Suzie Lee. All rights reserved.
//

import Foundation

enum NetworkResult<T> {
    case success (T) //성공
    case requestErr(T) //요청에러
    case pathErr //경로에러
    case serverErr //서버내부에러
    case networkFail //네트워크연결실패
}
