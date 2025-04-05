// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PointsSystem {
    mapping(address => uint) private points;

    function buy() public {
        points[msg.sender] += 100;
    }

    function checkPoints(address user) public view returns (uint) {
      return points[user];
    }

    function useCoupon(address user, uint couponValue) public {
        require(points[user] >= couponValue, "Not enough points");
        points[user] -= couponValue;
    }
}
