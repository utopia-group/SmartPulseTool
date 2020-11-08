package ast;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;

import de.uni_freiburg.informatik.ultimate.boogie.ast.Procedure;
import de.uni_freiburg.informatik.ultimate.boogie.ast.VarList;
import de.uni_freiburg.informatik.ultimate.ltl2aut.ast.AstNode;
import de.uni_freiburg.informatik.ultimate.ltl2aut.ast.Name;
import edu.utexas.cs.utopia.specLang.UtopiaSpecLangObserver;

public class Event extends AstNode {
	EventType type;
	Function func;
	AstNode constraint;
	int index = -1;
	private static Map<String, Integer> indices = new HashMap<String, Integer>();	
	
    public Event(EventType type, final AstNode constraint) throws Exception{
    	if (type == EventType.inv) {
    		String name = "CorralChoice";
    		if (!indices.containsKey(name)) {
    			indices.put(name, 0);				
    		}
    		this.index = indices.get(name);
    		indices.put(name, this.index+1);
    		this.type = type;
    		this.constraint = constraint;
    		this.addOutgoing(constraint);
    		this.func = null;
    	} else if (type == EventType.sent) {
    		// TODO: add in name initialization for sent constructor?
    		type = EventType.succ;
    		Arguments args = new Arguments();
    		Name n = new Name("send");
    		Function f = new Function(n, args);
    		this.init(EventType.succ, f, constraint);
    	} else {
    		throw new Exception("Invariant constructor invoked by non-invariant/sent type: " + this.type);    		
    	}

    }
    
	public Event(final EventType type, final AstNode func, final AstNode constraint) throws Exception {
		this.init(type, func, constraint);
	}
	
	public void init(final EventType type, final AstNode func, final AstNode constraint) throws Exception {
		this.type = type;
		if (func instanceof Function) {
			this.func = (Function) func;
			String name = "";
			if (this.func.name.toString().equals("*")) {
				name = "CorralChoice";
				this.func = null;
			} else {
				name = this.getName();
			}
			if (!indices.containsKey(name)) {
				indices.put(name, 0);				
			}
			this.index = indices.get(name);
			indices.put(name, this.index+1);
			if (this.func != null) {
				this.func.setEType(this.type);
			}
		} else {
			throw new Exception("The following is not a function: " + func.toString());
		}
		this.constraint = constraint;
		this.addOutgoing(func);
		this.addOutgoing(constraint);		
	}
	
	public void setFunc(String fname) throws Exception{
    	Arguments args = new Arguments();
    	String[] split = fname.split("_");
    	// Remove CorralChoice from string
    	split[0] = "";
    	fname = String.join("_", split).substring(1) + ".CorralChoice";
    	Name n = new Name(fname);
    	Function func = new Function(n, args);
    	this.func = func;
	}
	
	public boolean equals(Object o) {
		if (o instanceof Event) {
			Event o1 = (Event) o;
			boolean constraintEq = o1.getConstraint() == null;
			if (this.constraint != null) {
				if (o1.getConstraint() == null) {
					constraintEq = false;
				} else {
					constraintEq = this.constraint.toString().equals(o1.getConstraint().toString());
				}
			}
			return this.type.equals(o1.getType()) && constraintEq && this.func.equals(o1.getFunc());
		}
		return false;
	}
	
	public String getName() {
		String op = this.getOp();
		String name = this.func.getName();
		// Checks if index has been initialized
		if (this.index == -1) 
			return op + "_" + name;
		else
			return op + "_" + name + Integer.toString(this.index);
	}
	
	public String getOp() {
		String op = "??";
		switch (this.type) {
			case call:
				op = "call";
				break;
			case succ:
				op = "success";
				break;
			case oog:
				op = "out_of_gas";
				break;
			case rev:
				op = "revert";
				break;
			case req:
				op = "require";
				break;
			case ass:
				op = "assert";
				break;
			case fail:
				op = "fail";
				break;
			case call_succ:
				op = "callSuccess";
				break;
			case inv:
				op = "inv";
				break;
			default:
				throw new IllegalArgumentException();
		}
		return op;
	}
	
	private void adjustNames(AstNode node, Map<String, String> arg_map) {
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
	
	private boolean containsName(AstNode node, String name) {
		if (node instanceof Name) {
			Name n = (Name) node;
			if (name.equals(n.getIdent())) {
				return true;
			}
		}		
		for (AstNode n: node.getOutgoingNodes()) {
			if(containsName(n, name)) {
				return true;
			}
		}
		
		return false;
	}
	
	public ArrayList<String> getRealArgs(Procedure p) {
		ArrayList<String> real_args = new ArrayList<String>();
		ArrayList<AstNode> args = this.getFunc().getArgs().getArgs();
		if (args.size() > 0) {
			VarList[] pargs = p.getInParams();
			int pargs_i = pargs.length-1;
			for (int i = args.size()-1; i >= 0; i--) {
				real_args.add(pargs[pargs_i].getIdentifiers()[0]);
				pargs_i--;
			}
		}
		return real_args;
	}
	
	public AstNode getConstraint() {
		return this.constraint;
	}
	
	public AstNode getConstraint(Procedure p) {
		ArrayList<AstNode> args = this.getFunc().getArgs().getArgs();
		if (args.size() > 0 && this.constraint != null) {
			VarList[] pargs = p.getInParams();
			HashMap<String, String> arg_map = new HashMap<String, String>();
			int pargs_i = pargs.length-1;
			for (int i = args.size()-1; i >= 0; i--) {
				arg_map.put(args.get(i).toString(), pargs[pargs_i].getIdentifiers()[0]);
				pargs_i--;
			}
			this.adjustNames(this.constraint, arg_map);
		}
		
		if(this.constraint != null && p.getOutParams().length > 0) {
			if(p.getOutParams().length > 1) {
				throw new RuntimeException("Expected there to be a single list of returns");
			}
			
			VarList retList = p.getOutParams()[0];
			String[] idents = retList.getIdentifiers();
			
			if(idents.length == 1) {
				this.adjustNames(this.constraint, Collections.singletonMap("return", idents[0]));
			}
			else if(idents.length > 1) {
				throw new RuntimeException("Expected there to be a single return value");
			}
		}
		else if(this.constraint != null && p.getOutParams().length == 0 && containsName(this.constraint, "return")) {
			throw new RuntimeException("Variable 'return' cannot be used in a procedure that does not return a value");
		}
		
		return this.constraint;
	}
	
	public Function getFunc() {
		return this.func;
	}
	
	@Override
	public String toString() {
		String str = "AP(" + this.getName() + ")";
//		if (this.getOp().equals("inv")) {
//			str = "!"+str;
//		}
		return str;
	}
	
	public EventType getType() {
		return type;
	}
}
