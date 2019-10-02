/*
 * generated by Xtext 2.19.0
 */
package org.xtext.example.mydsl.GJ_MC_Tests

import com.google.inject.Inject
import org.eclipse.xtext.testing.InjectWith
import org.eclipse.xtext.testing.extensions.InjectionExtension
import org.eclipse.xtext.testing.util.ParseHelper
import org.junit.jupiter.api.Assertions
import org.junit.jupiter.api.Test
import org.junit.jupiter.api.^extension.ExtendWith
import org.xtext.example.mydsl.generator.PrettyPrinter
import org.xtext.example.mydsl.generator.SATUtils
import org.xtext.example.mydsl.generator.Simplifier
import org.xtext.example.mydsl.sat.Expression
import org.xtext.example.mydsl.tests.SatInjectorProvider

@ExtendWith(InjectionExtension)
@InjectWith(SatInjectorProvider)
class SatSimplifyTest {
	@Inject
	ParseHelper<Expression> parseHelper
	
	@Test
	def void basicImpliesTest() {
		val result = parseHelper.parse('''
			A => B
		''')
		val simplified = Simplifier.simplify(result)
		
		val oracle = parseHelper.parse('''
			!A v B
		''')
		Assertions.assertNotNull(result)
		val errors = result.eResource.errors
		Assertions.assertTrue(errors.isEmpty, '''Unexpected errors: «errors.join(", ")»''')
		
		Assertions.assertTrue(SATUtils.equals(simplified, oracle))
	}
	
	@Test
	def void basicBiImplTest() {
		val result = parseHelper.parse('''
			A <=> B
		''')
		val simplified = Simplifier.simplify(result)
		
		val oracle = parseHelper.parse('''
			A ^ B v !A ^ !B
		''')
		Assertions.assertNotNull(result)
		val errors = result.eResource.errors
		Assertions.assertTrue(errors.isEmpty, '''Unexpected errors: «errors.join(", ")»''')
		
		Assertions.assertTrue(SATUtils.equals(simplified, oracle))
	}
	
	@Test
	def void basicNandTest() {
		val result = parseHelper.parse('''
			A | B
		''')
		val simplified = Simplifier.simplify(result)
		
		val oracle = parseHelper.parse('''
			!(A ^ B)
		''')
		Assertions.assertNotNull(result)
		val errors = result.eResource.errors
		Assertions.assertTrue(errors.isEmpty, '''Unexpected errors: «errors.join(", ")»''')
		
		Assertions.assertTrue(SATUtils.equals(simplified, oracle))
	}
	
	@Test
	def void basicNotConstantTest() {
		val result = parseHelper.parse('''
			!true
		''')
		val simplified = Simplifier.simplify(result)
		
		val oracle = parseHelper.parse('''
			false
		''')
		Assertions.assertNotNull(result)
		val errors = result.eResource.errors
		Assertions.assertTrue(errors.isEmpty, '''Unexpected errors: «errors.join(", ")»''')
		
		Assertions.assertTrue(SATUtils.equals(simplified, oracle))
	}
	
	@Test
	def void basicAndTrueConstantTest() {
		val result = parseHelper.parse('''
			A ^ true
		''')
		val simplified = Simplifier.simplify(result)
		
		val oracle = parseHelper.parse('''
			A
		''')
		Assertions.assertNotNull(result)
		val errors = result.eResource.errors
		Assertions.assertTrue(errors.isEmpty, '''Unexpected errors: «errors.join(", ")»''')
		
		Assertions.assertTrue(SATUtils.equals(simplified, oracle))
	}
	
	@Test
	def void basicAndFalseConstantTest() {
		val result = parseHelper.parse('''
			A ^ false
		''')
		val simplified = Simplifier.simplify(result)
		
		val oracle = parseHelper.parse('''
			false
		''')
		Assertions.assertNotNull(result)
		val errors = result.eResource.errors
		Assertions.assertTrue(errors.isEmpty, '''Unexpected errors: «errors.join(", ")»''')
		
		Assertions.assertTrue(SATUtils.equals(simplified, oracle))
	}
	
	@Test
	def void basicOrTrueConstantTest() {
		val result = parseHelper.parse('''
			A v true
		''')
		val simplified = Simplifier.simplify(result)
		
		val oracle = parseHelper.parse('''
			true
		''')
		Assertions.assertNotNull(result)
		val errors = result.eResource.errors
		Assertions.assertTrue(errors.isEmpty, '''Unexpected errors: «errors.join(", ")»''')
		
		Assertions.assertTrue(SATUtils.equals(simplified, oracle))
	}
	
	@Test
	def void basicOrFalseConstantTest() {
		val result = parseHelper.parse('''
			A v false
		''')
		val simplified = Simplifier.simplify(result)
		
		val oracle = parseHelper.parse('''
			A
		''')
		Assertions.assertNotNull(result)
		val errors = result.eResource.errors
		Assertions.assertTrue(errors.isEmpty, '''Unexpected errors: «errors.join(", ")»''')
		
		Assertions.assertTrue(SATUtils.equals(simplified, oracle))
	}
	
	@Test
	def void ComplexTransformationTest() {
		val result = parseHelper.parse('''
			(A | B) => (C <=> D)
		''')
		val simplified = Simplifier.simplify(result)
		
		val oracle = parseHelper.parse('''
			!!(A ^ B) v ((C ^ D) v (!C ^ !D))
		''')
		Assertions.assertNotNull(result)
		val errors = result.eResource.errors
		Assertions.assertTrue(errors.isEmpty, '''Unexpected errors: «errors.join(", ")»''')
		
		Assertions.assertTrue(SATUtils.equals(simplified, oracle))
	}
	
	@Test
	def void ComplexTransformationWithConstantTest() {
		val result = parseHelper.parse('''
			(false | B) <=> (C => true)
		''')
		val simplified = Simplifier.simplify(result)
		
		val oracle = parseHelper.parse('''
			true
		''')
		Assertions.assertNotNull(result)
		val errors = result.eResource.errors
		Assertions.assertTrue(errors.isEmpty, '''Unexpected errors: «errors.join(", ")»''')
		
		Assertions.assertTrue(SATUtils.equals(simplified, oracle))//, PrettyPrinter.prettyPrint(simplified))
	}
}
