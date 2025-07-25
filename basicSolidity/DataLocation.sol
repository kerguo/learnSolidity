// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DataLocation{
    struct MyStruct{
        uint foo;
        string text;
    }

    mapping (address => MyStruct) public myStructs;

    function testDataLoc() external  {
        myStructs[msg.sender] = MyStruct(10, "test");

        MyStruct storage myStruct = myStructs[msg.sender];
        myStruct.foo = 20;
        myStruct.text = "test2";
        // myStructs[msg.sender] = myStruct;

       
       

    }

    function testDataMem() external  {
        myStructs[msg.sender] = MyStruct(10, "test");
         MyStruct memory myStruct2 = myStructs[msg.sender];
        myStruct2.foo = 30;
        myStruct2.text = "test3";
        // myStructs[msg.sender] = myStruct2;
    }

    // function testDataCall() external  {
    //     myStructs[msg.sender] = MyStruct(10, "test");
    //     MyStruct calldata myStruct2 = myStructs[msg.sender];
    //     myStruct2.foo = 30;
    //     myStruct2.text = "test3";
    //     // myStructs[msg.sender] = myStruct2;
    // }


}