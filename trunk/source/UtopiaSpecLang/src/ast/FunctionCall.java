package ast;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.regex.Pattern;

import de.uni_freiburg.informatik.ultimate.boogie.ast.Declaration;
import de.uni_freiburg.informatik.ultimate.boogie.ast.Procedure;
import de.uni_freiburg.informatik.ultimate.boogie.ast.Unit;
import de.uni_freiburg.informatik.ultimate.ltl2aut.ast.AstNode;

public class FunctionCall extends AstNode {

	public String name;
	public Arguments args;
	
	public FunctionCall(final AstNode name, final AstNode args) throws Exception {
		this.name = name.toString();
		if (args instanceof Arguments) {
			this.args = (Arguments) args;
		} else {
			throw new Exception(args.toString() + " is not an instance of Arguments!");
		}
		this.addOutgoing(name);
		this.addOutgoing(args);
	}
	
	public FunctionCall (final AstNode name) {
		this.name = name.toString();
		this.addOutgoing(name);
		this.args = null;
	}
	
	private String convertVarName(String vname) {
		if (vname.equals("msg.sender")) {
			vname = "msgsender_MSG";
		} else if (vname.equals("msg.value")) {
			vname = "msgvalue_MSG";
		}
		return vname;
	}
	
	public Pattern getNamePattern() {
		String orig_name = this.name.toString();
		String[] split_name = orig_name.split("\\.");
		String patternStr = "^" + split_name[1];
		if(args != null) {
			int numArgs = args.getArgs().size();
		
			for(int i = 0; i < numArgs; i++) {
				patternStr += "~[a-zA-Z0-9_]+";
			}
		}
		
		patternStr += "_" + split_name[0] + "$";
		return Pattern.compile(patternStr);
	}
	
	public String functionName(Unit prog) {
		Pattern namePattern = getNamePattern();
		String fnName = null;
		for(Declaration decl : prog.getDeclarations()) {
			if(decl instanceof Procedure) {
				Procedure p = (Procedure) decl;
				String pname = p.getIdentifier();
				if(p.getBody() != null && namePattern.matcher(pname).matches()) {
					if(fnName == null) {
						fnName = pname;
					}
					else {
						throw new RuntimeException("Found multiple candidates for " + name + ": " + fnName + ", " + pname);
					}
				}
			}
		}
		
		if(fnName == null) {
			throw new RuntimeException("Could not find " + name);
		}
		
		return fnName;
		/*String[] split_name = this.name.split("\\.");
		String var_str = "";
		if (split_name.length != 2) {
			System.out.println("WARNING: " + this.name + " does not include class!");
			var_str += this.name;
		} else {
			var_str += split_name[1]; 

			var_str += "_" + split_name[0];
		}
 		return var_str;*/
	}
	
	public String getVarRep() {
		String[] split_name = this.name.split("\\.");
		String var_str = "";
		if (split_name.length != 2) {
			System.out.println("WARNING: " + this.name + " does not include class!");
			var_str += this.name;
		} else {
			var_str += split_name[1] + "_" + split_name[0]; 
		}
		
 		return var_str;
	}
	
	public String toString() {
		String var_str = "__" + this.getVarRep();
		if (this.args != null) {
			ArrayList<AstNode> arg_nodes = this.args.getArgs();
			for (AstNode n: arg_nodes) {
				var_str += "_" + this.convertVarName(n.toString());
			}
		}
		return var_str;
	}
	
	public String assignmentString(Unit prog, HashMap<String, String> arg_map, int currentEvent) {
//		String[] split_name = this.name.split("\\.");
		String func_str = "call " + this.toString() + Integer.toString(currentEvent) + " := " + this.functionName(prog) + "__success";
//		if (split_name.length != 2) {
//			System.out.println("WARNING: " + this.name + " does not include class!");
//			func_str += this.name;
//		} else {
//			func_str += split_name[1] + "_" + split_name[0] + "__success";
//		}
		func_str += "(this, msg.sender, msg.value";
		if (this.args != null) {
			ArrayList<AstNode> arg_nodes = this.args.getArgs();
			for (AstNode n: arg_nodes) {
				// func_str += ", " + this.convertVarName(n.toString());
				String arg_str = n.toString();
				// TODO: This will not handle expressions as arguments with to func_call
				if (arg_map.containsKey(arg_str)) {
					arg_str = arg_map.get(arg_str);
				}
				func_str += ", " + arg_str;
			}
		}
		func_str += ")";
		return func_str;
	}
	
	
}
