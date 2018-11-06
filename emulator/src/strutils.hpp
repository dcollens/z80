//
//  strutils.hpp
//  zed-80-emulator
//
//  Created by Daniel Collens on 2018-10-26.
//  Copyright © 2018 The Head. All rights reserved.
//

#ifndef strutils_hpp
#define strutils_hpp

#include <string>
#include <iomanip>
#include <sstream>

template<typename T>
std::string to_hex(T i) {
    std::stringstream stream;
    stream << std::setfill('0') << std::setw(sizeof(T) * 2) << std::hex << uint64_t(i);
    return stream.str();
}

#endif /* strutils_hpp */