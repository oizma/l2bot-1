#include "../source/hooks.au3"
#include "../conf/interface.au3"
#include "../conf/control.au3"
#include "../source/debug.au3"
#include "../source/functions.au3"
#include "../source/move.au3"
#include "../source/search.au3"
#include "../source/attack.au3"
#include "../source/items.au3"
#include "../source/timeout.au3"

; Main Loop
while true
	ExitOnDeath()
	
	Rest()

	SearchTarget()

	MoveToTarget()
	
	AttackLoop()
	
	for $i = 1 to $kTimeoutCount
		ProcessTimeout($i, $kTimeoutsArray[$i] * $kMinute)
	next
wend
