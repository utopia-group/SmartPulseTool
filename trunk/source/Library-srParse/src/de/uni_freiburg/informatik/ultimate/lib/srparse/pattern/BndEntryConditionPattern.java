package de.uni_freiburg.informatik.ultimate.lib.srparse.pattern;

import java.util.List;
import java.util.Map;

import de.uni_freiburg.informatik.ultimate.lib.pea.CDD;
import de.uni_freiburg.informatik.ultimate.lib.pea.PhaseEventAutomata;
import de.uni_freiburg.informatik.ultimate.lib.pea.reqcheck.PatternToPEA;
import de.uni_freiburg.informatik.ultimate.lib.srparse.SrParseScope;

public class BndEntryConditionPattern extends PatternType {

	public BndEntryConditionPattern(final SrParseScope scope, final String id, final List<CDD> cdds,
			final List<String> durations) {
		super(scope, id, cdds, durations);
	}

	@Override
	public PhaseEventAutomata transform(final PatternToPEA peaTrans, final Map<String, Integer> id2bounds) {
		final CDD p_cdd = getCdds().get(1);
		final CDD q_cdd = getScope().getCdd1();
		final CDD r_cdd = getScope().getCdd2();
		final CDD s_cdd = getCdds().get(0);

		return peaTrans.bndEntryConditionPattern(getId(), p_cdd, q_cdd, r_cdd, s_cdd,
				parseDuration(getDuration().get(0), id2bounds), getScope().toString());
	}

	@Override
	public String toString() {
		final StringBuilder sb = new StringBuilder();
		if (getId() != null) {
			sb.append(getId());
			sb.append(": ");
		}
		if (getScope() != null) {
			sb.append(getScope());
		}
		sb.append("it is always the case that after \"");
		sb.append(getCdds().get(1).toBoogieString());
		sb.append("\" holds for \"");
		sb.append(getDuration().get(0));
		sb.append("\" time units, then \"");
		sb.append(getCdds().get(0).toBoogieString());
		sb.append("\" holds");
		return sb.toString();
	}

	@Override
	public PatternType rename(final String newName) {
		return new BndEntryConditionPattern(getScope(), newName, getCdds(), getDuration());
	}
}
