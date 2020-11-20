const token_transfer = artifacts.require("token_transfer");

/*
 * uncomment accounts to access the test accounts made available by the
 * Ethereum client
 * See docs: https://www.trufflesuite.com/docs/truffle/testing/writing-tests-in-javascript
 */
contract("token_transfer", function (/* accounts */) {
  it("should assert true", async function () {
    await token_transfer.deployed();
    return assert.isTrue(true);
  });
});
