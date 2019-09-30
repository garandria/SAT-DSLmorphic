/**
 * generated by Xtext 2.19.0
 */
package org.xtext.example.mydsl.ide;

import com.google.inject.Guice;
import com.google.inject.Injector;
import org.eclipse.xtext.util.Modules2;
import org.xtext.example.mydsl.SattlRuntimeModule;
import org.xtext.example.mydsl.SattlStandaloneSetup;
import org.xtext.example.mydsl.ide.SattlIdeModule;

/**
 * Initialization support for running Xtext languages as language servers.
 */
@SuppressWarnings("all")
public class SattlIdeSetup extends SattlStandaloneSetup {
  @Override
  public Injector createInjector() {
    SattlRuntimeModule _sattlRuntimeModule = new SattlRuntimeModule();
    SattlIdeModule _sattlIdeModule = new SattlIdeModule();
    return Guice.createInjector(Modules2.mixin(_sattlRuntimeModule, _sattlIdeModule));
  }
}
