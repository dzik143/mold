echo Generating LALR(1) parser code...
call unicc -l MoldParser -b _Parser Mold.par

echo Generating LALR(1) parser tables...
call unicc -l MoldTables -b _Tables Mold.par