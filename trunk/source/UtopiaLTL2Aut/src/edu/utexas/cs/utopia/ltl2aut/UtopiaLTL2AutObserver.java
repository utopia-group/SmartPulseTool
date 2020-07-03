/*
 * Copyright (C) 2013-2015 Daniel Dietsch (dietsch@informatik.uni-freiburg.de)
 * Copyright (C) 2015 University of Freiburg
 * Copyright (C) 2015 Vincent Langenfeld (langenfv@informatik.uni-freiburg.de)
 *
 * This file is part of the ULTIMATE LTL2Aut plug-in.
 *
 * The ULTIMATE LTL2Aut plug-in is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published
 * by the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * The ULTIMATE LTL2Aut plug-in is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with the ULTIMATE LTL2Aut plug-in. If not, see <http://www.gnu.org/licenses/>.
 *
 * Additional permission under GNU GPL version 3 section 7:
 * If you modify the ULTIMATE LTL2Aut plug-in, or any covered work, by linking
 * or combining it with Eclipse RCP (or a modified version of Eclipse RCP),
 * containing parts covered by the terms of the Eclipse Public License, the
 * licensors of the ULTIMATE LTL2Aut plug-in grant you additional permission
 * to convey the resulting work.
 */
package edu.utexas.cs.utopia.ltl2aut;

import java.io.IOException;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.io.IOUtils;

import de.uni_freiburg.informatik.ultimate.automata.AutomataLibraryServices;
import de.uni_freiburg.informatik.ultimate.automata.AutomataOperationCanceledException;
import de.uni_freiburg.informatik.ultimate.automata.nestedword.INestedWordAutomaton;
import de.uni_freiburg.informatik.ultimate.automata.nestedword.VpAlphabet;
import de.uni_freiburg.informatik.ultimate.automata.nestedword.operations.Intersect;
import de.uni_freiburg.informatik.ultimate.automata.nestedword.operations.Union;
import de.uni_freiburg.informatik.ultimate.automata.statefactory.StringFactory;
import de.uni_freiburg.informatik.ultimate.boogie.DeclarationInformation;
import de.uni_freiburg.informatik.ultimate.boogie.annotation.LTLPropertyCheck;
import de.uni_freiburg.informatik.ultimate.boogie.annotation.LTLPropertyCheck.CheckableExpression;
import de.uni_freiburg.informatik.ultimate.boogie.ast.AssignmentStatement;
import de.uni_freiburg.informatik.ultimate.boogie.ast.Expression;
import de.uni_freiburg.informatik.ultimate.boogie.ast.GeneratedBoogieAstTransformer;
import de.uni_freiburg.informatik.ultimate.boogie.ast.IdentifierExpression;
import de.uni_freiburg.informatik.ultimate.boogie.ast.Procedure;
import de.uni_freiburg.informatik.ultimate.boogie.ast.Unit;
import de.uni_freiburg.informatik.ultimate.boogie.parser.BoogieSymbolFactory;
import de.uni_freiburg.informatik.ultimate.boogie.preprocessor.PreprocessorAnnotation;
import de.uni_freiburg.informatik.ultimate.boogie.symboltable.BoogieSymbolTable;
import de.uni_freiburg.informatik.ultimate.core.model.models.IElement;
import de.uni_freiburg.informatik.ultimate.core.model.models.ModelType;
import de.uni_freiburg.informatik.ultimate.core.model.observers.IUnmanagedObserver;
import de.uni_freiburg.informatik.ultimate.core.model.results.IResult;
import de.uni_freiburg.informatik.ultimate.core.model.services.ILogger;
import de.uni_freiburg.informatik.ultimate.core.model.services.IToolchainStorage;
import de.uni_freiburg.informatik.ultimate.core.model.services.IUltimateServiceProvider;
import de.uni_freiburg.informatik.ultimate.ltl2aut.ast.AstNode;
import de.uni_freiburg.informatik.ultimate.ltl2aut.never2nwa.NWAContainer;
import de.uni_freiburg.informatik.ultimate.ltl2aut.never2nwa.Never2Automaton;
import de.uni_freiburg.informatik.ultimate.plugins.generator.rcfgbuilder.cfg.CodeBlock;
import de.uni_freiburg.informatik.ultimate.plugins.generator.rcfgbuilder.cfg.CodeBlockFactory;
import edu.utexas.cs.utopia.specLang.PropertyContainer;
import edu.utexas.cs.utopia.specLang.PropertyContainer.VerificationProperty;

/**
 * This class reads a definition of a property in LTL and returns the AST of the description of the LTL formula as a
 * Buchi automaton.
 *
 * @author Langenfeld
 * @author Daniel Dietsch (dietsch@informatik.uni-freiburg.de)
 */

public class UtopiaLTL2AutObserver implements IUnmanagedObserver {
	private final ILogger logger;
	private final IUltimateServiceProvider services;
	private final IToolchainStorage storage;
	private VerificationProperty property;
	
	private BoogieSymbolTable symbolTable;
	private NWAContainer result;
	
	private static final String ALPHABET = "ABCDEHIJKLMNOPQTYZ";
	
	

	public UtopiaLTL2AutObserver(final IUltimateServiceProvider services, final IToolchainStorage storage) {
		this.services = services;
		this.storage = storage;
		logger = this.services.getLoggingService().getLogger(Activator.PLUGIN_ID);
		/*mIcfgs = new ArrayList<>();
		mAutomataTestFileAsts = new ArrayList<>();*/
	}
	
	@Override
	public void init(ModelType modelType, int currentModelIndex, int numberOfModels) throws Throwable {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean process(final IElement root) throws IOException {
		if(root instanceof PropertyContainer) {
			logger.debug("Found PropertyContainer");
			property = (VerificationProperty)((PropertyContainer) root).getPayload();
			return false;
		}
		if (root instanceof Unit) {
			symbolTable = PreprocessorAnnotation.getAnnotation(root).getSymbolTable();
			return false;
		}
		
		return true;
	}

	void reportResult(final IResult res) {
		services.getResultService().reportResult(Activator.PLUGIN_ID, res);
	}

	@Override
	public void finish() throws IOException, AutomataOperationCanceledException {
		if (property != null && symbolTable != null) {
			try {
				result = getPropertyAut(property);
			} catch (Throwable e) {
				logger.fatal("LTL2Aut encountered an error while transforming the NeverClaim to a NestedWordAutomaton");
				throw new RuntimeException(e);
			}
		}
	}
	
	public NWAContainer getPropertyAut(VerificationProperty property) throws Throwable {
		assert(property.hasLiveness());
		
		String propString;
		if(property.hasFairness()) {
			propString = property.getFairness() + "&& ! ( " + property.getLiveness() + ")";
		}
		else {
			propString = "! ( " + property.getLiveness() + ")";
		}
		
		LTL2BAExecutor ltl2ba = new LTL2BAExecutor(services, storage);
		final CodeBlockFactory cbf = CodeBlockFactory.getFactory(storage);
		
		LTLPropertyCheck check = createCheckFromPropertyString(propString);
		INestedWordAutomaton<CodeBlock, String> aut = getLTLAut(ltl2ba, cbf, check, false);
		
		NWAContainer container = new NWAContainer(aut);
		check.annotate(container);
		return container;
	}
	
	public INestedWordAutomaton<CodeBlock, String> getLTLAut(LTL2BAExecutor ltl2ba, CodeBlockFactory cbf, LTLPropertyCheck check, boolean negate) throws Throwable {
		//LTLPropertyCheck check = createCheckFromPropertyString(property);
		AstNode livenessNode = ltl2ba.ltl2Ast(check.getLTL2BALTLProperty(), negate);
		final Map<String, CheckableExpression> irs = check.getCheckableAtomicPropositions();
		final INestedWordAutomaton<CodeBlock, String> nwa = createNWAFromNeverClaim(livenessNode, irs, symbolTable, cbf);
		
		return nwa;
	}
	
	private LTLPropertyCheck createCheckFromPropertyString(final String ltlProperty) throws Throwable {
		final Map<String, CheckableExpression> apIrs = new LinkedHashMap<>();
		final Pattern pattern = Pattern.compile("AP\\((.*?)\\)");
		final Matcher matcher = pattern.matcher(ltlProperty);

		while (matcher.find()) {
			final String key = matcher.group(0);
			final CheckableExpression expr = createCheckableExpression(matcher.group(1));
			apIrs.put(key, expr);
		}
		if (apIrs.isEmpty()) {
			throw new IllegalArgumentException("No atomic propositions in " + ltlProperty);
		}

		// we need to rename the AP(...) expressions to symbols s.t. ltl2ba does not get confused
		final Map<String, CheckableExpression> irs = new LinkedHashMap<>();
		String newLtlProperty = ltlProperty;
		int i = 0;
		for (final Entry<String, CheckableExpression> entry : apIrs.entrySet()) {
			final String freshSymbol = getAPSymbol(i);
			++i;
			newLtlProperty = newLtlProperty.replaceAll(Pattern.quote(entry.getKey()), freshSymbol);
			irs.put(freshSymbol, entry.getValue());
		}

		return new LTLPropertyCheck(newLtlProperty, irs, null);
	}

	private CheckableExpression createCheckableExpression(final String expr) {

		final String niceProgram = "procedure main() { #thevar := %s ;}";

		final String localProg = String.format(niceProgram, expr.trim());
		final BoogieSymbolFactory symFac = new BoogieSymbolFactory();
		@SuppressWarnings("deprecation")
		final de.uni_freiburg.informatik.ultimate.boogie.parser.Lexer lexer =
				new de.uni_freiburg.informatik.ultimate.boogie.parser.Lexer(IOUtils.toInputStream(localProg));
		lexer.setSymbolFactory(symFac);
		final de.uni_freiburg.informatik.ultimate.boogie.parser.Parser p =
				new de.uni_freiburg.informatik.ultimate.boogie.parser.Parser(lexer, symFac, services);

		try {
			final Unit x = (Unit) p.parse().value;
			final Procedure proc = (Procedure) x.getDeclarations()[0];
			final AssignmentStatement stmt = (AssignmentStatement) proc.getBody().getBlock()[0];
			final Expression bExpr = stmt.getRhs()[0];
			final Expression newBExpr = bExpr.accept(new DeclarationInformationAdder());
			return new CheckableExpression(newBExpr, Collections.emptyList());
		} catch (final Exception e) {
			logger.error(String.format("Exception while parsing the atomic proposition \"%s\": %s", expr, e));
			throw new RuntimeException(e);
		}
	}

	public static String getAPSymbol(final int i) {
		if (i < ALPHABET.length()) {
			return String.valueOf(ALPHABET.charAt(i));
		}

		String rtr = "A";
		int idx = i;
		while (idx > ALPHABET.length()) {
			idx = idx - ALPHABET.length();
			rtr += String.valueOf(ALPHABET.charAt(idx % ALPHABET.length()));
		}
		return rtr;
	}
	
	private INestedWordAutomaton<CodeBlock, String> createNWAFromNeverClaim(final AstNode neverclaim,
			final Map<String, CheckableExpression> irs, final BoogieSymbolTable symbolTable, final CodeBlockFactory cbf)
			throws Exception {
		if (neverclaim == null) {
			throw new IllegalArgumentException("There is no never claim");
		}
		if (irs == null) {
			throw new IllegalArgumentException("There are no CheckableExpressions");
		}
		if (symbolTable == null) {
			throw new IllegalArgumentException("The BoogieSymbolTable is missing");
		}
		if (cbf == null) {
			throw new IllegalArgumentException(
					"The CodeBlockFactory is missing. Did you run the RCFGBuilder before this plugin?");
		}

		INestedWordAutomaton<CodeBlock, String> nwa;
		logger.debug("Transforming NeverClaim to NestedWordAutomaton...");
		try {
			// Build NWA from LTL formula in NeverClaim representation
			nwa = new Never2Automaton(neverclaim, symbolTable, irs, logger, services, cbf).getAutomaton();
			if (nwa == null) {
				throw new IllegalArgumentException("nwa is null");
			}
		} catch (final Exception e) {
			logger.fatal("LTL2Aut encountered an error while transforming the NeverClaim to a NestedWordAutomaton");
			throw e;
		}
		return nwa;
	}

	@Override
	public boolean performedChanges() {
		return false;
	}

	public NWAContainer getModel() {
		return result;
	}
	
	private static final class DeclarationInformationAdder extends GeneratedBoogieAstTransformer {
		@Override
		public Expression transform(final IdentifierExpression node) {
			return new IdentifierExpression(node.getLocation(), node.getType(), node.getIdentifier(),
					DeclarationInformation.DECLARATIONINFO_GLOBAL);
		}
	}
}

