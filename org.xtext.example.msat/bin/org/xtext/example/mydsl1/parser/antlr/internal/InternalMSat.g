/*
 * generated by Xtext 2.19.0
 */
grammar InternalMSat;

options {
	superClass=AbstractInternalAntlrParser;
}

@lexer::header {
package org.xtext.example.mydsl1.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.xtext.example.mydsl1.parser.antlr.internal;

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.common.util.Enumerator;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import org.xtext.example.mydsl1.services.MSatGrammarAccess;

}

@parser::members {

 	private MSatGrammarAccess grammarAccess;

    public InternalMSatParser(TokenStream input, MSatGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }

    @Override
    protected String getFirstRuleName() {
    	return "SATMorphic";
   	}

   	@Override
   	protected MSatGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}

}

@rulecatch {
    catch (RecognitionException re) {
        recover(input,re);
        appendSkippedTokens();
    }
}

// Entry rule entryRuleSATMorphic
entryRuleSATMorphic returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getSATMorphicRule()); }
	iv_ruleSATMorphic=ruleSATMorphic
	{ $current=$iv_ruleSATMorphic.current; }
	EOF;

// Rule SATMorphic
ruleSATMorphic returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='solver'
		{
			newLeafNode(otherlv_0, grammarAccess.getSATMorphicAccess().getSolverKeyword_0());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getSATMorphicAccess().getSolversSATSolverParserRuleCall_1_0());
				}
				lv_solvers_1_0=ruleSATSolver
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getSATMorphicRule());
					}
					add(
						$current,
						"solvers",
						lv_solvers_1_0,
						"org.xtext.example.mydsl1.MSat.SATSolver");
					afterParserOrEnumRuleCall();
				}
			)
		)+
		(
			(
				{
					newCompositeNode(grammarAccess.getSATMorphicAccess().getBenchmarkBenchmarkParserRuleCall_2_0());
				}
				lv_benchmark_2_0=ruleBenchmark
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getSATMorphicRule());
					}
					set(
						$current,
						"benchmark",
						lv_benchmark_2_0,
						"org.xtext.example.mydsl1.MSat.Benchmark");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRuleSATSolver
entryRuleSATSolver returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getSATSolverRule()); }
	iv_ruleSATSolver=ruleSATSolver
	{ $current=$iv_ruleSATSolver.current; }
	EOF;

// Rule SATSolver
ruleSATSolver returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				(
					{
						newCompositeNode(grammarAccess.getSATSolverAccess().getSolverSat4JParserRuleCall_0_0_0());
					}
					lv_solver_0_1=ruleSat4J
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getSATSolverRule());
						}
						set(
							$current,
							"solver",
							lv_solver_0_1,
							"org.xtext.example.mydsl1.MSat.Sat4J");
						afterParserOrEnumRuleCall();
					}
					    |
					{
						newCompositeNode(grammarAccess.getSATSolverAccess().getSolverCryptoMiniSATParserRuleCall_0_0_1());
					}
					lv_solver_0_2=ruleCryptoMiniSAT
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getSATSolverRule());
						}
						set(
							$current,
							"solver",
							lv_solver_0_2,
							"org.xtext.example.mydsl1.MSat.CryptoMiniSAT");
						afterParserOrEnumRuleCall();
					}
					    |
					{
						newCompositeNode(grammarAccess.getSATSolverAccess().getSolverMiniSATParserRuleCall_0_0_2());
					}
					lv_solver_0_3=ruleMiniSAT
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getSATSolverRule());
						}
						set(
							$current,
							"solver",
							lv_solver_0_3,
							"org.xtext.example.mydsl1.MSat.MiniSAT");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)
		(
			(
				{
					newCompositeNode(grammarAccess.getSATSolverAccess().getVersionSolverVersionParserRuleCall_1_0());
				}
				lv_version_1_0=ruleSolverVersion
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getSATSolverRule());
					}
					set(
						$current,
						"version",
						lv_version_1_0,
						"org.xtext.example.mydsl1.MSat.SolverVersion");
					afterParserOrEnumRuleCall();
				}
			)
		)?
	)
;

// Entry rule entryRuleSat4J
entryRuleSat4J returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getSat4JRule()); }
	iv_ruleSat4J=ruleSat4J
	{ $current=$iv_ruleSat4J.current; }
	EOF;

// Rule Sat4J
ruleSat4J returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				newCompositeNode(grammarAccess.getSat4JAccess().getVariantSat4JVariantEnumRuleCall_0());
			}
			lv_variant_0_0=ruleSat4JVariant
			{
				if ($current==null) {
					$current = createModelElementForParent(grammarAccess.getSat4JRule());
				}
				set(
					$current,
					"variant",
					lv_variant_0_0,
					"org.xtext.example.mydsl1.MSat.Sat4JVariant");
				afterParserOrEnumRuleCall();
			}
		)
	)
;

// Entry rule entryRuleSolverVersion
entryRuleSolverVersion returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getSolverVersionRule()); }
	iv_ruleSolverVersion=ruleSolverVersion
	{ $current=$iv_ruleSolverVersion.current; }
	EOF;

// Rule SolverVersion
ruleSolverVersion returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='version'
		{
			newLeafNode(otherlv_0, grammarAccess.getSolverVersionAccess().getVersionKeyword_0());
		}
		(
			(
				lv_version_1_0=RULE_STRING
				{
					newLeafNode(lv_version_1_0, grammarAccess.getSolverVersionAccess().getVersionSTRINGTerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getSolverVersionRule());
					}
					setWithLastConsumed(
						$current,
						"version",
						lv_version_1_0,
						"org.eclipse.xtext.common.Terminals.STRING");
				}
			)
		)
	)
;

// Entry rule entryRuleMiniSAT
entryRuleMiniSAT returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getMiniSATRule()); }
	iv_ruleMiniSAT=ruleMiniSAT
	{ $current=$iv_ruleMiniSAT.current; }
	EOF;

// Rule MiniSAT
ruleMiniSAT returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				lv_variant_0_0='minisat'
				{
					newLeafNode(lv_variant_0_0, grammarAccess.getMiniSATAccess().getVariantMinisatKeyword_0_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getMiniSATRule());
					}
					setWithLastConsumed($current, "variant", lv_variant_0_0, "minisat");
				}
			)
		)
		(
			(
				{
					newCompositeNode(grammarAccess.getMiniSATAccess().getParameterMiniSATParameterParserRuleCall_1_0());
				}
				lv_parameter_1_0=ruleMiniSATParameter
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getMiniSATRule());
					}
					set(
						$current,
						"parameter",
						lv_parameter_1_0,
						"org.xtext.example.mydsl1.MSat.MiniSATParameter");
					afterParserOrEnumRuleCall();
				}
			)
		)?
	)
;

// Entry rule entryRuleCryptoMiniSAT
entryRuleCryptoMiniSAT returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getCryptoMiniSATRule()); }
	iv_ruleCryptoMiniSAT=ruleCryptoMiniSAT
	{ $current=$iv_ruleCryptoMiniSAT.current; }
	EOF;

// Rule CryptoMiniSAT
ruleCryptoMiniSAT returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			lv_variant_0_0='cryptominisat'
			{
				newLeafNode(lv_variant_0_0, grammarAccess.getCryptoMiniSATAccess().getVariantCryptominisatKeyword_0());
			}
			{
				if ($current==null) {
					$current = createModelElement(grammarAccess.getCryptoMiniSATRule());
				}
				setWithLastConsumed($current, "variant", lv_variant_0_0, "cryptominisat");
			}
		)
	)
;

// Entry rule entryRuleMiniSATParameter
entryRuleMiniSATParameter returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getMiniSATParameterRule()); }
	iv_ruleMiniSATParameter=ruleMiniSATParameter
	{ $current=$iv_ruleMiniSATParameter.current; }
	EOF;

// Rule MiniSATParameter
ruleMiniSATParameter returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='rnd-freq'
		{
			newLeafNode(otherlv_0, grammarAccess.getMiniSATParameterAccess().getRndFreqKeyword_0());
		}
		(
			(
				lv_rndfreq_1_0=RULE_PROBA
				{
					newLeafNode(lv_rndfreq_1_0, grammarAccess.getMiniSATParameterAccess().getRndfreqPROBATerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getMiniSATParameterRule());
					}
					setWithLastConsumed(
						$current,
						"rndfreq",
						lv_rndfreq_1_0,
						"org.xtext.example.mydsl1.MSat.PROBA");
				}
			)
		)
	)
;

// Entry rule entryRuleBenchmark
entryRuleBenchmark returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getBenchmarkRule()); }
	iv_ruleBenchmark=ruleBenchmark
	{ $current=$iv_ruleBenchmark.current; }
	EOF;

// Rule Benchmark
ruleBenchmark returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getBenchmarkAccess().getBenchmarkDimacsParserRuleCall_0());
		}
		this_BenchmarkDimacs_0=ruleBenchmarkDimacs
		{
			$current = $this_BenchmarkDimacs_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getBenchmarkAccess().getBenchmarkFormulaParserRuleCall_1());
		}
		this_BenchmarkFormula_1=ruleBenchmarkFormula
		{
			$current = $this_BenchmarkFormula_1.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleBenchmarkDimacs
entryRuleBenchmarkDimacs returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getBenchmarkDimacsRule()); }
	iv_ruleBenchmarkDimacs=ruleBenchmarkDimacs
	{ $current=$iv_ruleBenchmarkDimacs.current; }
	EOF;

// Rule BenchmarkDimacs
ruleBenchmarkDimacs returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='benchmarkDIMACS'
		{
			newLeafNode(otherlv_0, grammarAccess.getBenchmarkDimacsAccess().getBenchmarkDIMACSKeyword_0());
		}
		(
			(
				(
					lv_dimacses_1_0=RULE_STRING
					{
						newLeafNode(lv_dimacses_1_0, grammarAccess.getBenchmarkDimacsAccess().getDimacsesSTRINGTerminalRuleCall_1_0_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getBenchmarkDimacsRule());
						}
						addWithLastConsumed(
							$current,
							"dimacses",
							lv_dimacses_1_0,
							"org.eclipse.xtext.common.Terminals.STRING");
					}
				)
			)
			(
				otherlv_2=','
				{
					newLeafNode(otherlv_2, grammarAccess.getBenchmarkDimacsAccess().getCommaKeyword_1_1_0());
				}
				(
					(
						lv_dimacses_3_0=RULE_STRING
						{
							newLeafNode(lv_dimacses_3_0, grammarAccess.getBenchmarkDimacsAccess().getDimacsesSTRINGTerminalRuleCall_1_1_1_0());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getBenchmarkDimacsRule());
							}
							addWithLastConsumed(
								$current,
								"dimacses",
								lv_dimacses_3_0,
								"org.eclipse.xtext.common.Terminals.STRING");
						}
					)
				)
			)*
		)
	)
;

// Entry rule entryRuleBenchmarkFormula
entryRuleBenchmarkFormula returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getBenchmarkFormulaRule()); }
	iv_ruleBenchmarkFormula=ruleBenchmarkFormula
	{ $current=$iv_ruleBenchmarkFormula.current; }
	EOF;

// Rule BenchmarkFormula
ruleBenchmarkFormula returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='benchmarkFormula'
		{
			newLeafNode(otherlv_0, grammarAccess.getBenchmarkFormulaAccess().getBenchmarkFormulaKeyword_0());
		}
		(
			(
				(
					{
						newCompositeNode(grammarAccess.getBenchmarkFormulaAccess().getExpressionsBiImplParserRuleCall_1_0_0());
					}
					lv_expressions_1_0=ruleBiImpl
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getBenchmarkFormulaRule());
						}
						add(
							$current,
							"expressions",
							lv_expressions_1_0,
							"org.xtext.example.mydsl1.MSat.BiImpl");
						afterParserOrEnumRuleCall();
					}
				)
			)
			(
				otherlv_2=','
				{
					newLeafNode(otherlv_2, grammarAccess.getBenchmarkFormulaAccess().getCommaKeyword_1_1_0());
				}
				(
					(
						{
							newCompositeNode(grammarAccess.getBenchmarkFormulaAccess().getExpressionsBiImplParserRuleCall_1_1_1_0());
						}
						lv_expressions_3_0=ruleBiImpl
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getBenchmarkFormulaRule());
							}
							add(
								$current,
								"expressions",
								lv_expressions_3_0,
								"org.xtext.example.mydsl1.MSat.BiImpl");
							afterParserOrEnumRuleCall();
						}
					)
				)
			)*
		)
	)
;

// Entry rule entryRuleBiImpl
entryRuleBiImpl returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getBiImplRule()); }
	iv_ruleBiImpl=ruleBiImpl
	{ $current=$iv_ruleBiImpl.current; }
	EOF;

// Rule BiImpl
ruleBiImpl returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getBiImplAccess().getImplParserRuleCall_0());
		}
		this_Impl_0=ruleImpl
		{
			$current = $this_Impl_0.current;
			afterParserOrEnumRuleCall();
		}
		(
			(
				{
					$current = forceCreateModelElementAndSet(
						grammarAccess.getBiImplAccess().getBiImplLeftAction_1_0(),
						$current);
				}
			)
			otherlv_2='<=>'
			{
				newLeafNode(otherlv_2, grammarAccess.getBiImplAccess().getLessThanSignEqualsSignGreaterThanSignKeyword_1_1());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getBiImplAccess().getRightImplParserRuleCall_1_2_0());
					}
					lv_right_3_0=ruleImpl
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getBiImplRule());
						}
						set(
							$current,
							"right",
							lv_right_3_0,
							"org.xtext.example.mydsl1.MSat.Impl");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)*
	)
;

// Entry rule entryRuleImpl
entryRuleImpl returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getImplRule()); }
	iv_ruleImpl=ruleImpl
	{ $current=$iv_ruleImpl.current; }
	EOF;

// Rule Impl
ruleImpl returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getImplAccess().getOrParserRuleCall_0());
		}
		this_Or_0=ruleOr
		{
			$current = $this_Or_0.current;
			afterParserOrEnumRuleCall();
		}
		(
			(
				{
					$current = forceCreateModelElementAndSet(
						grammarAccess.getImplAccess().getImplLeftAction_1_0(),
						$current);
				}
			)
			otherlv_2='=>'
			{
				newLeafNode(otherlv_2, grammarAccess.getImplAccess().getEqualsSignGreaterThanSignKeyword_1_1());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getImplAccess().getRightOrParserRuleCall_1_2_0());
					}
					lv_right_3_0=ruleOr
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getImplRule());
						}
						set(
							$current,
							"right",
							lv_right_3_0,
							"org.xtext.example.mydsl1.MSat.Or");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)*
	)
;

// Entry rule entryRuleOr
entryRuleOr returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getOrRule()); }
	iv_ruleOr=ruleOr
	{ $current=$iv_ruleOr.current; }
	EOF;

// Rule Or
ruleOr returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getOrAccess().getAndParserRuleCall_0());
		}
		this_And_0=ruleAnd
		{
			$current = $this_And_0.current;
			afterParserOrEnumRuleCall();
		}
		(
			(
				{
					$current = forceCreateModelElementAndSet(
						grammarAccess.getOrAccess().getOrLeftAction_1_0(),
						$current);
				}
			)
			otherlv_2='v'
			{
				newLeafNode(otherlv_2, grammarAccess.getOrAccess().getVKeyword_1_1());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getOrAccess().getRightAndParserRuleCall_1_2_0());
					}
					lv_right_3_0=ruleAnd
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getOrRule());
						}
						set(
							$current,
							"right",
							lv_right_3_0,
							"org.xtext.example.mydsl1.MSat.And");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)*
	)
;

// Entry rule entryRuleAnd
entryRuleAnd returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getAndRule()); }
	iv_ruleAnd=ruleAnd
	{ $current=$iv_ruleAnd.current; }
	EOF;

// Rule And
ruleAnd returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getAndAccess().getNandParserRuleCall_0());
		}
		this_Nand_0=ruleNand
		{
			$current = $this_Nand_0.current;
			afterParserOrEnumRuleCall();
		}
		(
			(
				{
					$current = forceCreateModelElementAndSet(
						grammarAccess.getAndAccess().getAndLeftAction_1_0(),
						$current);
				}
			)
			otherlv_2='^'
			{
				newLeafNode(otherlv_2, grammarAccess.getAndAccess().getCircumflexAccentKeyword_1_1());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getAndAccess().getRightNandParserRuleCall_1_2_0());
					}
					lv_right_3_0=ruleNand
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getAndRule());
						}
						set(
							$current,
							"right",
							lv_right_3_0,
							"org.xtext.example.mydsl1.MSat.Nand");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)*
	)
;

// Entry rule entryRuleNand
entryRuleNand returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getNandRule()); }
	iv_ruleNand=ruleNand
	{ $current=$iv_ruleNand.current; }
	EOF;

// Rule Nand
ruleNand returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getNandAccess().getPrimaryParserRuleCall_0());
		}
		this_Primary_0=rulePrimary
		{
			$current = $this_Primary_0.current;
			afterParserOrEnumRuleCall();
		}
		(
			(
				{
					$current = forceCreateModelElementAndSet(
						grammarAccess.getNandAccess().getNandLeftAction_1_0(),
						$current);
				}
			)
			(
				otherlv_2='|'
				{
					newLeafNode(otherlv_2, grammarAccess.getNandAccess().getVerticalLineKeyword_1_1_0());
				}
				    |
				otherlv_3='\u2191'
				{
					newLeafNode(otherlv_3, grammarAccess.getNandAccess().getUpwardsArrowKeyword_1_1_1());
				}
			)
			(
				(
					{
						newCompositeNode(grammarAccess.getNandAccess().getRightPrimaryParserRuleCall_1_2_0());
					}
					lv_right_4_0=rulePrimary
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getNandRule());
						}
						set(
							$current,
							"right",
							lv_right_4_0,
							"org.xtext.example.mydsl1.MSat.Primary");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)*
	)
;

// Entry rule entryRulePrimary
entryRulePrimary returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getPrimaryRule()); }
	iv_rulePrimary=rulePrimary
	{ $current=$iv_rulePrimary.current; }
	EOF;

// Rule Primary
rulePrimary returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			otherlv_0='('
			{
				newLeafNode(otherlv_0, grammarAccess.getPrimaryAccess().getLeftParenthesisKeyword_0_0());
			}
			{
				newCompositeNode(grammarAccess.getPrimaryAccess().getBiImplParserRuleCall_0_1());
			}
			this_BiImpl_1=ruleBiImpl
			{
				$current = $this_BiImpl_1.current;
				afterParserOrEnumRuleCall();
			}
			otherlv_2=')'
			{
				newLeafNode(otherlv_2, grammarAccess.getPrimaryAccess().getRightParenthesisKeyword_0_2());
			}
		)
		    |
		{
			newCompositeNode(grammarAccess.getPrimaryAccess().getNotParserRuleCall_1());
		}
		this_Not_3=ruleNot
		{
			$current = $this_Not_3.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getPrimaryAccess().getConstParserRuleCall_2());
		}
		this_Const_4=ruleConst
		{
			$current = $this_Const_4.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getPrimaryAccess().getVarParserRuleCall_3());
		}
		this_Var_5=ruleVar
		{
			$current = $this_Var_5.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleNot
entryRuleNot returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getNotRule()); }
	iv_ruleNot=ruleNot
	{ $current=$iv_ruleNot.current; }
	EOF;

// Rule Not
ruleNot returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			otherlv_0='!'
			{
				newLeafNode(otherlv_0, grammarAccess.getNotAccess().getExclamationMarkKeyword_0_0());
			}
			    |
			otherlv_1='~'
			{
				newLeafNode(otherlv_1, grammarAccess.getNotAccess().getTildeKeyword_0_1());
			}
		)
		{
			newCompositeNode(grammarAccess.getNotAccess().getPrimaryParserRuleCall_1());
		}
		this_Primary_2=rulePrimary
		{
			$current = $this_Primary_2.current;
			afterParserOrEnumRuleCall();
		}
		(
			{
				$current = forceCreateModelElementAndSet(
					grammarAccess.getNotAccess().getNotExpressionAction_2(),
					$current);
			}
		)
	)
;

// Entry rule entryRuleVar
entryRuleVar returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getVarRule()); }
	iv_ruleVar=ruleVar
	{ $current=$iv_ruleVar.current; }
	EOF;

// Rule Var
ruleVar returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			lv_id_0_0=RULE_ID
			{
				newLeafNode(lv_id_0_0, grammarAccess.getVarAccess().getIdIDTerminalRuleCall_0());
			}
			{
				if ($current==null) {
					$current = createModelElement(grammarAccess.getVarRule());
				}
				setWithLastConsumed(
					$current,
					"id",
					lv_id_0_0,
					"org.eclipse.xtext.common.Terminals.ID");
			}
		)
	)
;

// Entry rule entryRuleConst
entryRuleConst returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getConstRule()); }
	iv_ruleConst=ruleConst
	{ $current=$iv_ruleConst.current; }
	EOF;

// Rule Const
ruleConst returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				lv_val_0_1='true'
				{
					newLeafNode(lv_val_0_1, grammarAccess.getConstAccess().getValTrueKeyword_0_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getConstRule());
					}
					setWithLastConsumed($current, "val", lv_val_0_1, null);
				}
				    |
				lv_val_0_2='false'
				{
					newLeafNode(lv_val_0_2, grammarAccess.getConstAccess().getValFalseKeyword_0_1());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getConstRule());
					}
					setWithLastConsumed($current, "val", lv_val_0_2, null);
				}
			)
		)
	)
;

// Rule Sat4JVariant
ruleSat4JVariant returns [Enumerator current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			enumLiteral_0='sat4j-java'
			{
				$current = grammarAccess.getSat4JVariantAccess().getSAT4J_JAVAEnumLiteralDeclaration_0().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_0, grammarAccess.getSat4JVariantAccess().getSAT4J_JAVAEnumLiteralDeclaration_0());
			}
		)
		    |
		(
			enumLiteral_1='sat4j-jar'
			{
				$current = grammarAccess.getSat4JVariantAccess().getSAT4J_JAREnumLiteralDeclaration_1().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_1, grammarAccess.getSat4JVariantAccess().getSAT4J_JAREnumLiteralDeclaration_1());
			}
		)
		    |
		(
			enumLiteral_2='sat4j-maven'
			{
				$current = grammarAccess.getSat4JVariantAccess().getSAT4J_COMPEnumLiteralDeclaration_2().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_2, grammarAccess.getSat4JVariantAccess().getSAT4J_COMPEnumLiteralDeclaration_2());
			}
		)
	)
;

RULE_PROBA : ('1'|'0' (. RULE_INT)?);

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

fragment RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;
