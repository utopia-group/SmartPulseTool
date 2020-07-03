package ast;

import de.uni_freiburg.informatik.ultimate.ltl2aut.ast.AstNode;

public class ExtendedComparativeOperator extends AstNode {
	
	ExtendedComparativeType type;
	
	public ExtendedComparativeOperator(final ExtendedComparativeType type, final AstNode left, final AstNode right) {
		this.addOutgoing(left);
		this.addOutgoing(right);
		this.type = type;
	}
	
	@Override
	public String toString() {
		String op = "??";
		switch (type) {
			case eq:
				op = "==";
				break;
			case gt:
				op = ">";
				break;
			case geq:
				op = ">=";
				break;
			case neq:
				op = "!=";
				break;
			case leq:
				op = "<=";
				break;
			case lt:
				op = "<";
				break;
			default:
				throw new IllegalArgumentException();
		}
		
		return getOutgoingNodes().get(0).toString() + op + getOutgoingNodes().get(1).toString();
	}
	
	public ExtendedComparativeType getType() {
		return type;
	}
}
