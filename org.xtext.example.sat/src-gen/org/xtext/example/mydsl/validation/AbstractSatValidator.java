/*
 * generated by Xtext 2.19.0
 */
package org.xtext.example.mydsl.validation;

import java.util.ArrayList;
import java.util.List;

public abstract class AbstractSatValidator extends AbstractDeclarativeValidator {
	
	@Override
	protected List<EPackage> getEPackages() {
		List<EPackage> result = new ArrayList<EPackage>();
		result.add(org.xtext.example.mydsl.sat.SatPackage.eINSTANCE);
		return result;
	}
}
