/**
 * generated by Xtext 2.19.0
 */
package org.xtext.example.mydsl.ui.labeling;

/**
 * Provides labels for EObjects.
 * 
 * See https://www.eclipse.org/Xtext/documentation/304_ide_concepts.html#label-provider
 */
@SuppressWarnings("all")
public class MyDslLabelProvider extends DefaultEObjectLabelProvider {
  @Inject
  public MyDslLabelProvider(final AdapterFactoryLabelProvider delegate) {
    super(delegate);
  }
}
