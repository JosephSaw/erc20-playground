const TokenZendR = artifacts.require('./TokenZendR.sol');

/*
 * uncomment accounts to access the test accounts made available by the
 * Ethereum client
 * See docs: https://www.trufflesuite.com/docs/truffle/testing/writing-tests-in-javascript
 */
contract("TokenZendR", function (/* accounts */) {
  it("deployed properly", async function () {
    await TokenZendR.deployed();
    return assert.isTrue(true);
  });

  it("should add new supported token", async function () {
    sender = await TokenZendR.new();
    await sender.addNewToken('OPEN', '0x69c4bb240cf05d51eeab6985bab35527d04a8c64');

    let address = await sender.tokens.call('OPEN');  
    return address.should.equal('0x69c4bb240cf05d51eeab6985bab35527d04a8c64');  
  });
});
