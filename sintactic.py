# -*- coding: utf-8 -*-
import ply.yacc as yacc
from analizer import tokens
import analizer
import sys

VERBOSE = 1
# Initialization Errors file ------
errors_file = open('error.txt', 'w')
errors_file.write('False')
errors_file.close()
# ---------------------------------

def p_program(p):
	'programa : PROGRAM ID SEMI declaration_initial BEGIN declarations END DOT'
	pass

def p_declaration_initial(p):
	'''declaration_initial : uses_declaration
			| declaracion_variables
			| uses_declaration declaration_initial
			| declaracion_variables declaration_initial'''
	pass

def p_declaracion_variables(p):
	'''declaracion_variables : VAR var_declaration COLON type_specifier SEMI
			| VAR var_declaration COLON IP SEMI
			| const_declaration'''
	pass

def p_const_declaration(p):
	'const_declaration : CONST ID NUMBER SEMI'
	pass

def p_var_declaration(p):
	'''var_declaration : ID
			| ID COMMA var_declaration'''
	pass

def p_type_specifier(p):
	'''type_specifier : INTEGER
			| CHAR
			| BYTE
			| REAL
			| SINGLE
			| DOUBLE
			| STRING
			| BOOLEAN
			| IP
			| ARRAY LBLOCK NUMBER DOT DOT NUMBER RBLOCK OF type_specifier SEMI'''
	pass

def p_uses_declaration(p):
	'uses_declaration : USES ID SEMI'
	pass

def p_declarations(p):
	'''declarations : write_declaration
			| write_declaration declarations
			| readln_declaration
			| readln_declaration declarations
			| declaracion_variables
			| declaracion_variables declarations
			| stament
			| stament declarations
			| var_assignation
			| var_assignation declarations
			| class_declaration
			| class_declaration declarations
			| functions_declarations
			| functions_declarations declarations
			| pointer_assignation
			| pointer_assignation declarations
			| class_assignation
			| class_assignation declarations'''
	pass

def p_class_assignation(p):
	'''class_assignation : ID ID EQ NEW ID LPARENT parameters_method RPARENT SEMI
			| ID ID EQ NEW ID LPARENT RPARENT SEMI'''
	pass

def p_pointer_assignation(p):
	'pointer_assignation : ID MINUS GT ID SEMI'
	pass

def p_class_declaration(p):
	'''class_declaration : op_empaquetamiento CLASS ID BEGIN class_statements END SEMI'''
	pass

def p_class_statements(p):
	'''class_statements : var_into_class
			| var_into_class class_statements
			| method_declaration
			| method_declaration class_statements'''
	pass

def p_var_into_class(p):
	'''var_into_class : op_empaquetamiento declaracion_variables'''
	pass

def p_method_declaration(p):
	'''method_declaration : op_empaquetamiento ID LPARENT parameters_method RPARENT BEGIN declarations END SEMI'''
	pass

def p_parameters_method(p):
	'''parameters_method : ID
			| ID COMMA parameters_method'''
	pass

def p_op_empaquetamiento(p):
	'''op_empaquetamiento : PUBLIC
			| PRIVATE'''
	pass

def p_var_assignation(p):
	'''var_assignation : array_assignation
			| op_var ASSIGN arith_operation SEMI
			| op_var ASSIGN STRINGVAL SEMI
			| op_var ASSIGN IPVAL SEMI
			| op_var ASSIGN op_var SEMI'''
	pass

def p_array_assignation(p):
	'''array_assignation : ID LBLOCK NUMBER RBLOCK ASSIGN operation SEMI
			| ID LBLOCK ID RBLOCK ASSIGN operation SEMI
			| ID LBLOCK array_assignation RBLOCK ASSIGN operation SEMI
			| array_call'''
	pass

def p_arith_operation(p):
	'''arith_operation : op_var op_arith op_var
			| op_var op_arith arith_operation
			| operation'''
	pass

def p_operation(p):
	'''operation : op_var
			| operation op_arith operation
			| LPARENT operation RPARENT'''
	pass

def p_stament(p):
	'''stament : while_declaration
			| for_declaration
			| if_declaration
			| declarations ID ASSIGN
			| ID LPARENT declarations RPARENT
			| BREAK SEMI'''
	pass

def p_while_declaration(p):
	'while_declaration : WHILE relation DO BEGIN declarations END SEMI'
	pass

def p_for_declaration(p):
	'for_declaration : FOR assignation TO op_var DO BEGIN declarations END SEMI'
	pass

def p_function_call(p):
	'function_call : ID LPARENT var_declaration RPARENT'
	pass

def p_assignation(p):
	'assignation : op_var ASSIGN op_var'
	pass


def p_if_declaration(p):
	'if_declaration : IF relacion_if THEN BEGIN declarations else_stament END SEMI'
	pass

def p_relation(p):
	'''relation : op_var
			| operation
			| relation op_logic relation
			| LPARENT relation RPARENT'''
	pass

def p_relacion_if(p):
	'''relacion_if : relation
			| LPARENT op_var op_arith op_var RPARENT op_logic op_var'''
	pass

def p_else(p):
	'''else_stament : ELSE declarations
			| '''
	pass

def p_write_declaration(p):
	'''write_declaration : WRITE LPARENT op_write RPARENT SEMI'''
	pass

def p_op_write(p):
	'''op_write : string_sentence
			| op_var
			| array_call
			| op_write COMMA op_write'''
	pass

def p_array_call(p):
	'array_call : ID LBLOCK op_var RBLOCK'
	pass

def p_string_sentence(p):
	'''string_sentence : STRINGVAL
			| STRINGVAL PLUS ID
			| STRINGVAL PLUS string_sentence'''
	pass

def p_readln_declaration(p):
	'''readln_declaration : READLN LPARENT ID RPARENT SEMI'''
	pass

def p_op_var(p):
	'''op_var : ID
		| NUMBER
		| array_call
		| function_call'''
	pass

def p_op_arith(p):
	'''op_arith : PLUS
			| MINUS
			| TIMES
			| DIVIDE
			| MOD'''
	pass

def p_op_logic(p):
	'''op_logic : EQ
			| NE
			| LT
			| LE
			| GT
			| GE
			| LNOT
			| LOR
			| LAND
			| LXOR'''
	pass

def p_function_declarations(p):
	'functions_declarations : FUNCTION ID LPARENT parameters RPARENT COLON type_specifier SEMI VAR declaration_function_initial BEGIN declarations END SEMI'
	pass

def p_parameters(p):
	'''parameters : ID end_parameters
			| ID COMMA parameters'''
	pass

def p_end_parameters(p):
	'end_parameters : COLON type_specifier'
	pass

def p_declaration_function_initial(p):
	'''declaration_function_initial : ID COLON type_specifier SEMI
			| ID COLON type_specifier SEMI declaration_function_initial'''
	pass

def p_error(p):
	errors_file = open('error.txt', 'w')
	errors_file.write('True')
	errors_file.close()
	if VERBOSE:
		if p is not None:
			print ("ERROR SINTACTICO EN LA LINEA " + str(p.lexer.lineno) + " NO SE ESPERABA " + str(p.value))
		else:
			print ("ERROR SINTACTICO EN LA LINEA: " + str(cminus_lexer.lexer.lineno))
	else:
		raise Exception('syntax', 'error')

if __name__ == '__main__':
	file_name = 'testPresentacion.pas'

	file = open(file_name, 'r')
	data = file.read()
	parser = yacc.yacc()
	parser.parse(data, tracking=True)
	# Errors File Review------------
	errors_file = open('error.txt', 'r')
	errores = errors_file.read()
	errors_file.close()
	# Finished Errors File Review --
	if errores == "False":
		print("No hay errores sintacticos")