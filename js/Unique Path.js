var should = require('should');

/*
A robot is located at the top-left corner of a m × n grid (marked ’Start’ in the diagram below).
*/

function uniquePath(m, n) {
  function helper(m, n, i, j, c) {
    if (i === m && j === n) {
      c.count++;
    } else {
      if (i<m) {
        helper(m, n, i+1, j, c);
      }

      if (j<n) {
        helper(m, n, i, j+1, c);
      }
    }
  }

  var c = {count: 0};
  helper(m-1, n-1, 0, 0, c);
  return c.count;
}

describe("Unique Path", function() {
  it("Test", function() {
    uniquePath(1,1).should.equal(1);
    uniquePath(2,2).should.equal(2);
    uniquePath(3,3).should.equal(6);
    uniquePath(3,7).should.equal(28);
  });

});