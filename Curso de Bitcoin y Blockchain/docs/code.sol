pragma solidity ^0.4.16;

contract TokenERC20 {
  string public name;
  string public symbol;
  uint8 public decimals = 18;
  uint256 public totalSupply;
  mapping (address => uint256) public balanceOf;

  event Transfer(address from, address to, uint256 value);

  function TokenERC20(uint256 initalSupply, string tokenName, string tokenSymbol)public{
    totalSupply = initalSupply*10**uint256(decimals);
    name=tokenName;
    symbol = tokenSymbol;
    balanceOf[msg.sender]=totalSupply;
  }

  function _transfer(address _from, address _to, uint _value) internal {
    require(balanceOf[_from]>= _value);
    require(balanceOf[_to]+_value>balanceOf[_to]);
    uint previousBalances = balanceOf[_from] + balanceOf[_to];
    balanceOf[_from] -= _value;
    balanceOf [_to] += _value;
    Transfer(_from, _to, _value);
    assert(balanceOf[_from] + balanceOf[_to]==previousBalances);
  }

  function trasfer(address _to, uint256 _value) public {
    _transfer(msg.sender, _to, _value);
  }
}

interface TokenERC20Interface {
  function transfer(address _to, uint256 _value)public;
}

contract BasicContract{
  function transferToken()public {
    TokenERC20Interface token = TokenERC20Interface(0xca35b7d915458ef540ade6068dfe2f44e8fa733c);
    token.transfer(0x14723a09acff6d2a60dcdf7aa4aff308fddc160c,1);
  }
}