pragma solidity >=0.4.22 <0.6.0;
contract Ballot {

    mapping (address => address) user;
    mapping (address => address) user1;
    mapping (address => address) user2;
    mapping (address => address) user3;
    mapping (address => address) user4;
    mapping (address => address) user5;
    mapping (address => address) user6;
    mapping (address => address) user7;
    mapping (address => address) user8;
    mapping (address => address) user9;
    mapping (address => address) user10;
    mapping (address => address) user11;
    mapping (address => address) user12;
    mapping (address => address) user13;
    mapping (address => address) user14;
    mapping (address => address) user15;
    mapping (address => address) user16;
    mapping (address => address) user17;
    mapping (address => address) user18;
    mapping (address => address) user19;

    constructor() public {
        for (uint i=0; i<24; i++) {
            user[address(i)] = address(i);
            user1[address(i)] = address(i);
            user2[address(i)] = address(i);
            user3[address(i)] = address(i);
            user4[address(i)] = address(i);
            user5[address(i)] = address(i);
            user6[address(i)] = address(i);
            user7[address(i)] = address(i);
            user8[address(i)] = address(i);
            user9[address(i)] = address(i);
            user10[address(i)] = address(i);
            user11[address(i)] = address(i);
            user12[address(i)] = address(i);
            user13[address(i)] = address(i);
            user14[address(i)] = address(i);
            user15[address(i)] = address(i);
            user16[address(i)] = address(i);
            user17[address(i)] = address(i);
            user18[address(i)] = address(i);
            user19[address(i)] = address(i);
        }
    }

   function delegate(uint i) public view returns (uint) {
       return uint(user[address(i)]);
   }
}