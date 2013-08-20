(function() {
  describe("Array", function() {
    return describe("#indexOf()", function() {
      return it("should return -1 when the value is not present", function() {
        return expect([1, 2, 3].indexOf(5)).to.be(-1);
      });
    });
  });

}).call(this);
