/**
 * generated by Xtext 2.19.0
 */
package org.xtext.example.mydsl.sat;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Model</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.xtext.example.mydsl.sat.Model#getSolver <em>Solver</em>}</li>
 *   <li>{@link org.xtext.example.mydsl.sat.Model#getExpression <em>Expression</em>}</li>
 *   <li>{@link org.xtext.example.mydsl.sat.Model#getFile <em>File</em>}</li>
 * </ul>
 *
 * @see org.xtext.example.mydsl.sat.SatPackage#getModel()
 * @model
 * @generated
 */
public interface Model extends EObject
{
  /**
   * Returns the value of the '<em><b>Solver</b></em>' attribute.
   * The literals are from the enumeration {@link org.xtext.example.mydsl.sat.Solver}.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Solver</em>' attribute.
   * @see org.xtext.example.mydsl.sat.Solver
   * @see #setSolver(Solver)
   * @see org.xtext.example.mydsl.sat.SatPackage#getModel_Solver()
   * @model
   * @generated
   */
  Solver getSolver();

  /**
   * Sets the value of the '{@link org.xtext.example.mydsl.sat.Model#getSolver <em>Solver</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Solver</em>' attribute.
   * @see org.xtext.example.mydsl.sat.Solver
   * @see #getSolver()
   * @generated
   */
  void setSolver(Solver value);

  /**
   * Returns the value of the '<em><b>Expression</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Expression</em>' containment reference.
   * @see #setExpression(Expression)
   * @see org.xtext.example.mydsl.sat.SatPackage#getModel_Expression()
   * @model containment="true"
   * @generated
   */
  Expression getExpression();

  /**
   * Sets the value of the '{@link org.xtext.example.mydsl.sat.Model#getExpression <em>Expression</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Expression</em>' containment reference.
   * @see #getExpression()
   * @generated
   */
  void setExpression(Expression value);

  /**
   * Returns the value of the '<em><b>File</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>File</em>' containment reference.
   * @see #setFile(File)
   * @see org.xtext.example.mydsl.sat.SatPackage#getModel_File()
   * @model containment="true"
   * @generated
   */
  File getFile();

  /**
   * Sets the value of the '{@link org.xtext.example.mydsl.sat.Model#getFile <em>File</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>File</em>' containment reference.
   * @see #getFile()
   * @generated
   */
  void setFile(File value);

} // Model