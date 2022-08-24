// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.15;

import "foundry-huff/HuffDeployer.sol";
import "forge-std/Test.sol";
import "forge-std/console.sol";

contract StrawTest is Test {
    /// @dev Address of the SimpleStore contract.
    Straw public straw;

    /// @dev Setup the testing environment.
    function setUp() public {
        straw = Straw(HuffDeployer.deploy("Straw"));
    }

    function testGetName() public {
        assertEq("Fiddler", straw.name());
    }
}

interface Straw {
    function name() external returns (string memory);
}
