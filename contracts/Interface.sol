// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.4;

contract Counter {
    uint256 public count;

    function inrement() external {
        count++;
    }
}

interface Icounter {
    function count() external view returns (uint256);

    function increment() external;
}

contract MyContract {
    function incrementCounter(address _counter) external {
        Icounter(_counter).increment();
    }

    function getCount(address _counter) external view returns (uint256) {
        return Icounter(_counter).count();
    }
}

//Uniswap Example

interface UniswapV2Factory {
    function getPair(address tokenA, address tokenB)
        external
        view
        returns (address pair);
}

interface UniswapV2Pair {
    function getReserves()
        external
        view
        returns (
            uint112 reserve0,
            uint112 reserve1,
            uint32 blockTimestampLast
        );
}

contract UniswapExample {
    address private factory = 0xd96d8a6eA6Ff641Ca272bA4efb955aE6704d7994;
    address private dai = 0x63442EaD99Df0Cb6d7Df300bd3fEB1045fBf6F6F;
    address private weth = 0xE883F55adA54579022Fb9b255c3E89B591cB8C7c;

    function getTokenReserves() external view returns (uint256, uint256) {
        address pair = UniswapV2Factory(factory).getPair(dai, weth);
        (uint256 reserve0, uint256 reserve1, ) =
            UniswapV2Pair(pair).getReserves();
        return (reserve0, reserve1);
    }
}
