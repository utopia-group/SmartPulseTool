package ast;

import java.util.ArrayList;

import de.uni_freiburg.informatik.ultimate.ltl2aut.ast.AstNode;

public class Function extends AstNode {

	AstNode name;
	Arguments args;
	EventType etype;
	
	public Function(final AstNode name, final AstNode args) throws Exception {
		this.name = name;
		this.etype = null;
		if (args instanceof Arguments) {
			this.args = (Arguments) args;
		} else {
			throw new Exception(args.toString() + " is not an instance of Arguments!");
		}
		this.addOutgoing(name);
		this.addOutgoing(args);
	}
	
	public void setEType(EventType etype) {
		this.etype = etype;
	}
	
	public Arguments getArgs() {
		return this.args;
	}
	
	@Override
	public String toString() {
		return "";
	}
	
	public boolean equals(Object o) {
		if (o instanceof Function) {
			Function f1 = (Function) o;
			return this.getName().equals(f1.getName());
		}
		return false;
	}
	
	public String getName() {
		String orig_name = this.name.toString();
		if (orig_name.equals("send")) {
			if (etype != null && etype.equals(EventType.fail)) {
				return "send__fail";
			}
			return "send__success";
		} else if (orig_name.equals("sendf")) {
			return "send__fail";
		}
			
		String[] split_name = orig_name.split("\\.");
		if (split_name.length != 2) {
			System.out.println("WARNING: Name not given with contract name - " + orig_name);
		}
		return split_name[1] + "_" + split_name[0];
	}
}
