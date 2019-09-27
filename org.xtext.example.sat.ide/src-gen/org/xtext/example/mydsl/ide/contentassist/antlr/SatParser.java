/*
 * generated by Xtext 2.19.0
 */
package org.xtext.example.mydsl.ide.contentassist.antlr;

import com.google.common.collect.ImmutableMap;
import com.google.inject.Inject;
import com.google.inject.Singleton;
import java.util.Map;
import org.eclipse.xtext.AbstractElement;
import org.eclipse.xtext.ide.editor.contentassist.antlr.AbstractContentAssistParser;
import org.xtext.example.mydsl.ide.contentassist.antlr.internal.InternalSatParser;
import org.xtext.example.mydsl.services.SatGrammarAccess;

public class SatParser extends AbstractContentAssistParser {

	@Singleton
	public static final class NameMappings {
		
		private final Map<AbstractElement, String> mappings;
		
		@Inject
		public NameMappings(SatGrammarAccess grammarAccess) {
			ImmutableMap.Builder<AbstractElement, String> builder = ImmutableMap.builder();
			init(builder, grammarAccess);
			this.mappings = builder.build();
		}
		
		public String getRuleName(AbstractElement element) {
			return mappings.get(element);
		}
		
		private static void init(ImmutableMap.Builder<AbstractElement, String> builder, SatGrammarAccess grammarAccess) {
			builder.put(grammarAccess.getNandAccess().getAlternatives_1_1(), "rule__Nand__Alternatives_1_1");
			builder.put(grammarAccess.getPrimaryAccess().getAlternatives(), "rule__Primary__Alternatives");
			builder.put(grammarAccess.getNotAccess().getAlternatives_0(), "rule__Not__Alternatives_0");
			builder.put(grammarAccess.getConstAccess().getValAlternatives_0(), "rule__Const__ValAlternatives_0");
			builder.put(grammarAccess.getBiImplAccess().getGroup(), "rule__BiImpl__Group__0");
			builder.put(grammarAccess.getBiImplAccess().getGroup_1(), "rule__BiImpl__Group_1__0");
			builder.put(grammarAccess.getImplAccess().getGroup(), "rule__Impl__Group__0");
			builder.put(grammarAccess.getImplAccess().getGroup_1(), "rule__Impl__Group_1__0");
			builder.put(grammarAccess.getOrAccess().getGroup(), "rule__Or__Group__0");
			builder.put(grammarAccess.getOrAccess().getGroup_1(), "rule__Or__Group_1__0");
			builder.put(grammarAccess.getAndAccess().getGroup(), "rule__And__Group__0");
			builder.put(grammarAccess.getAndAccess().getGroup_1(), "rule__And__Group_1__0");
			builder.put(grammarAccess.getNandAccess().getGroup(), "rule__Nand__Group__0");
			builder.put(grammarAccess.getNandAccess().getGroup_1(), "rule__Nand__Group_1__0");
			builder.put(grammarAccess.getPrimaryAccess().getGroup_0(), "rule__Primary__Group_0__0");
			builder.put(grammarAccess.getNotAccess().getGroup(), "rule__Not__Group__0");
			builder.put(grammarAccess.getBiImplAccess().getRightAssignment_1_2(), "rule__BiImpl__RightAssignment_1_2");
			builder.put(grammarAccess.getImplAccess().getRightAssignment_1_2(), "rule__Impl__RightAssignment_1_2");
			builder.put(grammarAccess.getOrAccess().getRightAssignment_1_2(), "rule__Or__RightAssignment_1_2");
			builder.put(grammarAccess.getAndAccess().getRightAssignment_1_2(), "rule__And__RightAssignment_1_2");
			builder.put(grammarAccess.getNandAccess().getRightAssignment_1_2(), "rule__Nand__RightAssignment_1_2");
			builder.put(grammarAccess.getVarAccess().getIdAssignment(), "rule__Var__IdAssignment");
			builder.put(grammarAccess.getConstAccess().getValAssignment(), "rule__Const__ValAssignment");
		}
	}
	
	@Inject
	private NameMappings nameMappings;

	@Inject
	private SatGrammarAccess grammarAccess;

	@Override
	protected InternalSatParser createParser() {
		InternalSatParser result = new InternalSatParser(null);
		result.setGrammarAccess(grammarAccess);
		return result;
	}

	@Override
	protected String getRuleName(AbstractElement element) {
		return nameMappings.getRuleName(element);
	}

	@Override
	protected String[] getInitialHiddenTokens() {
		return new String[] { "RULE_WS", "RULE_ML_COMMENT", "RULE_SL_COMMENT" };
	}

	public SatGrammarAccess getGrammarAccess() {
		return this.grammarAccess;
	}

	public void setGrammarAccess(SatGrammarAccess grammarAccess) {
		this.grammarAccess = grammarAccess;
	}
	
	public NameMappings getNameMappings() {
		return nameMappings;
	}
	
	public void setNameMappings(NameMappings nameMappings) {
		this.nameMappings = nameMappings;
	}
}
