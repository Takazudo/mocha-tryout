describe "Array2", ->
  describe "#indexOf()", ->
    it "should return -1 when the value is not present", ->
      expect([1, 2, 3].indexOf(5)).to.be -1

