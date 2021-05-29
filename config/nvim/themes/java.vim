" gruvbox (dark)
let orange = "#fe8019"
let black = "#282828"
let red = "#fb4934"
let green = "#b8bb26"
let yellow = "#fabd2f"
let blue = "#83a598"
let purple = "#d3869b"
let cyan = "#8ec07c"
let white = "#a89984"

" main color (for left over words)
syn match main "\w"
execute "highlight main ctermfg=4  guifg=".red

" numbers
syn match posNum "\d"
execute "highlight posNum ctermfg=4  guifg=".orange

" method names()
syn match class ".\w*\((\)\@="
execute "highlight class ctermfg=4  guifg=".blue

"execute "highlight names which contains numbers
syn match main "\v(\a)\w*\d"
execute "highlight main ctermfg=4  guifg=".red

"all regrex works
" /^import (+);$/mg 
" import \zs.*\ze
" \v(^import\s+)@<=.*;

" imported packages 
syn match importName "\v(^import\s+)@<=.*;"
execute "highlight importName ctermfg=4  guifg=".yellow

" import 
syn match importWord "import "
execute "highlight importWord ctermfg=4  guifg=".purple

" package name
syn match packageName "\v(^package\s+)@<=.*;"
execute "highlight packageName ctermfg=4  guifg=".yellow

" package 
syn match packageWord "package "
execute "highlight packageWord ctermfg=4  guifg=".purple

"ex: int, double, char
execute "highlight javaType ctermfg=4  guifg=".purple

"ex: static, throws
execute "highlight javaStorageClass ctermfg=4  guifg=".purple


"class name... basically starts with caps letter
syntax match ClassName display '\<\([A-Z][a-z0-9]*\)\+\>'
syntax match ClassName display '\.\@<=\*'
highlight link ClassName Identifier
execute "highlight ClassName ctermfg=4  guifg=".yellow

" Just some special color, why not?  
" syn match print " System.out."
" execute "highlight print ctermfg=4  guifg=".yellow

"objects (ex: String) 
execute "highlight Constant ctermfg=4  guifg=".yellow

" class
syn match javaClassDecl2 " class\> "
execute "highlight javaClassDecl2 ctermfg=4  guifg=".purple

" package
execute "highlight javaExternal ctermfg=4  guifg=".purple

"if else switch
execute "highlight javaConditional ctermfg=4  guifg=".purple

"while for do 
execute "highlight javaRepeat ctermfg=4  guifg=".purple

"true flase
execute "highlight javaBoolean ctermfg=4  guifg=".orange


" null
syn match null "\v[ =]null[; ]"
execute "highlight null ctermfg=4  guifg=".orange


" this super
execute "highlight javaTypedef ctermfg=4  guifg=".purple
		
" var new instanceof
execute "highlight javaOperator ctermfg=4  guifg=".purple
	
" return
execute "highlight javaStatement ctermfg=4  guifg=".purple

" static synchronized transient volatile final strictfp serializable
execute "highlight javaStorageClass ctermfg=4  guifg=".purple

"throw try catch finally
execute "highlight javaExceptions ctermfg=4  guifg=".purple

" assert
execute "highlight javaAssert ctermfg=4  guifg=".purple

" synchronized throws
execute "highlight javaMethodDecl ctermfg=4  guifg=".red

" extends implements interface
execute "highlight javaClassDecl ctermfg=4  guifg=".red

" interface 
execute "highlight javaClassDecl ctermfg=4  guifg=".purple

" break continue skipwhite
execute "highlight javaBranch ctermfg=4  guifg=".purple

" public protected private abstract
execute "highlight javaScopeDecl ctermfg=4  guifg=".purple


""""""""""""""""""""""""""""""""""""""'
" java 9...
" module transitive
execute "highlight javaModuleStorageClass ctermfg=4  guifg=".purple


" open requires exports opens uses provides 
execute "highlight javaModuleStmt ctermfg=4  guifg=".yellow


" to with
execute "highlight javaModuleExternal ctermfg=4  guifg=".red


"""""""""""""""""""""""""""""""""""""""""
" lambda
execute "highlight javaLambdaDef ctermfg=4  guifg=".cyan


""""""""""""""""""""""""""""""""""""""""""
" clone equals finalize getClass hashCode
" notify notifyAll toString wait
execute "highlight javaLangObject ctermfg=4  guifg=".yellow





""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

