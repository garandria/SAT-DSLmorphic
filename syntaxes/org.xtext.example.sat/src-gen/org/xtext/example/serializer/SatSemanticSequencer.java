/*
 * generated by Xtext 2.14.0
 */
package org.xtext.example.serializer;

import java.util.Set;
import org.xtext.example.sat.Atom;
import org.xtext.example.sat.ExprBin;
import org.xtext.example.sat.ExprUn;
import org.xtext.example.sat.Formula;
import org.xtext.example.sat.SatPackage;
import org.xtext.example.sat.Var;
import org.xtext.example.services.SatGrammarAccess;

@SuppressWarnings("all")
public class SatSemanticSequencer extends AbstractDelegatingSemanticSequencer {

	@Inject
	private SatGrammarAccess grammarAccess;
	
	@Override
	public void sequence(ISerializationContext context, EObject semanticObject) {
		EPackage epackage = semanticObject.eClass().getEPackage();
		ParserRule rule = context.getParserRule();
		Action action = context.getAssignedAction();
		Set<Parameter> parameters = context.getEnabledBooleanParameters();
		if (epackage == SatPackage.eINSTANCE)
			switch (semanticObject.eClass().getClassifierID()) {
			case SatPackage.ATOM:
				sequence_Atom(context, (Atom) semanticObject); 
				return; 
			case SatPackage.EXPR_BIN:
				sequence_ExprBin(context, (ExprBin) semanticObject); 
				return; 
			case SatPackage.EXPR_UN:
				sequence_ExprUn(context, (ExprUn) semanticObject); 
				return; 
			case SatPackage.FILE:
				sequence_File(context, (File) semanticObject); 
				return; 
			case SatPackage.FORMULA:
				sequence_Formula(context, (Formula) semanticObject); 
				return; 
			case SatPackage.VAR:
				sequence_Var(context, (Var) semanticObject); 
				return; 
			}
		if (errorAcceptor != null)
			errorAcceptor.accept(diagnosticProvider.createInvalidContextOrTypeDiagnostic(semanticObject, context));
	}
	
	/**
	 * Contexts:
	 *     Atom returns Atom
	 *
	 * Constraint:
	 *     name=ID
	 */
	protected void sequence_Atom(ISerializationContext context, Atom semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, SatPackage.Literals.ATOM__NAME) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, SatPackage.Literals.ATOM__NAME));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getAtomAccess().getNameIDTerminalRuleCall_0(), semanticObject.getName());
		feeder.finish();
	}
	
	
	/**
	 * Contexts:
	 *     Expr returns ExprBin
	 *     ExprBin returns ExprBin
	 *
	 * Constraint:
	 *     (exprL=Expr op=BinOp exprR=Expr)
	 */
	protected void sequence_ExprBin(ISerializationContext context, ExprBin semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, SatPackage.Literals.EXPR_BIN__EXPR_L) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, SatPackage.Literals.EXPR_BIN__EXPR_L));
			if (transientValues.isValueTransient(semanticObject, SatPackage.Literals.EXPR_BIN__OP) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, SatPackage.Literals.EXPR_BIN__OP));
			if (transientValues.isValueTransient(semanticObject, SatPackage.Literals.EXPR_BIN__EXPR_R) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, SatPackage.Literals.EXPR_BIN__EXPR_R));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getExprBinAccess().getExprLExprParserRuleCall_1_0(), semanticObject.getExprL());
		feeder.accept(grammarAccess.getExprBinAccess().getOpBinOpParserRuleCall_2_0(), semanticObject.getOp());
		feeder.accept(grammarAccess.getExprBinAccess().getExprRExprParserRuleCall_3_0(), semanticObject.getExprR());
		feeder.finish();
	}
	
	
	/**
	 * Contexts:
	 *     Expr returns ExprUn
	 *     ExprUn returns ExprUn
	 *
	 * Constraint:
	 *     (op=UnOp expr=Expr)
	 */
	protected void sequence_ExprUn(ISerializationContext context, ExprUn semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, SatPackage.Literals.EXPR_UN__OP) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, SatPackage.Literals.EXPR_UN__OP));
			if (transientValues.isValueTransient(semanticObject, SatPackage.Literals.EXPR_UN__EXPR) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, SatPackage.Literals.EXPR_UN__EXPR));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getExprUnAccess().getOpUnOpParserRuleCall_1_0(), semanticObject.getOp());
		feeder.accept(grammarAccess.getExprUnAccess().getExprExprParserRuleCall_2_0(), semanticObject.getExpr());
		feeder.finish();
	}
	
	
	/**
	 * Contexts:
	 *     File returns File
	 *
	 * Constraint:
	 *     file+=Formula+
	 */
	protected void sequence_File(ISerializationContext context, File semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Contexts:
	 *     Formula returns Formula
	 *
	 * Constraint:
	 *     form=Expr?
	 */
	protected void sequence_Formula(ISerializationContext context, Formula semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Contexts:
	 *     Expr returns Var
	 *     Var returns Var
	 *
	 * Constraint:
	 *     (atom=Atom | val=Val)
	 */
	protected void sequence_Var(ISerializationContext context, Var semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
}
