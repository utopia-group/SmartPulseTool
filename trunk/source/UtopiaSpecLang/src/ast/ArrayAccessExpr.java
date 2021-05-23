package ast;

import java.util.List;

import de.uni_freiburg.informatik.ultimate.boogie.ast.Unit;
import de.uni_freiburg.informatik.ultimate.boogie.symboltable.BoogieSymbolTable;
import de.uni_freiburg.informatik.ultimate.ltl2aut.ast.AstNode;

public class ArrayAccessExpr extends AstNode {
	
	public ArrayAccessExpr(final AstNode name, final AstNode accessor) {
		this.addOutgoing(name);
		this.addOutgoing(accessor);
	}
	
	public ArrayAccessExpr(final AstNode name, final AstNode accessor1, final AstNode accessor2) {
		this.addOutgoing(name);
		this.addOutgoing(accessor1);
		this.addOutgoing(accessor2);		
	}
	
	public ArrayAccessExpr(final AstNode name, final AstNode accessor1, final AstNode accessor2, final AstNode accessor3) {
		this.addOutgoing(name);
		this.addOutgoing(accessor1);
		this.addOutgoing(accessor2);		
		this.addOutgoing(accessor3);
	}
	
	public String toString() {
		List<AstNode> nodes = this.getOutgoingNodes();
		String name = nodes.get(0).toString();
		String accessor = nodes.get(1).toString();
		String str = name + "[" + accessor + "]";
		if (nodes.size() >= 3) {
			str += "[" + nodes.get(2).toString() + "]";
		}
		if(nodes.size() >= 4) {
			str += "[" + nodes.get(3).toString() + "]";
		}
		return str;
	}
}
