package ast;

import java.util.ArrayList;
import java.util.HashMap;

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
	
	public String functionName() {
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
		String var_str = "__" + this.functionName();
		if (this.args != null) {
			ArrayList<AstNode> arg_nodes = this.args.getArgs();
			for (AstNode n: arg_nodes) {
				var_str += "_" + this.convertVarName(n.toString());
			}
		}
		return var_str;
	}
	
	public String assignmentString(HashMap<String, String> arg_map, int currentEvent) {
//		String[] split_name = this.name.split("\\.");
		String func_str = "call " + this.toString() + Integer.toString(currentEvent) + " := " + this.functionName() + "__success";
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
