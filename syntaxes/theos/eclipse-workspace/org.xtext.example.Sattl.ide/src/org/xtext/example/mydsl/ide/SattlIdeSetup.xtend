/*
 * generated by Xtext 2.19.0
 */
package org.xtext.example.mydsl.ide

import com.google.inject.Guice
import org.eclipse.xtext.util.Modules2
import org.xtext.example.mydsl.SattlRuntimeModule
import org.xtext.example.mydsl.SattlStandaloneSetup

/**
 * Initialization support for running Xtext languages as language servers.
 */
class SattlIdeSetup extends SattlStandaloneSetup {

	override createInjector() {
		Guice.createInjector(Modules2.mixin(new SattlRuntimeModule, new SattlIdeModule))
	}
	
}
