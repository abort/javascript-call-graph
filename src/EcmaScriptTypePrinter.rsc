module EcmaScriptTypePrinter

import EcmaScript;
import IO;

public str showTypes(tree) {
	str returnValue = "|";
	visit(tree) {
		case (Statement)`return <Expression e> <Terminator t>`: {
			returnValue += "Return [<e>]<t>|";
		}
		case (Statement)`return`: {
			returnValue += "Return|";
		}
		case (Statement)`return;`: {
			returnValue += "Return;|";
		}
		case (Statement)`;`: {
			returnValue += "Empty|";
		}
		case (Statement)`<Expression e>`: {
			returnValue += "Expression [<e>]|";
		}
		case (Statement)`<Expression e>;`: {
			returnValue += "Expression [<e>];|";
		}
	}
	return returnValue;
}