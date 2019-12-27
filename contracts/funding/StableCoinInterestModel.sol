/*

    Copyright 2019 The Hydro Protocol Foundation

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

*/

pragma solidity ^0.5.15;
pragma experimental ABIEncoderV2;

contract StableCoinInterestModel {
    uint256 constant BASE = 10**18;

    /**
     * @param borrowRatio a decimal with 18 decimals
     */
    function polynomialInterestModel(uint256 borrowRatio) external pure returns(uint256) {
        // 0.05 + 0.4 * r**4 + 0.55 * r**8

        // the valid range of borrowRatio is [0, 1]

        uint256 r = borrowRatio > BASE ? BASE : borrowRatio;
        uint256 r2 = r * r / BASE;
        uint256 r4 = r2 * r2 / BASE;
        uint256 r8 = r4 * r4 / BASE;

        return (5 * BASE / 100) + (4 * r4 / 10) + (55 * r8 / 100);
    }
}