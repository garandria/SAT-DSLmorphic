/*
 * generated by Xtext 2.19.0
 */
package fr.m1sif.dsl.ui.tests;

import com.google.inject.Injector;
import fr.m1sif.dsl.ui.internal.DslActivator;
import org.eclipse.xtext.testing.IInjectorProvider;

public class SatUiInjectorProvider implements IInjectorProvider {

	@Override
	public Injector getInjector() {
		return DslActivator.getInstance().getInjector("fr.m1sif.dsl.Sat");
	}

}