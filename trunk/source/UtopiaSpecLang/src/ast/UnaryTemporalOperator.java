package ast;

import de.uni_freiburg.informatik.ultimate.ltl2aut.ast.AstNode;

public class UnaryTemporalOperator extends AstNode {
	private final UnaryTemporalType type;
	
	public UnaryTemporalOperator(UnaryTemporalType type)
	{
		this.type = type;
	}
	
	public UnaryTemporalOperator(UnaryTemporalType type, AstNode e)
	{
		this.type = type;
		this.addOutgoing(e);
	}
	
	@Override
	public String toString()
	{
		String op = "??";
		if (type == UnaryTemporalType.always) {
			op = "[]";
		}
		if (type == UnaryTemporalType.eventually) {
			op = "<>";
		}
		if (type == UnaryTemporalType.next) {
			op = "X";
		}
		if (type == UnaryTemporalType.neg) {
			op = "!";
		}
		if (type == UnaryTemporalType.old) {
			op = "old";
		}
		if (type == UnaryTemporalType.sum) {
			op = "sum";
		}
	 	
		String result = "( ";
		
		if (op.equals("old")) {
			result += op + "(" + getOutgoingNodes().get(0).toString() + ")";
		} else if (op.equals("sum")){
			result += "sum["+ getOutgoingNodes().get(0).toString() + "]";			
		} else {
			result += op + getOutgoingNodes().get(0).toString();
		}
//		if (getOutgoingNodes().get(0) instanceof Event) {
//		String event = getOutgoingNodes().get(0).toString();
//		event = event.replace("AP(", "AP("+op);
//		result += event;
//	} else {
//		}
		
		result += " )";
		return result;
	}
	
	public UnaryTemporalType getType()
	{
		return type;
	}
}
