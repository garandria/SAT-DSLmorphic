/*
 * generated by Xtext 2.19.0
 */
package org.xtext.example.mydsl1.tests.dera

import com.google.inject.Inject
import org.eclipse.xtext.testing.InjectWith
import org.eclipse.xtext.testing.extensions.InjectionExtension
import org.eclipse.xtext.testing.util.ParseHelper
import org.junit.jupiter.api.Assertions
import org.junit.jupiter.api.Test
import org.junit.jupiter.api.^extension.ExtendWith
import org.xtext.example.mydsl1.mSat.SATMorphic
import org.xtext.example.mydsl1.tests.MSatInjectorProvider
import org.xtext.example.mydsl1.mSat.BenchmarkFormula

@ExtendWith(InjectionExtension)
@InjectWith(MSatInjectorProvider)
class MSatParsingTest {
	@Inject
	ParseHelper<SATMorphic> parseHelper
	
	@Test
	def void PrintDimacsModel4() {
		val result = parseHelper.parse('''
			solver sat4j-jar benchmarkFormula A ^ B ^ C
		''')
		var benchmark = result.benchmark as BenchmarkFormula;
		var dimacs = DimacsPrinter.dimacsPrinter(benchmark.expressions.get(0));
		Assertions.assertEquals(dimacs, "p cnf 3 3\n1 0\n2 0\n3 0")
	}
	
	@Test
	def void PrintDimacsModel1() {
		val result = parseHelper.parse('''
			solver sat4j-jar benchmarkFormula A v B
		''')
		var benchmark = result.benchmark as BenchmarkFormula;
		var dimacs = DimacsPrinter.dimacsPrinter(benchmark.expressions.get(0));
		Assertions.assertEquals(dimacs, "p cnf 2 1\n1 2 0")
	}	


}
