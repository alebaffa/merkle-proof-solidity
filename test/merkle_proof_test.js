const MerkleProofTest = artifacts.require("MerkleProofTest");

/*
 * uncomment accounts to access the test accounts made available by the
 * Ethereum client
 * See docs: https://www.trufflesuite.com/docs/truffle/testing/writing-tests-in-javascript
 */
contract("MerkleProofTest", function (/* accounts */) {
  it("should assert true", async function () {
    await MerkleProofTest.deployed();
    return assert.isTrue(true);
  });
});
