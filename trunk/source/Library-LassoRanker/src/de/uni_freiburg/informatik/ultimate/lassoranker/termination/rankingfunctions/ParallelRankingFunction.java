/*
 * Copyright (C) 2014-2015 Jan Leike (leike@informatik.uni-freiburg.de)
 * Copyright (C) 2012-2015 University of Freiburg
 * 
 * This file is part of the ULTIMATE LassoRanker Library.
 * 
 * The ULTIMATE LassoRanker Library is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published
 * by the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * The ULTIMATE LassoRanker Library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with the ULTIMATE LassoRanker Library. If not, see <http://www.gnu.org/licenses/>.
 * 
 * Additional permission under GNU GPL version 3 section 7:
 * If you modify the ULTIMATE LassoRanker Library, or any covered work, by linking
 * or combining it with Eclipse RCP (or a modified version of Eclipse RCP), 
 * containing parts covered by the terms of the Eclipse Public License, the 
 * licensors of the ULTIMATE LassoRanker Library grant you additional permission 
 * to convey the resulting work.
 */
package de.uni_freiburg.informatik.ultimate.lassoranker.termination.rankingfunctions;

import java.math.BigInteger;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

import de.uni_freiburg.informatik.ultimate.lassoranker.termination.AffineFunction;
import de.uni_freiburg.informatik.ultimate.logic.Rational;
import de.uni_freiburg.informatik.ultimate.logic.SMTLIBException;
import de.uni_freiburg.informatik.ultimate.logic.Script;
import de.uni_freiburg.informatik.ultimate.logic.Term;
import de.uni_freiburg.informatik.ultimate.modelcheckerutils.cfg.variables.IProgramVar;
import de.uni_freiburg.informatik.ultimate.modelcheckerutils.smt.SmtUtils;


/**
 * A parallel ranking function as generated by the parallel template
 * 
 * @author Jan Leike
 */
public class ParallelRankingFunction extends RankingFunction {
	private static final long serialVersionUID = -8148235363885204843L;
	
	private final AffineFunction[] mranking;
	public final int size;
	
	public ParallelRankingFunction(final AffineFunction[] ranking) {
		mranking = ranking;
		size = ranking.length;
		assert(size > 0);
	}
	
	@Override
	public String getName() {
		return mranking.length + "-parallel";
	}

	
	@Override
	public Set<IProgramVar> getVariables() {
		final Set<IProgramVar> vars = new LinkedHashSet<IProgramVar>();
		for (final AffineFunction af : mranking) {
			vars.addAll(af.getVariables());
		}
		return vars;
	}
	
	public AffineFunction[] getComponents() {
		return mranking;
	}
	
	@Override
	public String toString() {
		final StringBuilder sb = new StringBuilder();
		sb.append(mranking.length);
		sb.append("-parallel ranking function:\n");
		sb.append("f = ");
		for (int i = 0; i < size; ++i) {
			if (i > 0) {
				sb.append(" + ");
			}
			sb.append("max{0, ");
			sb.append(mranking[i]);
			sb.append("}");
		}
		return sb.toString();
	}
	
	@Override
	public Term[] asLexTerm(final Script script) throws SMTLIBException {
		final Term zero = SmtUtils.constructIntValue(script, BigInteger.ZERO);
		final Term[] summands = new Term[size];
		for (int i = 0; i < size; ++i) {
			final Term f_term = mranking[i].asTerm(script);
			final Term cond = script.term(">", f_term, zero);
			summands[i] = script.term("ite", cond, f_term, zero);
		}
		return new Term[] { script.term("+", summands) };
	}
	
	@Override
	public Ordinal evaluate(final Map<IProgramVar, Rational> assignment) {
		Ordinal o = Ordinal.ZERO;
		for (int i = 0; i < size; ++i) {
			final Rational r = mranking[i].evaluate(assignment);
			if (r.compareTo(Rational.ZERO) > 0) {
				o = o.add(Ordinal.fromInteger(r.ceil().numerator()));
			}
		}
		return o;
	}
	
	@Override
	public Ordinal codomain() {
		return Ordinal.OMEGA;
	}
}
