package ast;

import de.uni_freiburg.informatik.ultimate.ltl2aut.ast.AstNode;

public class BinaryTemporalOperator extends AstNode {
	private final BinaryTemporalType type;
	
	AstNode left, right;
	
	public BinaryTemporalOperator(BinaryTemporalType type)
	{
		this.type = type;
	}
	
	public BinaryTemporalOperator(BinaryTemporalType type, AstNode left, AstNode right)
	{
		this.type = type;
		this.left = left;
		this.right = right;
		this.addOutgoing(left);
		this.addOutgoing(right);
	}
	
	@Override
	public String toString()
	{
		String op = " ?? ";
		
		if (type == BinaryTemporalType.seq) {
			UnaryTemporalOperator event_S2 = new UnaryTemporalOperator(UnaryTemporalType.eventually, this.right);
			UnaryTemporalOperator next_event_S2 = new UnaryTemporalOperator(UnaryTemporalType.next, event_S2);
			BinaryTemporalOperator and_lhs_rhs = new BinaryTemporalOperator(BinaryTemporalType.and, this.left, next_event_S2);
			return and_lhs_rhs.toString();			
//			UnaryTemporalOperator event_S2 = new UnaryTemporalOperator(UnaryTemporalType.eventually, this.right);
//			UnaryTemporalOperator neg_S2 = new UnaryTemporalOperator(UnaryTemporalType.neg, this.right);
//			BinaryTemporalOperator rel_lhs = new BinaryTemporalOperator(BinaryTemporalType.release, this.left, neg_S2);
//			BinaryTemporalOperator and_lhs_rhs = new BinaryTemporalOperator(BinaryTemporalType.and, rel_lhs, event_S2);
//			return and_lhs_rhs.toString();
		}		
		
		if (type == BinaryTemporalType.and) {
			op = " && ";
		}
		if (type == BinaryTemporalType.or) {
			op = " || ";
		}
		if (type == BinaryTemporalType.implies) {
			op = " ==> ";
		}
		if (type == BinaryTemporalType.until) {
			op = " U ";
		}
		if (type == BinaryTemporalType.release) {
			op = " R ";
		}
	 	
		String result = "( ";
		int i = 0;
		for(; i < getOutgoingNodes().size()-1; i++)
		{
			result += getOutgoingNodes().get(i).toString() + op;
		}
		result += getOutgoingNodes().get(i).toString();
		result += " )";
		return result;
	}
	
	public BinaryTemporalType getType()
	{
		return type;
	}
}
