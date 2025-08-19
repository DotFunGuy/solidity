contract D
{
	uint x;
}

contract C
{
	function f(D c, D d) public pure {
		assert(c == d);
	}
}
// ====
// SMTEngine: all
// SMTIgnoreCex: yes
// ----
// Warning 9170: (83-89): Comparison of variables of contract type is deprecated and scheduled for removal in the next breaking version (0.9). Instead, use an explicit cast to address type.
// Warning 6328: (76-90): CHC: Assertion violation happens here.\nCounterexample:\n\nc = 0\nd = 1\n\nTransaction trace:\nC.constructor()\nC.f(0, 1)
