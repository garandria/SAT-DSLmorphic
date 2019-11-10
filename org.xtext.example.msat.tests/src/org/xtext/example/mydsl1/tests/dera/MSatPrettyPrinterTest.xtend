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
class MSatPrettyPrinterTest {
	@Inject
	ParseHelper<SATMorphic> parseHelper
	
	@Test
	def void pp0() {
		val result = parseHelper.parse('''
			solver sat4j-jar benchmarkFormula A ^ B
		''')
		var benchmark = result.benchmark as BenchmarkFormula;
		var pp = PrettyPrinter.prettyPrinter(benchmark.expressions.get(0));
		Assertions.assertEquals(pp, "(AND A=null B=null)")
	}
	
	@Test
	def void pp1() {
		val result = parseHelper.parse('''
			solver sat4j-jar benchmarkFormula A v B
		''')
		var benchmark = result.benchmark as BenchmarkFormula;
		var pp = PrettyPrinter.prettyPrinter(benchmark.expressions.get(0));
		Assertions.assertEquals(pp, "(OR A=null B=null)")
	}	

	@Test
	def void pp2() {
		val result = parseHelper.parse('''
			solver sat4j-jar benchmarkFormula A => B
		''')
		var benchmark = result.benchmark as BenchmarkFormula;
		var pp = PrettyPrinter.prettyPrinter(benchmark.expressions.get(0));
		Assertions.assertEquals(pp, "(IMPL A=null B=null)")
	}	

	@Test
	def void pp3() {
		val result = parseHelper.parse('''
			solver sat4j-jar benchmarkFormula A <=> B
		''')
		var benchmark = result.benchmark as BenchmarkFormula;
		var pp = PrettyPrinter.prettyPrinter(benchmark.expressions.get(0));
		Assertions.assertEquals(pp, "(BIIMPL A=null B=null)")
	}
	
	@Test
	def void pp4() {
		val result = parseHelper.parse('''
			solver sat4j-jar benchmarkFormula A ↑ B
		''')
		var benchmark = result.benchmark as BenchmarkFormula;
		var pp = PrettyPrinter.prettyPrinter(benchmark.expressions.get(0));
		Assertions.assertEquals(pp, "(NAND A=null B=null)")
	}
	
	@Test
	def void pp5() {
		val result = parseHelper.parse('''
			solver sat4j-jar benchmarkFormula A | B
		''')
		var benchmark = result.benchmark as BenchmarkFormula;
		var pp = PrettyPrinter.prettyPrinter(benchmark.expressions.get(0));
		Assertions.assertEquals(pp, "(NAND A=null B=null)")
	}
	
	@Test
	def void pp6() {
		val result = parseHelper.parse('''
			solver sat4j-jar benchmarkFormula !A
		''')
		var benchmark = result.benchmark as BenchmarkFormula;
		var pp = PrettyPrinter.prettyPrinter(benchmark.expressions.get(0));
		Assertions.assertEquals(pp, "(NOT A=null)")
	}	
	
	@Test
	def void pp7() {
		val result = parseHelper.parse('''
			solver sat4j-jar benchmarkFormula A ^ !B
		''')
		var benchmark = result.benchmark as BenchmarkFormula;
		var pp = PrettyPrinter.prettyPrinter(benchmark.expressions.get(0));
		Assertions.assertEquals(pp, "(AND A=null (NOT B=null))")
	}
}
