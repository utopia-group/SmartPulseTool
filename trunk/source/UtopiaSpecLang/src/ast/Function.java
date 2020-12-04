package ast;

import java.util.ArrayList;
import java.util.regex.Pattern;

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
	
	public Pattern getNamePattern() {
		String orig_name = this.name.toString();
		if (orig_name.equals("send")) {
			if (etype != null && etype.equals(EventType.fail)) {
				return Pattern.compile("^send__fail$");
			}
			return Pattern.compile("^send__success$");
		} else if (orig_name.equals("sendf")) {
			return Pattern.compile("^send__fail$");
		}
			
		String[] split_name = orig_name.split("\\.");
		String patternStr = "^" + split_name[1];
		int numArgs = args.getArgs().size();
		
		if(numArgs == 0) {
			patternStr += "(~[a-zA-Z0-9_]+)*";
		}
		else {
			for(int i = 0; i < numArgs; i++) {
				patternStr += "~[a-zA-Z0-9_]+";
			}
		}
		
		patternStr += "_" + split_name[0] + "$";
		return Pattern.compile(patternStr);
	}
}
