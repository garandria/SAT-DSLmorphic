/*
 * generated by Xtext 2.14.0
 */
package org.xtext.example.services;

import java.util.List;

@Singleton
public class SatGrammarAccess extends AbstractGrammarElementFinder {
	
	public class FileElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.xtext.example.Sat.File");
		private final Assignment cFileAssignment = (Assignment)rule.eContents().get(1);
		private final RuleCall cFileFormulaParserRuleCall_0 = (RuleCall)cFileAssignment.eContents().get(0);
		
		//File:
		//	file+=Formula*;
		@Override public ParserRule getRule() { return rule; }
		
		//file+=Formula*
		public Assignment getFileAssignment() { return cFileAssignment; }
		
		//Formula
		public RuleCall getFileFormulaParserRuleCall_0() { return cFileFormulaParserRuleCall_0; }
	}
	public class FormulaElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.xtext.example.Sat.Formula");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Action cFormulaAction_0 = (Action)cGroup.eContents().get(0);
		private final Alternatives cAlternatives_1 = (Alternatives)cGroup.eContents().get(1);
		private final Assignment cFormAssignment_1_0 = (Assignment)cAlternatives_1.eContents().get(0);
		private final RuleCall cFormExprParserRuleCall_1_0_0 = (RuleCall)cFormAssignment_1_0.eContents().get(0);
		private final RuleCall cVoidParserRuleCall_1_1 = (RuleCall)cAlternatives_1.eContents().get(1);
		
		//Formula:
		//	{Formula} (form=Expr | Void);
		@Override public ParserRule getRule() { return rule; }
		
		//{Formula} (form=Expr | Void)
		public Group getGroup() { return cGroup; }
		
		//{Formula}
		public Action getFormulaAction_0() { return cFormulaAction_0; }
		
		//form=Expr | Void
		public Alternatives getAlternatives_1() { return cAlternatives_1; }
		
		//form=Expr
		public Assignment getFormAssignment_1_0() { return cFormAssignment_1_0; }
		
		//Expr
		public RuleCall getFormExprParserRuleCall_1_0_0() { return cFormExprParserRuleCall_1_0_0; }
		
		//Void
		public RuleCall getVoidParserRuleCall_1_1() { return cVoidParserRuleCall_1_1; }
	}
	public class ExprElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.xtext.example.Sat.Expr");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final RuleCall cExprBinParserRuleCall_0 = (RuleCall)cAlternatives.eContents().get(0);
		private final RuleCall cExprUnParserRuleCall_1 = (RuleCall)cAlternatives.eContents().get(1);
		private final RuleCall cVarParserRuleCall_2 = (RuleCall)cAlternatives.eContents().get(2);
		
		//Expr:
		//	ExprBin | ExprUn | Var;
		@Override public ParserRule getRule() { return rule; }
		
		//ExprBin | ExprUn | Var
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//ExprBin
		public RuleCall getExprBinParserRuleCall_0() { return cExprBinParserRuleCall_0; }
		
		//ExprUn
		public RuleCall getExprUnParserRuleCall_1() { return cExprUnParserRuleCall_1; }
		
		//Var
		public RuleCall getVarParserRuleCall_2() { return cVarParserRuleCall_2; }
	}
	public class ExprBinElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.xtext.example.Sat.ExprBin");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cLeftParenthesisKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Assignment cExprLAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final RuleCall cExprLExprParserRuleCall_1_0 = (RuleCall)cExprLAssignment_1.eContents().get(0);
		private final Assignment cOpAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final RuleCall cOpBinOpParserRuleCall_2_0 = (RuleCall)cOpAssignment_2.eContents().get(0);
		private final Assignment cExprRAssignment_3 = (Assignment)cGroup.eContents().get(3);
		private final RuleCall cExprRExprParserRuleCall_3_0 = (RuleCall)cExprRAssignment_3.eContents().get(0);
		private final Keyword cRightParenthesisKeyword_4 = (Keyword)cGroup.eContents().get(4);
		
		//ExprBin:
		//	'(' exprL=Expr op=BinOp exprR=Expr ')';
		@Override public ParserRule getRule() { return rule; }
		
		//'(' exprL=Expr op=BinOp exprR=Expr ')'
		public Group getGroup() { return cGroup; }
		
		//'('
		public Keyword getLeftParenthesisKeyword_0() { return cLeftParenthesisKeyword_0; }
		
		//exprL=Expr
		public Assignment getExprLAssignment_1() { return cExprLAssignment_1; }
		
		//Expr
		public RuleCall getExprLExprParserRuleCall_1_0() { return cExprLExprParserRuleCall_1_0; }
		
		//op=BinOp
		public Assignment getOpAssignment_2() { return cOpAssignment_2; }
		
		//BinOp
		public RuleCall getOpBinOpParserRuleCall_2_0() { return cOpBinOpParserRuleCall_2_0; }
		
		//exprR=Expr
		public Assignment getExprRAssignment_3() { return cExprRAssignment_3; }
		
		//Expr
		public RuleCall getExprRExprParserRuleCall_3_0() { return cExprRExprParserRuleCall_3_0; }
		
		//')'
		public Keyword getRightParenthesisKeyword_4() { return cRightParenthesisKeyword_4; }
	}
	public class ExprUnElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.xtext.example.Sat.ExprUn");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cLeftParenthesisKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Assignment cOpAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final RuleCall cOpUnOpParserRuleCall_1_0 = (RuleCall)cOpAssignment_1.eContents().get(0);
		private final Assignment cExprAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final RuleCall cExprExprParserRuleCall_2_0 = (RuleCall)cExprAssignment_2.eContents().get(0);
		private final Keyword cRightParenthesisKeyword_3 = (Keyword)cGroup.eContents().get(3);
		
		//ExprUn:
		//	'(' op=UnOp expr=Expr ')';
		@Override public ParserRule getRule() { return rule; }
		
		//'(' op=UnOp expr=Expr ')'
		public Group getGroup() { return cGroup; }
		
		//'('
		public Keyword getLeftParenthesisKeyword_0() { return cLeftParenthesisKeyword_0; }
		
		//op=UnOp
		public Assignment getOpAssignment_1() { return cOpAssignment_1; }
		
		//UnOp
		public RuleCall getOpUnOpParserRuleCall_1_0() { return cOpUnOpParserRuleCall_1_0; }
		
		//expr=Expr
		public Assignment getExprAssignment_2() { return cExprAssignment_2; }
		
		//Expr
		public RuleCall getExprExprParserRuleCall_2_0() { return cExprExprParserRuleCall_2_0; }
		
		//')'
		public Keyword getRightParenthesisKeyword_3() { return cRightParenthesisKeyword_3; }
	}
	public class BinOpElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.xtext.example.Sat.BinOp");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final Keyword cANDKeyword_0 = (Keyword)cAlternatives.eContents().get(0);
		private final Keyword cORKeyword_1 = (Keyword)cAlternatives.eContents().get(1);
		private final Keyword cIMPLIESKeyword_2 = (Keyword)cAlternatives.eContents().get(2);
		private final Keyword cBIIMPLIESKeyword_3 = (Keyword)cAlternatives.eContents().get(3);
		private final Keyword cEXCLUDESKeyword_4 = (Keyword)cAlternatives.eContents().get(4);
		
		//BinOp:
		//	'AND' | 'OR' | 'IMPLIES' | 'BIIMPLIES' | 'EXCLUDES';
		@Override public ParserRule getRule() { return rule; }
		
		//'AND' | 'OR' | 'IMPLIES' | 'BIIMPLIES' | 'EXCLUDES'
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//'AND'
		public Keyword getANDKeyword_0() { return cANDKeyword_0; }
		
		//'OR'
		public Keyword getORKeyword_1() { return cORKeyword_1; }
		
		//'IMPLIES'
		public Keyword getIMPLIESKeyword_2() { return cIMPLIESKeyword_2; }
		
		//'BIIMPLIES'
		public Keyword getBIIMPLIESKeyword_3() { return cBIIMPLIESKeyword_3; }
		
		//'EXCLUDES'
		public Keyword getEXCLUDESKeyword_4() { return cEXCLUDESKeyword_4; }
	}
	public class UnOpElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.xtext.example.Sat.UnOp");
		private final Keyword cNOTKeyword = (Keyword)rule.eContents().get(1);
		
		//UnOp:
		//	'NOT';
		@Override public ParserRule getRule() { return rule; }
		
		//'NOT'
		public Keyword getNOTKeyword() { return cNOTKeyword; }
	}
	public class VarElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.xtext.example.Sat.Var");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final Assignment cAtomAssignment_0 = (Assignment)cAlternatives.eContents().get(0);
		private final RuleCall cAtomAtomParserRuleCall_0_0 = (RuleCall)cAtomAssignment_0.eContents().get(0);
		private final Assignment cValAssignment_1 = (Assignment)cAlternatives.eContents().get(1);
		private final RuleCall cValValParserRuleCall_1_0 = (RuleCall)cValAssignment_1.eContents().get(0);
		
		//Var:
		//	atom=Atom | val=Val;
		@Override public ParserRule getRule() { return rule; }
		
		//atom=Atom | val=Val
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//atom=Atom
		public Assignment getAtomAssignment_0() { return cAtomAssignment_0; }
		
		//Atom
		public RuleCall getAtomAtomParserRuleCall_0_0() { return cAtomAtomParserRuleCall_0_0; }
		
		//val=Val
		public Assignment getValAssignment_1() { return cValAssignment_1; }
		
		//Val
		public RuleCall getValValParserRuleCall_1_0() { return cValValParserRuleCall_1_0; }
	}
	public class AtomElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.xtext.example.Sat.Atom");
		private final Assignment cNameAssignment = (Assignment)rule.eContents().get(1);
		private final RuleCall cNameIDTerminalRuleCall_0 = (RuleCall)cNameAssignment.eContents().get(0);
		
		//Atom:
		//	name=ID;
		@Override public ParserRule getRule() { return rule; }
		
		//name=ID
		public Assignment getNameAssignment() { return cNameAssignment; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_0() { return cNameIDTerminalRuleCall_0; }
	}
	public class ValElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.xtext.example.Sat.Val");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final Keyword cTRUEKeyword_0 = (Keyword)cAlternatives.eContents().get(0);
		private final Keyword cFALSEKeyword_1 = (Keyword)cAlternatives.eContents().get(1);
		
		//Val:
		//	'TRUE' | 'FALSE';
		@Override public ParserRule getRule() { return rule; }
		
		//'TRUE' | 'FALSE'
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//'TRUE'
		public Keyword getTRUEKeyword_0() { return cTRUEKeyword_0; }
		
		//'FALSE'
		public Keyword getFALSEKeyword_1() { return cFALSEKeyword_1; }
	}
	public class VoidElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.xtext.example.Sat.Void");
		private final Keyword cLatinSmallLetterOWithStrokeKeyword = (Keyword)rule.eContents().get(1);
		
		//Void:
		//	'ø';
		@Override public ParserRule getRule() { return rule; }
		
		//'ø'
		public Keyword getLatinSmallLetterOWithStrokeKeyword() { return cLatinSmallLetterOWithStrokeKeyword; }
	}
	
	
	private final FileElements pFile;
	private final FormulaElements pFormula;
	private final ExprElements pExpr;
	private final ExprBinElements pExprBin;
	private final ExprUnElements pExprUn;
	private final BinOpElements pBinOp;
	private final UnOpElements pUnOp;
	private final VarElements pVar;
	private final AtomElements pAtom;
	private final ValElements pVal;
	private final VoidElements pVoid;
	
	private final Grammar grammar;
	
	private final TerminalsGrammarAccess gaTerminals;

	@Inject
	public SatGrammarAccess(GrammarProvider grammarProvider,
			TerminalsGrammarAccess gaTerminals) {
		this.grammar = internalFindGrammar(grammarProvider);
		this.gaTerminals = gaTerminals;
		this.pFile = new FileElements();
		this.pFormula = new FormulaElements();
		this.pExpr = new ExprElements();
		this.pExprBin = new ExprBinElements();
		this.pExprUn = new ExprUnElements();
		this.pBinOp = new BinOpElements();
		this.pUnOp = new UnOpElements();
		this.pVar = new VarElements();
		this.pAtom = new AtomElements();
		this.pVal = new ValElements();
		this.pVoid = new VoidElements();
	}
	
	protected Grammar internalFindGrammar(GrammarProvider grammarProvider) {
		Grammar grammar = grammarProvider.getGrammar(this);
		while (grammar != null) {
			if ("org.xtext.example.Sat".equals(grammar.getName())) {
				return grammar;
			}
			List<Grammar> grammars = grammar.getUsedGrammars();
			if (!grammars.isEmpty()) {
				grammar = grammars.iterator().next();
			} else {
				return null;
			}
		}
		return grammar;
	}
	
	@Override
	public Grammar getGrammar() {
		return grammar;
	}
	
	
	public TerminalsGrammarAccess getTerminalsGrammarAccess() {
		return gaTerminals;
	}

	
	//File:
	//	file+=Formula*;
	public FileElements getFileAccess() {
		return pFile;
	}
	
	public ParserRule getFileRule() {
		return getFileAccess().getRule();
	}
	
	//Formula:
	//	{Formula} (form=Expr | Void);
	public FormulaElements getFormulaAccess() {
		return pFormula;
	}
	
	public ParserRule getFormulaRule() {
		return getFormulaAccess().getRule();
	}
	
	//Expr:
	//	ExprBin | ExprUn | Var;
	public ExprElements getExprAccess() {
		return pExpr;
	}
	
	public ParserRule getExprRule() {
		return getExprAccess().getRule();
	}
	
	//ExprBin:
	//	'(' exprL=Expr op=BinOp exprR=Expr ')';
	public ExprBinElements getExprBinAccess() {
		return pExprBin;
	}
	
	public ParserRule getExprBinRule() {
		return getExprBinAccess().getRule();
	}
	
	//ExprUn:
	//	'(' op=UnOp expr=Expr ')';
	public ExprUnElements getExprUnAccess() {
		return pExprUn;
	}
	
	public ParserRule getExprUnRule() {
		return getExprUnAccess().getRule();
	}
	
	//BinOp:
	//	'AND' | 'OR' | 'IMPLIES' | 'BIIMPLIES' | 'EXCLUDES';
	public BinOpElements getBinOpAccess() {
		return pBinOp;
	}
	
	public ParserRule getBinOpRule() {
		return getBinOpAccess().getRule();
	}
	
	//UnOp:
	//	'NOT';
	public UnOpElements getUnOpAccess() {
		return pUnOp;
	}
	
	public ParserRule getUnOpRule() {
		return getUnOpAccess().getRule();
	}
	
	//Var:
	//	atom=Atom | val=Val;
	public VarElements getVarAccess() {
		return pVar;
	}
	
	public ParserRule getVarRule() {
		return getVarAccess().getRule();
	}
	
	//Atom:
	//	name=ID;
	public AtomElements getAtomAccess() {
		return pAtom;
	}
	
	public ParserRule getAtomRule() {
		return getAtomAccess().getRule();
	}
	
	//Val:
	//	'TRUE' | 'FALSE';
	public ValElements getValAccess() {
		return pVal;
	}
	
	public ParserRule getValRule() {
		return getValAccess().getRule();
	}
	
	//Void:
	//	'ø';
	public VoidElements getVoidAccess() {
		return pVoid;
	}
	
	public ParserRule getVoidRule() {
		return getVoidAccess().getRule();
	}
	
	//terminal ID:
	//	'^'? ('a'..'z' | 'A'..'Z' | '_') ('a'..'z' | 'A'..'Z' | '_' | '0'..'9')*;
	public TerminalRule getIDRule() {
		return gaTerminals.getIDRule();
	}
	
	//terminal INT returns ecore::EInt:
	//	'0'..'9'+;
	public TerminalRule getINTRule() {
		return gaTerminals.getINTRule();
	}
	
	//terminal STRING:
	//	'"' ('\\' . | !('\\' | '"'))* '"' |
	//	"'" ('\\' . | !('\\' | "'"))* "'";
	public TerminalRule getSTRINGRule() {
		return gaTerminals.getSTRINGRule();
	}
	
	//terminal ML_COMMENT:
	//	'/*'->'*/';
	public TerminalRule getML_COMMENTRule() {
		return gaTerminals.getML_COMMENTRule();
	}
	
	//terminal SL_COMMENT:
	//	'//' !('\n' | '\r')* ('\r'? '\n')?;
	public TerminalRule getSL_COMMENTRule() {
		return gaTerminals.getSL_COMMENTRule();
	}
	
	//terminal WS:
	//	' ' | '\t' | '\r' | '\n'+;
	public TerminalRule getWSRule() {
		return gaTerminals.getWSRule();
	}
	
	//terminal ANY_OTHER:
	//	.;
	public TerminalRule getANY_OTHERRule() {
		return gaTerminals.getANY_OTHERRule();
	}
}
