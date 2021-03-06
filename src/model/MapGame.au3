#include-once
#include <..\lib\AutoItObject.au3>
#include <..\util\ConstructArgs.au3>

Func _New_MapGame($__aArgs = Null)
	;
	$__object = IDispatch() ;
	$__object.__name = "MapGame" ;
	$__object.__des = "" ;
	$__object.__status = 1 ;
	;
	$__oArgs = _New_ConstructArgs($__aArgs) ;
	;
	$__object._nWidth = $__oArgs.arg();
	$__object._nHeight = $__oArgs.arg();
	$__object._nAmount = $__oArgs.arg();
	$__object._sFont = $__oArgs.arg();
	$__object._nFontSize = $__oArgs.arg();
	$__object._nTimeLevel = $__oArgs.arg();
	;
	$__object._nMaps = $__oArgs.arg();

	;
	$__object.__defineGetter("_toString", __MapGame_toString) ;
	$__object.__defineGetter("_getError", __MapGame_getError) ;
	;
	$__object.__lock() ;
	;
	Return $__object ;
EndFunc   ;==>_New_MapGame


Func __MapGame_getError($_oSelf)
	$__oParent = $_oSelf.parent ;
	Switch $__oParent.__status
		Case 1
			Return "Success" ;
	EndSwitch
EndFunc   ;==>_MapGame_errToString


Func __MapGame_toString($_oSelf)
	$__oParent = $_oSelf.parent ;
	Dim $__a = [$__oParent._nWidth, $__oParent._nHeight, $__oParent._nAmount, $__oParent._sFont, $__oParent._nFontSize, $__oParent._nTimeLevel] ; list object here...
	Return _AutoItObject_ArrayToString($__oParent.__name, $__a) ;
EndFunc   ;==>_MapGame_toString





