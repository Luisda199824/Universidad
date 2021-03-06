# -*- coding: utf-8 -*-
import ply.lex as lex
import sys

errores = 0

# -----------------------------------------------------------------------
# Lista de tokens. Esta lista identifica la lista completa de nombres de
# token que deben ser reconocidos por su lexer.

tokens = [
  # keywords
  'BEGIN', 'END', 'PROGRAM', 'FUNCTION', 'CONST', 'USES', 'VAR', 'READLN', 'WRITE', 'BREAK', 'CLRSCR', 'PUBLIC', 'CLASS', 'PRIVATE', 'NEW',

  # Control de flujo
  'WHILE', 'DO', 'IF', 'THEN', 'ELSE', 'FOR', 'TO', 'OF',

  # Operadores y delimitadores
  'DOT', 'COLON', 'APOSTROPHE', 
  'PLUS', 'MINUS', 'TIMES', 'DIVIDE', 'MOD',
  'ASSIGN', 'SEMI', 'LPARENT', 'RPARENT', 'COMMA',
  'LBRACE', 'RBRACE', 'LBLOCK', 'RBLOCK',

  # Operadores lógicos
  'EQ', 'NE', 'LT', 'LE', 'GT', 'GE', 'LNOT', 'LOR', 'LAND', 'LXOR',

  #Literales
  'INTEGER', 'BYTE', 'REAL', 'SINGLE', 'DOUBLE', 'STRING', 'BOOLEAN', 'ARRAY', 'CHAR', 'IP',

  # Others
  'ID', 'NUMBER', 'STRINGVAL', 'IPVAL'
]

# -----------------------------------------------------------------------
# Identificadores y Keywords

def t_BEGIN(t):
	r'[Bb][Ee][Gg][Ii][Nn]'
	return t

def t_BREAK(t):
	r'[Bb][Rr][Ee][Aa][Kk]'
	return t

def t_END(t):
	r'[Ee][Nn][Dd]'
	return t

def t_PROGRAM(t):
	r'[Pp][Rr][Oo][Gg][Rr][Aa][Mm]'
	return t

def t_FUNCTION(t):
	r'[Ff][Uu][Nn][Cc][Tt][Ii][Oo][Nn]'
	return t

def t_CONST(t):
	r'[Cc][Oo][Nn][Ss][Tt]'
	return t

def t_USES(t):
	r'[Uu][Ss][Ee][Ss]'
	return t

def t_WRITE(t):
	r'[Ww][Rr][Ii][Tt][Ee]([Ll][Nn])?'
	return t

def t_READLN(t):
	r'[Rr][Ee][Aa][Dd][Ll][Nn]'
	return t

# -----------------------------------------------------------------------
# Control de flujo
def t_WHILE(t):
	r'[Ww][Hh][Ii][Ll][Ee]'
	return t

def t_DO(t):
	r'[Dd][Oo]'
	return t

def t_VAR(t):
	r'[Vv][Aa][Rr]'
	return t

def t_IF(t):
	r'[Ii][Ff]'
	return t

def t_THEN(t):
	r'[Tt][Hh][Ee][Nn]'
	return t

def t_ELSE(t):
	r'[Ee][Ll][Ss][Ee]'
	return t

def t_FOR(t):
	r'[Ff][Oo][Rr]'
	return t

def t_TO(t):
	r'[Tt][Oo]'
	return t

def t_OF(t):
	r'[Oo][Ff]'
	return t

def t_MOD(t):
	r'[Mm][Oo][Dd]'
	pass
# -----------------------------------------------------------------------
# Operadores y delimitadores
t_DOT        = r'\.'
t_COLON      = r':'
t_APOSTROPHE = r'\''
t_PLUS       = r'\+'
t_MINUS      = r'-'
t_TIMES      = r'\*'
t_DIVIDE     = r'/'
t_ASSIGN     = r':='
t_SEMI       = r';'
t_LPARENT    = r'\('
t_RPARENT    = r'\)'
t_COMMA      = r'\,'
t_LBRACE     = r'\{'
t_RBRACE     = r'\}'
t_LBLOCK     = r'\['
t_RBLOCK     = r'\]'

# -----------------------------------------------------------------------
# Operadores lógicos
# 'EQ', 'NE', 'LT', 'LE', 'GT', 'GE', 'LNOT', 'LOR', 'LAND', 'LXOR',
t_EQ   = r'='
t_NE   = r'<>'
t_LT   = r'<'
t_LE   = r'<='
t_GT   = r'>'
t_GE   = r'>='
t_LNOT = r'[Nn][Oo][Tt]'
t_LAND = r'[Aa][Nn][Dd]'
t_LXOR = r'[Xx][Oo][Rr]'

# -----------------------------------------------------------------------
# Literales

def t_IP(t):
	r'[Ii][Pp]'
	return t
def t_INTEGER(t):
	r'[Ii][Nn][Tt][Ee][Gg][Ee][Rr]'
	return t
def t_BYTE(t):
	r'[Bb][Yy][Tt][Ee]'
	return t
def t_REAL(t):
	r'[Rr][Ee][Aa][Ll]'
	return t
def t_SINGLE(t):
	r'[Ss][Ii][Nn][Gg][Ll][Ee]'
	return t
def t_DOUBLE(t):
	r'[Dd][Oo][Uu][Bb][Ll][Ee]'
	return t
def t_STRING(t):
	r'[Ss][Tt][Rr][Ii][Nn][Gg]'
	return t
def t_BOOLEAN(t):
	r'[Bb][Oo][Oo][Ll][Ee][Aa][Nn]'
	return t
def t_ARRAY(t):
	r'[Aa][Rr][Aa][Yy]'
	return t
def t_CHAR(t):
	r'[Cc][Hh][Aa][Rr]'
	return t
def t_CLRSCR(t):
	r'[Cc][Ll][Rr][Ss][Cc][Rr]'
	return t
'PUBLIC', 'CLASS', 'PRIVATE',
def t_PUBLIC(t):
	r'[Pp][Uu][Bb][Ll][Ii][Cc]'
	return t
def t_PRIVATE(t):
	r'[Pp][Rr][Ii][Vv][Aa][Tt][Ee]'
	return t
def t_CLASS(t):
	r'[Cc][Ll][Aa][Ss][Ss]'
	return t
def t_NEW(t):
	r'[Nn][Ee][Ww]'
	return t

# -----------------------------------------------------------------------
# Others

def t_IPVAL(t):
	r'(([0-9]){1,3})\.(([0-9]){1,3})\.(([0-9]){1,3})\.(([0-9]){1,3})'
	return t

def t_NUMBER(t):
	r'\d+(.\d+)?'
	t.value = float(t.value)
	return t

def t_ID(t):
  r'\w+(_\d\w)*'
  return t

def t_STRINGVAL(t):
    r'".*"'
    t.value = t.value[1:-1]
    return t

def t_newline(t):
    r'\n+'
    t.lexer.lineno += len(t.value)

def t_comments(t):
    r'{(.|\n)*?}'
    t.lexer.lineno += t.value.count('\n')

def t_comments_C99(t):
    r'//(.)*?\n'
    t.lexer.lineno += 1

# -----------------------------------------------------------------------
# Errors
def t_error(t):
	print "Lexical error: %s" % (str(t.value[0]))
	errores += 1
	t.lexer.skip(1)
# -----------------------------------------------------------------------

t_ignore = ' \t'

def test(data, lexer):
	lexer.input(data)
	while True:
		tok = lexer.token()
		if not tok:
			break
		print (tok)

lexer = lex.lex()
 
if __name__ == '__main__':
	if (len(sys.argv) > 1):
		file = sys.argv[1]
	else:
		file = 'testPresentacion.pas'
	f = open(file, 'r')
	data = f.read()
	lexer.input(data)
	test(data, lexer)
	# raw_input()