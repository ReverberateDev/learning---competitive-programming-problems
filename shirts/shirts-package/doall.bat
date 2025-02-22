rem   *** validation ***
call scripts\run-validator-tests.bat
call scripts\run-checker-tests.bat

rem    *** tests ***
md tests
call scripts\gen-input-via-stdout.bat "files\killergen.exe -n 300000 -q 300000 -queryChance 100 -numOfColours 10" "tests\02" 2
call scripts\gen-input-via-stdout.bat "files\killergen.exe -n 300000 -q 300000 -queryChance 100 -numOfColours 30" "tests\03" 3
call scripts\gen-input-via-stdout.bat "files\killergen.exe -n 300000 -q 300000 -queryChance 100 -numOfColours 15" "tests\04" 4
call scripts\gen-input-via-stdout.bat "files\killergen.exe -n 300000 -q 300000 -queryChance 100 -numOfColours 5" "tests\05" 5
call scripts\gen-input-via-stdout.bat "files\killergen.exe -n 300000 -q 300000 -queryChance 100 -numOfColours 1" "tests\06" 6
call scripts\gen-input-via-stdout.bat "files\killergen.exe -n 10 -q 300000 -queryChance 100 -numOfColours 3" "tests\07" 7
call scripts\gen-input-via-stdout.bat "files\killergen.exe -n 5 -q 300000 -queryChance 100 -numOfColours 1" "tests\08" 8
call scripts\gen-input-via-stdout.bat "files\killergen.exe -n 10000 -q 10000 -queryChance 50 -numOfColours 10" "tests\09" 9
call scripts\gen-input-via-stdout.bat "files\killergen.exe -n 10000 -q 10000 -queryChance 30 -numOfColours 30" "tests\10" 10
call scripts\gen-input-via-stdout.bat "files\killergen.exe -n 10000 -q 10000 -queryChance 10 -numOfColours 15" "tests\11" 11
call scripts\gen-input-via-stdout.bat "files\killergen.exe -n 10000 -q 10000 -queryChance 70 -numOfColours 5" "tests\12" 12
call scripts\gen-input-via-stdout.bat "files\killergen.exe -n 10000 -q 10000 -queryChance 90 -numOfColours 1" "tests\13" 13
call scripts\gen-input-via-stdout.bat "files\killergen.exe -n 10 -q 10000 -queryChance 20 -numOfColours 3" "tests\14" 14
call scripts\gen-input-via-stdout.bat "files\killergen.exe -n 10000 -q 10000 -queryChance 50 -numOfColours 1" "tests\15" 15
call scripts\gen-input-via-stdout.bat "files\killergen.exe -n 10000 -q 10000 -queryChance 10 -numOfColours 5" "tests\16" 16
call scripts\gen-input-via-stdout.bat "files\killergen.exe -n 300000 -q 300000 -queryChance 50 -numOfColours 10" "tests\17" 17
call scripts\gen-input-via-stdout.bat "files\killergen.exe -n 300000 -q 300000 -queryChance 30 -numOfColours 30" "tests\18" 18
call scripts\gen-input-via-stdout.bat "files\killergen.exe -n 300000 -q 300000 -queryChance 30 -numOfColours 300" "tests\19" 19
call scripts\gen-input-via-stdout.bat "files\killergen.exe -n 300000 -q 300000 -queryChance 30 -numOfColours 3000" "tests\20" 20
call scripts\gen-input-via-stdout.bat "files\killergen.exe -n 300000 -q 300000 -queryChance 30 -numOfColours 30000" "tests\21" 21
call scripts\gen-input-via-stdout.bat "files\killergen.exe -n 300000 -q 300000 -queryChance 30 -numOfColours 300000" "tests\22" 22
call scripts\gen-input-via-stdout.bat "files\killergen.exe -n 300000 -q 300000 -queryChance 10 -numOfColours 15" "tests\23" 23
call scripts\gen-input-via-stdout.bat "files\killergen.exe -n 300000 -q 300000 -queryChance 70 -numOfColours 5" "tests\24" 24
call scripts\gen-input-via-stdout.bat "files\killergen.exe -n 300000 -q 300000 -queryChance 90 -numOfColours 1" "tests\25" 25
call scripts\gen-input-via-stdout.bat "files\killergen.exe -n 10 -q 300000 -queryChance 20 -numOfColours 3" "tests\26" 26
call scripts\gen-input-via-stdout.bat "files\killergen.exe -n 300000 -q 300000 -queryChance 50 -numOfColours 1" "tests\27" 27
call scripts\gen-input-via-stdout.bat "files\killergen.exe -n 300000 -q 300000 -queryChance 10 -numOfColours 5" "tests\28" 28
call scripts\gen-answer.bat tests\01 tests\01.a "tests" ""
call scripts\gen-answer.bat tests\02 tests\02.a "tests" ""
call scripts\gen-answer.bat tests\03 tests\03.a "tests" ""
call scripts\gen-answer.bat tests\04 tests\04.a "tests" ""
call scripts\gen-answer.bat tests\05 tests\05.a "tests" ""
call scripts\gen-answer.bat tests\06 tests\06.a "tests" ""
call scripts\gen-answer.bat tests\07 tests\07.a "tests" ""
call scripts\gen-answer.bat tests\08 tests\08.a "tests" ""
call scripts\gen-answer.bat tests\09 tests\09.a "tests" ""
call scripts\gen-answer.bat tests\10 tests\10.a "tests" ""
call scripts\gen-answer.bat tests\11 tests\11.a "tests" ""
call scripts\gen-answer.bat tests\12 tests\12.a "tests" ""
call scripts\gen-answer.bat tests\13 tests\13.a "tests" ""
call scripts\gen-answer.bat tests\14 tests\14.a "tests" ""
call scripts\gen-answer.bat tests\15 tests\15.a "tests" ""
call scripts\gen-answer.bat tests\16 tests\16.a "tests" ""
call scripts\gen-answer.bat tests\17 tests\17.a "tests" ""
call scripts\gen-answer.bat tests\18 tests\18.a "tests" ""
call scripts\gen-answer.bat tests\19 tests\19.a "tests" ""
call scripts\gen-answer.bat tests\20 tests\20.a "tests" ""
call scripts\gen-answer.bat tests\21 tests\21.a "tests" ""
call scripts\gen-answer.bat tests\22 tests\22.a "tests" ""
call scripts\gen-answer.bat tests\23 tests\23.a "tests" ""
call scripts\gen-answer.bat tests\24 tests\24.a "tests" ""
call scripts\gen-answer.bat tests\25 tests\25.a "tests" ""
call scripts\gen-answer.bat tests\26 tests\26.a "tests" ""
call scripts\gen-answer.bat tests\27 tests\27.a "tests" ""
call scripts\gen-answer.bat tests\28 tests\28.a "tests" ""

