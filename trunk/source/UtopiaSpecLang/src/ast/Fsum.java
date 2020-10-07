package ast;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;

import de.uni_freiburg.informatik.ultimate.boogie.ast.Procedure;
import de.uni_freiburg.informatik.ultimate.boogie.ast.VarList;
import de.uni_freiburg.informatik.ultimate.ltl2aut.ast.AstNode;
import de.uni_freiburg.informatik.ultimate.ltl2aut.ast.Name;

public class Fsum extends AstNode {

	String var_name = "";
	Function func;
	BigInteger argnum;
	AstNode constraint;
	int index;
	
	// Keeps track of existing versions of this variable for naming purposes
	private static Map<String, Integer> indices = new HashMap<String, Integer>();	
	
	public Fsum(AstNode func, BigInteger argnum) throws Exception
	{
		if (!(func instanceof Function)) {
			/*Function f = (Function) func;
			this.func_name = f.getName();
			func_pattern = f.getNamePattern();
			func_args = f.getArgs().getArgs();*/
			throw new RuntimeException("Fsum must be on a function");
		}
		this.func = (Function) func;
//		// special case for send
//		if (func.toString().equals("send")) {
//			this.func_name = "send__success";
//		} else {
//			String[] split_name = func.toString().split("\\.");
//			if (split_name.length < 2) {
//				throw new Exception("Function name has no dot!");
//			}
//			this.func_name = split_name[1] + "_" + split_name[0];	
//		}
		this.argnum = argnum;
		this.constraint = null;
		
		this.initVarName();
		
		this.addOutgoing(func);
	}	

	public ArrayList<String> getRealArgs(Procedure p) {
		ArrayList<String> real_args = new ArrayList<String>();
		ArrayList<AstNode> func_args = func.getArgs().getArgs();
		if (func_args.size() > 0) {
			VarList[] pargs = p.getInParams();
			int pargs_i = pargs.length-1;
			for (int i = func_args.size()-1; i >= 0; i--) {
				real_args.add(pargs[pargs_i].getIdentifiers()[0]);
				pargs_i--;
			}
		}
		return real_args;
	}
	
	public Function getFunc() {
		return func;
	}
	
	/*public ArrayList<AstNode> getFuncArgs() {
		return this.func_args;
	}*/
	
	public Fsum(AstNode func, BigInteger argnum, AstNode constraint) throws Exception
	{
		this(func, argnum);
		this.constraint = constraint;
		
		this.addOutgoing(constraint);
	}	
	
	private void initVarName() {
		// Only call this once per fsum
		assert(this.var_name == "");
		
		String name = "fsum_" + func.getName() + "_" + this.argnum.toString() + "_";
		
		// Make sure every fsum has a unique name by appending identifier onto the end
		if (!indices.containsKey(name)) {
			indices.put(name, 0);				
		}
		this.index = indices.get(name);
		indices.put(name, this.index+1);
		
		this.var_name = name + Integer.toString(this.index);
	}
	
	public int getArgNum() {
		return this.argnum.intValue();
	}
	
	private void adjustNames(AstNode node, HashMap<String, String> arg_map) {
		if (node instanceof Name) {
			Name n = (Name) node;
			if (arg_map.containsKey(n.getIdent())) {
				n.setIdent(arg_map.get(n.getIdent()));
			}
		}		
		for (AstNode n: node.getOutgoingNodes()) {
			this.adjustNames(n, arg_map);
		}
	}
	
	public AstNode getConstraint(Procedure p) {
		ArrayList<AstNode> func_args = func.getArgs().getArgs();
		if (func_args.size() > 0 && this.constraint != null) {
			VarList[] pargs = p.getInParams();
			HashMap<String, String> arg_map = new HashMap<String, String>();
			int pargs_i = pargs.length-1;
			for (int i = func_args.size()-1; i >= 0; i--) {
				arg_map.put(func_args.get(i).toString(), pargs[pargs_i].getIdentifiers()[0]);
				pargs_i--;
			}
			this.adjustNames(this.constraint, arg_map);
		}
		return this.constraint;
	}
	
	/*public String getFuncName() {
		return this.func_name;
	}*/
	
	public String getVarName() {
		return this.var_name;
	}
	
	public String toString() {
		//return "AP(" + this.var_name + ")";
		return this.var_name;
	}

}
