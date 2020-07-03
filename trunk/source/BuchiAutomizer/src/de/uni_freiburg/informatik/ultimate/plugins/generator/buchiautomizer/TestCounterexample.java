package de.uni_freiburg.informatik.ultimate.plugins.generator.buchiautomizer;

import java.io.FileWriter;
import java.io.IOException;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.stream.Collectors;

import de.uni_freiburg.informatik.ultimate.logic.Model;
import de.uni_freiburg.informatik.ultimate.logic.Term;
import de.uni_freiburg.informatik.ultimate.logic.TermVariable;
import de.uni_freiburg.informatik.ultimate.logic.Script.LBool;
import de.uni_freiburg.informatik.ultimate.modelcheckerutils.cfg.CfgSmtToolkit;
import de.uni_freiburg.informatik.ultimate.modelcheckerutils.cfg.IIcfgSymbolTable;
import de.uni_freiburg.informatik.ultimate.modelcheckerutils.cfg.IcfgProgramExecution;
import de.uni_freiburg.informatik.ultimate.modelcheckerutils.cfg.structure.IIcfgCallTransition;
import de.uni_freiburg.informatik.ultimate.modelcheckerutils.cfg.structure.IIcfgReturnTransition;
import de.uni_freiburg.informatik.ultimate.modelcheckerutils.cfg.structure.IIcfgSummaryTransition;
import de.uni_freiburg.informatik.ultimate.modelcheckerutils.cfg.structure.IIcfgTransition;
import de.uni_freiburg.informatik.ultimate.modelcheckerutils.cfg.structure.IcfgEdge;
import de.uni_freiburg.informatik.ultimate.modelcheckerutils.cfg.transitions.UnmodifiableTransFormula;
import de.uni_freiburg.informatik.ultimate.modelcheckerutils.cfg.variables.ILocalProgramVar;
import de.uni_freiburg.informatik.ultimate.modelcheckerutils.cfg.variables.IProgramNonOldVar;
import de.uni_freiburg.informatik.ultimate.modelcheckerutils.cfg.variables.IProgramVar;
import de.uni_freiburg.informatik.ultimate.plugins.generator.rcfgbuilder.cfg.Call;
import de.uni_freiburg.informatik.ultimate.plugins.generator.rcfgbuilder.cfg.Return;
import de.uni_freiburg.informatik.ultimate.plugins.generator.rcfgbuilder.cfg.StatementSequence;
import de.uni_freiburg.informatik.ultimate.plugins.generator.rcfgbuilder.cfg.Summary;
import de.uni_freiburg.informatik.ultimate.plugins.generator.traceabstraction.Activator;
import de.uni_freiburg.informatik.ultimate.plugins.generator.traceabstraction.predicates.PredicateFactory;
import de.uni_freiburg.informatik.ultimate.plugins.generator.traceabstraction.singletracecheck.AnnotateAndAssertCodeBlocks;
import de.uni_freiburg.informatik.ultimate.plugins.generator.traceabstraction.singletracecheck.AnnotateAndAsserter;
import de.uni_freiburg.informatik.ultimate.plugins.generator.traceabstraction.singletracecheck.DefaultTransFormulas;
import de.uni_freiburg.informatik.ultimate.plugins.generator.traceabstraction.singletracecheck.NestedFormulas;
import de.uni_freiburg.informatik.ultimate.plugins.generator.traceabstraction.singletracecheck.NestedSsaBuilder;
import de.uni_freiburg.informatik.ultimate.plugins.generator.traceabstraction.singletracecheck.TraceCheckStatisticsGenerator;
import de.uni_freiburg.informatik.ultimate.util.CoreUtil;
import de.uni_freiburg.informatik.ultimate.util.datastructures.BidirectionalMap;
import de.uni_freiburg.informatik.ultimate.util.datastructures.relation.Pair;
import de.uni_freiburg.informatik.ultimate.automata.nestedword.NestedRun;
import de.uni_freiburg.informatik.ultimate.automata.nestedword.NestedWord;
import de.uni_freiburg.informatik.ultimate.automata.nestedword.buchi.NestedLassoRun;
import de.uni_freiburg.informatik.ultimate.boogie.annotation.LTLPropertyCheck;
import de.uni_freiburg.informatik.ultimate.boogie.ast.ASTType;
import de.uni_freiburg.informatik.ultimate.boogie.ast.ArrayAccessExpression;
import de.uni_freiburg.informatik.ultimate.boogie.ast.ArrayLHS;
import de.uni_freiburg.informatik.ultimate.boogie.ast.ArrayStoreExpression;
import de.uni_freiburg.informatik.ultimate.boogie.ast.ArrayType;
import de.uni_freiburg.informatik.ultimate.boogie.ast.AssertStatement;
import de.uni_freiburg.informatik.ultimate.boogie.ast.AssignmentStatement;
import de.uni_freiburg.informatik.ultimate.boogie.ast.AssumeStatement;
import de.uni_freiburg.informatik.ultimate.boogie.ast.AtomicStatement;
import de.uni_freiburg.informatik.ultimate.boogie.ast.Attribute;
import de.uni_freiburg.informatik.ultimate.boogie.ast.Axiom;
import de.uni_freiburg.informatik.ultimate.boogie.ast.BinaryExpression;
import de.uni_freiburg.informatik.ultimate.boogie.ast.BinaryExpression.Operator;
import de.uni_freiburg.informatik.ultimate.core.lib.results.LTLInfiniteCounterExampleResult;
import de.uni_freiburg.informatik.ultimate.core.model.models.ILocation;
import de.uni_freiburg.informatik.ultimate.core.model.results.IResult;
import de.uni_freiburg.informatik.ultimate.core.model.services.IBacktranslationService;
import de.uni_freiburg.informatik.ultimate.core.model.services.ILogger;
import de.uni_freiburg.informatik.ultimate.core.model.services.IUltimateServiceProvider;
import de.uni_freiburg.informatik.ultimate.core.model.translation.IProgramExecution.ProgramState;
import de.uni_freiburg.informatik.ultimate.boogie.ast.BitVectorAccessExpression;
import de.uni_freiburg.informatik.ultimate.boogie.ast.BitvecLiteral;
import de.uni_freiburg.informatik.ultimate.boogie.ast.Body;
import de.uni_freiburg.informatik.ultimate.boogie.ast.BoogieASTNode;
import de.uni_freiburg.informatik.ultimate.boogie.ast.BooleanLiteral;
import de.uni_freiburg.informatik.ultimate.boogie.ast.BreakStatement;
import de.uni_freiburg.informatik.ultimate.boogie.ast.CallStatement;
import de.uni_freiburg.informatik.ultimate.boogie.ast.ConstDeclaration;
import de.uni_freiburg.informatik.ultimate.boogie.ast.Declaration;
import de.uni_freiburg.informatik.ultimate.boogie.ast.EnsuresSpecification;
import de.uni_freiburg.informatik.ultimate.boogie.ast.Expression;
import de.uni_freiburg.informatik.ultimate.boogie.ast.ForkStatement;
import de.uni_freiburg.informatik.ultimate.boogie.ast.FunctionApplication;
import de.uni_freiburg.informatik.ultimate.boogie.ast.FunctionDeclaration;
import de.uni_freiburg.informatik.ultimate.boogie.ast.GeneratedBoogieAstVisitor;
import de.uni_freiburg.informatik.ultimate.boogie.ast.GotoStatement;
import de.uni_freiburg.informatik.ultimate.boogie.ast.HavocStatement;
import de.uni_freiburg.informatik.ultimate.boogie.ast.IdentifierExpression;
import de.uni_freiburg.informatik.ultimate.boogie.ast.IfStatement;
import de.uni_freiburg.informatik.ultimate.boogie.ast.IfThenElseExpression;
import de.uni_freiburg.informatik.ultimate.boogie.ast.IntegerLiteral;
import de.uni_freiburg.informatik.ultimate.boogie.ast.JoinStatement;
import de.uni_freiburg.informatik.ultimate.boogie.ast.Label;
import de.uni_freiburg.informatik.ultimate.boogie.ast.LeftHandSide;
import de.uni_freiburg.informatik.ultimate.boogie.ast.LoopInvariantSpecification;
import de.uni_freiburg.informatik.ultimate.boogie.ast.ModifiesSpecification;
import de.uni_freiburg.informatik.ultimate.boogie.ast.NamedAttribute;
import de.uni_freiburg.informatik.ultimate.boogie.ast.NamedType;
import de.uni_freiburg.informatik.ultimate.boogie.ast.ParentEdge;
import de.uni_freiburg.informatik.ultimate.boogie.ast.PrimitiveType;
import de.uni_freiburg.informatik.ultimate.boogie.ast.Procedure;
import de.uni_freiburg.informatik.ultimate.boogie.ast.Project;
import de.uni_freiburg.informatik.ultimate.boogie.ast.QuantifierExpression;
import de.uni_freiburg.informatik.ultimate.boogie.ast.RealLiteral;
import de.uni_freiburg.informatik.ultimate.boogie.ast.RequiresSpecification;
import de.uni_freiburg.informatik.ultimate.boogie.ast.ReturnStatement;
import de.uni_freiburg.informatik.ultimate.boogie.ast.Specification;
import de.uni_freiburg.informatik.ultimate.boogie.ast.Statement;
import de.uni_freiburg.informatik.ultimate.boogie.ast.StringLiteral;
import de.uni_freiburg.informatik.ultimate.boogie.ast.StructAccessExpression;
import de.uni_freiburg.informatik.ultimate.boogie.ast.StructConstructor;
import de.uni_freiburg.informatik.ultimate.boogie.ast.StructLHS;
import de.uni_freiburg.informatik.ultimate.boogie.ast.StructType;
import de.uni_freiburg.informatik.ultimate.boogie.ast.Trigger;
import de.uni_freiburg.informatik.ultimate.boogie.ast.TypeDeclaration;
import de.uni_freiburg.informatik.ultimate.boogie.ast.UnaryExpression;
import de.uni_freiburg.informatik.ultimate.boogie.ast.Unit;
import de.uni_freiburg.informatik.ultimate.boogie.ast.VarList;
import de.uni_freiburg.informatik.ultimate.boogie.ast.VariableDeclaration;
import de.uni_freiburg.informatik.ultimate.boogie.ast.VariableLHS;
import de.uni_freiburg.informatik.ultimate.boogie.ast.WhileStatement;
import de.uni_freiburg.informatik.ultimate.boogie.ast.WildcardExpression;
import de.uni_freiburg.informatik.ultimate.boogie.type.BoogieType;
import de.uni_freiburg.informatik.ultimate.modelcheckerutils.boogie.Boogie2SMT;
import de.uni_freiburg.informatik.ultimate.modelcheckerutils.boogie.Boogie2SmtSymbolTable;
import de.uni_freiburg.informatik.ultimate.modelcheckerutils.smt.predicates.IPredicate;
import de.uni_freiburg.informatik.ultimate.modelcheckerutils.smt.predicates.PredicateUnifier;
import de.uni_freiburg.informatik.ultimate.modelcheckerutils.smt.SmtSortUtils;
import de.uni_freiburg.informatik.ultimate.modelcheckerutils.smt.Substitution;
import de.uni_freiburg.informatik.ultimate.modelcheckerutils.smt.managedscript.ManagedScript;
import de.uni_freiburg.informatik.ultimate.modelcheckerutils.boogie.Expression2Term;
import de.uni_freiburg.informatik.ultimate.modelcheckerutils.boogie.Statements2TransFormula;
import de.uni_freiburg.informatik.ultimate.modelcheckerutils.boogie.Expression2Term.IIdentifierTranslator;
import de.uni_freiburg.informatik.ultimate.modelcheckerutils.boogie.Statements2TransFormula.SubstitutionTranslatorBoogieVar;

public class TestCounterexample<LETTER extends IIcfgTransition<?>> implements IResult {
	private static class RunModel {
		public Model model;
		public Map<IProgramVar, TreeMap<Integer, Term>> varReps;
		
		public RunModel(Model model, Map<IProgramVar, TreeMap<Integer, Term>> varReps) {
			this.model = model;
			this.varReps = varReps;
		}
	}
		
	private final IUltimateServiceProvider services;
	private ILogger logger;
	private RunModel runModel;
	private int pos;
	private ManagedScript managedSolver;
	private Boogie2SmtSymbolTable symTable;
	private StringBuilder cexBuilder;
	private LTLPropertyCheck ltlProperty;
	private Map<String, String> identityMap;
	private Set<String> createdAccounts;
	private Set<String> contracts;
	int id = 0;
	//private Statements2TransFormula stmtsToFormulas;
	
	public TestCounterexample(IUltimateServiceProvider services, LTLPropertyCheck ltlProperty, Boogie2SMT boogie2smt, CfgSmtToolkit csToolkit, PredicateFactory predFact, NestedLassoRun<LETTER, IPredicate> cex) {
		this.identityMap = new HashMap<>();
		identityMap.put("0", "'0x0000000000000000000000000000000000000000'");
		this.contracts = new HashSet<>();
		this.services = services;
		this.logger = services.getLoggingService().getLogger(this.getClass());
		this.ltlProperty = ltlProperty;
		this.managedSolver = csToolkit.getManagedScript();
		this.cexBuilder = new StringBuilder();
		this.runModel = getModel(csToolkit, predFact, cex);
		this.symTable = boogie2smt.getBoogie2SmtSymbolTable();
		this.createdAccounts = new HashSet<>();
		createdAccounts.add("'0x0000000000000000000000000000000000000000'");

		NestedWord<LETTER> word = cex.getStem().getWord().concatenate(cex.getLoop().getWord());
		String testTxns = getTest(word);
		
		Set<String> requiredAccounts = new HashSet<>(identityMap.values());
		requiredAccounts.removeAll(createdAccounts);
		String testName = String.format("Test%d", testTxns.hashCode());
		
		for(String contract : contracts) {
			cexBuilder.append(String.format("const %s = artifacts.require(\"%s\");%s", contract, contract, CoreUtil.getPlatformLineSeparator()));
		}
		cexBuilder.append(String.format("const truffleAssert = require('truffle-assertions');%s", CoreUtil.getPlatformLineSeparator()));
		
		cexBuilder.append(String.format("contract(\"%sTest\", accounts => {%s", String.join("", contracts), CoreUtil.getPlatformLineSeparator()));
		cexBuilder.append(String.format("    const [%s] = accounts;%s", String.join(", ", requiredAccounts), CoreUtil.getPlatformLineSeparator()));
		cexBuilder.append(String.format("    it(\"%s\", async() => {%s", testName, CoreUtil.getPlatformLineSeparator()));
		cexBuilder.append(testTxns);
		cexBuilder.append(String.format("    });%s", CoreUtil.getPlatformLineSeparator()));
		cexBuilder.append(String.format("});%s", CoreUtil.getPlatformLineSeparator()));
		
		try {
			FileWriter writer = new FileWriter(String.format("%s.js", testName));
			writer.write(cexBuilder.toString());
			writer.close();
		} catch(IOException e) {
			e.printStackTrace();
		}
	}
	
	public RunModel getModel(CfgSmtToolkit csToolkit, PredicateFactory predFact, NestedLassoRun<LETTER, IPredicate> cex) {
		managedSolver.lock(this);
		managedSolver.push(this, 1);
		
		NestedWord<LETTER> stem = cex.getStem().getWord();
		NestedWord<LETTER> loop = cex.getLoop().getWord();
		NestedWord<LETTER> run = stem.concatenate(loop).concatenate(loop);
				
		TreeMap<Integer, IPredicate> pendingContexts = new TreeMap<>();
		IPredicate truePred = predFact.newPredicate(managedSolver.getScript().term("true"));
		IPredicate falsePred = predFact.newPredicate(managedSolver.getScript().term("false"));
		final NestedFormulas<UnmodifiableTransFormula, IPredicate> traceTransFormulas = new DefaultTransFormulas(run, truePred, falsePred, pendingContexts,
				csToolkit.getOldVarsAssignmentCache(), false);
		NestedSsaBuilder ssaBuilder = new NestedSsaBuilder(run, managedSolver, traceTransFormulas, csToolkit.getModifiableGlobalsTable(),
				logger, false);
		
		AnnotateAndAssertCodeBlocks codeBlockAnnotater = new AnnotateAndAssertCodeBlocks(managedSolver, this, ssaBuilder.getSsa(), logger);
		AnnotateAndAsserter annotater = new AnnotateAndAsserter(managedSolver, ssaBuilder.getSsa(), codeBlockAnnotater, new TraceCheckStatisticsGenerator(true), services);
	
		annotater.buildAnnotatedSsaAndAssertTerms();
		LBool isSat = annotater.isInputSatisfiable();
		assert(isSat.equals(LBool.SAT));
		
		Model model = managedSolver.getScript().getModel();
		
		RunModel runModel = new RunModel(model, ssaBuilder.getIndexedVarRepresentative());
		managedSolver.pop(this, 1);
		managedSolver.unlock(this);
		
		return runModel;
	}
	
	private boolean isTxnStart(LETTER call) {
		String pre = call.getPrecedingProcedure();
		String post = call.getSucceedingProcedure();
		
		return (pre.equals("main") || pre.contains("Corral")) && !(post.equals("main") || post.contains("Corral") || post.contains("FreshRefGenerator"));
	}
	
	private boolean isTxnEnd(LETTER ret) {
		String pre = ret.getPrecedingProcedure();
		String post = ret.getSucceedingProcedure();
		
		return !(pre.equals("main") || pre.contains("Corral") || pre.contains("FreshRefGenerator")) && (post.equals("main") || post.contains("Corral"));
	}
	
	private IProgramVar findLocal(String identifier, String procedure, boolean inParams) {
		IProgramVar thisVar = symTable.getBoogieVar(identifier, procedure, inParams);
		if(thisVar == null) {
			thisVar = symTable.getBoogieVar(identifier, procedure, !inParams);
		}
		return thisVar;
	}
	
	private String getContract(String procedure) {
		String baseProcedure = procedure;
		if(procedure.endsWith("__success")) {
			baseProcedure = procedure.substring(0, procedure.length() - 9);
		}
		
		int sep = baseProcedure.lastIndexOf("_");
		String contractName = baseProcedure.substring(sep + 1);
		return contractName;
	}
	
	private String getAddressName(Term addressVal, String type) {
		if(identityMap.containsKey(addressVal.toString())) {
			return identityMap.get(addressVal.toString());
		}
		
		id++;
		String ident = type + id;
		identityMap.put(addressVal.toString(), ident);
		return ident;
	}
	
	private String getTxnCall(NestedWord<LETTER> run, LETTER edge) {
		String procedure = edge.getSucceedingProcedure();
		
		boolean txnFailed = didTxnFail(run, pos);
				
		String baseProcedure = procedure;
		if(procedure.endsWith("__success")) {
			baseProcedure = procedure.substring(0, procedure.length() - 9);
		}
		
		int sep = baseProcedure.lastIndexOf("_");
		String contractName = baseProcedure.substring(sep + 1);
		String procedureName = baseProcedure.substring(0, sep);
		StringBuilder builder = new StringBuilder();
		
		IProgramVar thisVar = findLocal("this", procedure, true);
		Term thisVal = runModel.model.evaluate(runModel.varReps.get(thisVar).lowerEntry(pos + 1).getValue());
		IProgramVar senderVar = findLocal("msgsender_MSG", procedure, true);
		Term senderVal = runModel.model.evaluate(runModel.varReps.get(senderVar).lowerEntry(pos + 1).getValue());
		IProgramVar valueVar = findLocal("msgvalue_MSG", procedure, true);
		Term valueVal = runModel.model.evaluate(runModel.varReps.get(valueVar).lowerEntry(pos + 1).getValue());
		BigInteger valueInt = new BigInteger(valueVal.toString());
		
		IProgramVar gasVar = symTable.getGlobalsMap().get("gas");
		BigInteger gasInt= BigInteger.ZERO;
		if(gasVar != null) {
			Term gasVal = runModel.model.evaluate(runModel.varReps.get(gasVar).lowerEntry(pos).getValue());
			gasInt = new BigInteger(gasVal.toString());
		}
		
		if(contractName.equals(procedureName)) {
			if(txnFailed) {
				builder.append(String.format("        await truffleAssert.fails(%s.new(", contractName));
			}
			else {
				String newAccount = getAddressName(thisVal, contractName);
				builder.append(String.format("        const %s = await %s.new(", newAccount, contractName));
				createdAccounts.add(newAccount);
			}
		}
		else {
			if(txnFailed) {
				builder.append(String.format("        await truffleAssert.fails(%s.%s(", getAddressName(thisVal, contractName), procedureName));
			}
			else {
				builder.append(String.format("        await %s.%s(", getAddressName(thisVal, contractName), procedureName));
			}
		}
		
		List<ILocalProgramVar> args = symTable.getProc2InParams().get(procedure);
		for(ILocalProgramVar arg : args) {
			String argName = arg.getIdentifier();
			boolean alreadyDone = argName.contains("this") || argName.contains("msgsender_MSG") || argName.contains("msgvalue_MSG");
			if(!alreadyDone) {
				String solVar = argName.substring(0, argName.lastIndexOf("_"));
				Term argVal = runModel.model.evaluate(runModel.varReps.get(arg).lowerEntry(pos + 1).getValue());
				BoogieASTNode node = symTable.getAstNode(arg);
				if(node instanceof VarList && ((VarList) node).getType().getBoogieType().toString().equals("Ref")) {
					builder.append(String.format("%s, ", getAddressName(argVal, "account")));
				}
				else {
					builder.append(String.format("%s, ", argVal.toString()));
				}
				
			}
		}
		
		builder.append(String.format("{from : %s", getAddressName(senderVal, "account")));
		if(!gasInt.equals(BigInteger.ZERO)) {
			builder.append(String.format(", gas : %s", gasInt.toString()));
		}
		if(!valueInt.equals(BigInteger.ZERO)) {
			builder.append(String.format(", value : %s", valueVal));
		}
		
		if(txnFailed) {
			builder.append("}));");
		}
		else {
			builder.append("});");
		}
		
		//await truffleAssert.fails(contractInstance.methodThatShouldFail());
		
		return builder.toString();
	}
	
	public boolean didTxnFail(NestedWord<LETTER> run, int pos) {
		int returnPos = run.getReturnPosition(pos);
		boolean failed = false;
		
		IProgramVar revertVar = symTable.getGlobalsMap().get("revert");
		if(revertVar != null) {
			Term revertVal = runModel.model.evaluate(runModel.varReps.get(revertVar).lowerEntry(returnPos).getValue());
			failed = Boolean.parseBoolean(revertVal.toString());
		}
		
		IProgramVar gasVar = symTable.getGlobalsMap().get("gas");
		if(gasVar != null && !failed) {
			Term gasVal = runModel.model.evaluate(runModel.varReps.get(gasVar).lowerEntry(returnPos).getValue());
			BigInteger gasInt = new BigInteger(gasVal.toString());
			failed = gasInt.compareTo(BigInteger.ZERO) < 0;
		}
		
		return failed;
	}
	
	private String getTest(NestedWord<LETTER> run) {
		StringBuilder testBuilder = new StringBuilder();
		
		for(pos = 0; pos < run.length(); pos++) {
			LETTER edge = run.getSymbol(pos);
			if(edge instanceof IIcfgCallTransition<?>) {
				if(isTxnStart(edge)) {
					testBuilder.append(getTxnCall(run, edge));
					testBuilder.append(CoreUtil.getPlatformLineSeparator());
					contracts.add(getContract(edge.getSucceedingProcedure()));
				}
			}
			/*else if(edge instanceof IIcfgReturnTransition<?, ?>) {
				if(isTxnEnd(edge)) {
					//check if failed
					
					
				}
			}
			else if(edge instanceof IIcfgSummaryTransition<?>) {
				if(isTxnStart(edge)) {
					cexBuilder.append((String.format("SUMMARY %s;", getTxnCall(edge))));
					cexBuilder.append(CoreUtil.getPlatformLineSeparator());
				}
			}*/
		}
		
		return testBuilder.toString();
	}

	@Override
	public String getPlugin() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getShortDescription() {
		return "Violation of LTL property " + ltlProperty;
	}
	
	public String toString() {
		return cexBuilder.toString();
	}

	@Override
	public String getLongDescription() {
		final StringBuilder sb = new StringBuilder();
		sb.append("Found an infinite, lasso-shaped execution that violates the LTL property ");
		sb.append(ltlProperty);
		sb.append(".");
		sb.append(CoreUtil.getPlatformLineSeparator());
		sb.append(cexBuilder.toString());
		sb.append(CoreUtil.getPlatformLineSeparator());
		sb.append("End of lasso representation.");
		return sb.toString();
	}
}