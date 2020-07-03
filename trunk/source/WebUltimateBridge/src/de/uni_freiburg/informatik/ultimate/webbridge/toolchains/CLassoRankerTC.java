package de.uni_freiburg.informatik.ultimate.webbridge.toolchains;

import java.util.ArrayList;
import java.util.List;

import de.uni_freiburg.informatik.ultimate.webbridge.website.Setting;
import de.uni_freiburg.informatik.ultimate.webbridge.website.Tool;
import de.uni_freiburg.informatik.ultimate.webbridge.website.WebToolchain;
import de.uni_freiburg.informatik.ultimate.webbridge.website.Tasks.TaskNames;

public class CLassoRankerTC extends WebToolchain {

	@Override
	protected String defineDescription() {
		return NameStrings.TOOL_LASSO_RANKER;
	}

	@Override
	protected String defineName() {
		return NameStrings.TOOL_LASSO_RANKER;
	}

	@Override
	protected String defineId() {
		return "cLassoRanker";
	}

	@Override
	protected TaskNames[] defineTaskName() {
		return new TaskNames[] { TaskNames.RANK_SYNTHESIS_C };
	}

    @Override
    protected String defineLanguage() {
        return "c";
    }
    

	@Override
	protected String defineUserInfo() {
		return null;
	}
	
	@Override
	protected String defineInterfaceLayoutFontsize() {
		return PrefStrings.INTERFACE_LAYOUT_FONTSIZE_DEFAULT;
	}

	@Override
	protected String defineInterfaceLayoutOrientation() {
		return PrefStrings.INTERFACE_LAYOUT_ORIENTATION_DEFAULT;
	}

	@Override
	protected String defineInterfaceLayoutTransitions() {
		return PrefStrings.INTERFACE_LAYOUT_TRANSITION_DEFAULT;
	}

	@Override
	protected List<Tool> defineTools() {
		final List<Tool> tools = new ArrayList<Tool>();
		
		tools.add(new Tool(PrefStrings.SYNTAXCHECKER));
		tools.add(new Tool(PrefStrings.CACSL2BOOGIETRANSLATOR));
		tools.addAll(BoogieLassoRankerTC.boogieLassoRankerToolchain());

		return tools;
	}
	
	@Override
	protected List<Setting> defineAdditionalSettings() {
		final List<Setting> rtr = BoogieLassoRankerTC.boogieLassoRankerAdditionalSettings();
//		rtr.add(new Setting(PrefStrings.s_CACSL_LABEL_StartFunction, SettingType.STRING, "Starting procedure: ",
//				"main", true));
		return rtr;
	}
	
	@Override
	protected String defineToolchainSettingsFile() {
		return "LassoRanker.epf";
	}

}
