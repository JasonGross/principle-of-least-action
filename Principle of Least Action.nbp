(* Content-type: application/vnd.wolfram.mathematica *)

(*** Wolfram Notebook File ***)
(* http://www.wolfram.com/nb *)

(* CreatedBy='Mathematica 8.0' *)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       157,          7]
NotebookDataLength[    232350,       5622]
NotebookOptionsPosition[    207671,       5092]
NotebookOutlinePosition[    224267,       5390]
CellTagsIndexPosition[    224224,       5387]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["The Principle of Least Action", "Title",
 CellChangeTimes->{{3.5006705747374506`*^9, 3.500670584976754*^9}, {
  3.5006712637088437`*^9, 3.500671265205888*^9}},
 TextJustification->1.],

Cell["Jason Gross, December 7, 2010", "Subtitle",
 CellChangeTimes->{{3.5006712660239124`*^9, 3.500671284020445*^9}},
 FontSize->10],

Cell[CellGroupData[{

Cell["Introduction", "Section",
 CellChangeTimes->{{3.5006711405361977`*^9, 3.500671150592496*^9}}],

Cell[TextData[{
 "Recall that we defined the ",
 StyleBox["Lagrangian",
  FontSlant->"Italic"],
 " to be the kinetic energy less potential energy, ",
 Cell[BoxData[
  FormBox[
   RowBox[{"L", "=", 
    RowBox[{"K", "-", "U"}]}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 ", at a point.  The action is then defined to be the integral of the \
Lagrangian along the path,"
}], "Text",
 CellChangeTimes->{{3.500670589548889*^9, 3.5006706389823523`*^9}, {
  3.5006706715093155`*^9, 3.500670767850167*^9}},
 TextJustification->1.],

Cell[BoxData[
 FormBox[
  RowBox[{"S", "\[LongEqual]", 
   RowBox[{
    SubsuperscriptBox["\[Integral]", 
     SubscriptBox["t", "0"], 
     SubscriptBox["t", "1"]], 
    RowBox[{"L", 
     RowBox[{"\[DifferentialD]", "t"}]}]}], "\[LongEqual]", 
   RowBox[{
    RowBox[{
     SubsuperscriptBox["\[Integral]", 
      SubscriptBox["t", "0"], 
      SubscriptBox["t", "1"]], "K"}], "-", 
    RowBox[{"U", 
     RowBox[{"\[DifferentialD]", "t"}]}]}]}], 
  TraditionalForm]], "DisplayFormula",
 CellChangeTimes->{{3.5006708476535287`*^9, 3.5006708559487743`*^9}, {
  3.5006713260626893`*^9, 3.500671332004865*^9}},
 TextAlignment->Center,
 TextJustification->1.],

Cell["\<\
It is (remarkably!) true that, in any physical system, the path an object \
actually takes minimizes the action.  It can be shown that the extrema of \
action occur at\
\>", "Text",
 CellChangeTimes->{{3.500670900769101*^9, 3.500670995401902*^9}}],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    FractionBox[
     RowBox[{"\[PartialD]", "L"}], 
     RowBox[{"\[PartialD]", "q"}],
     MultilineFunction->None], "-", 
    TagBox[
     RowBox[{
      FractionBox["\[DifferentialD]", 
       RowBox[{"\[DifferentialD]", "t"}]], 
      FractionBox[
       RowBox[{"\[PartialD]", "L"}], 
       RowBox[{"\[PartialD]", 
        OverscriptBox["q", "."]}],
       MultilineFunction->None]}],
     D]}], "\[LongEqual]", "0"}], TraditionalForm]], "DisplayFormula",
 TextAlignment->Center],

Cell["\<\
This is called the Euler equation, or the Euler-Lagrange Equation.\
\>", "Text",
 CellChangeTimes->{{3.500670900769101*^9, 3.500670995401902*^9}, {
  3.500673679282343*^9, 3.5006736885386167`*^9}}],

Cell[CellGroupData[{

Cell["Derivation", "Subsection",
 CellChangeTimes->{{3.5006763059450893`*^9, 3.5006763145333433`*^9}}],

Cell["\<\
Courtesy of Scott Hughes\[CloseCurlyQuote]s Lecture notes for 8.033.  (Most \
of this is copied almost verbatim from that.)\
\>", "Text",
 CellChangeTimes->{{3.5006717491212115`*^9, 3.5006717937725334`*^9}, {
  3.5006721187191515`*^9, 3.500672127592414*^9}}],

Cell[TextData[{
 "Suppose we have a function ",
 Cell[BoxData[
  FormBox[
   RowBox[{"f", "(", 
    RowBox[{"x", ",", 
     RowBox[{
      OverscriptBox["x", "."], ";", "t"}]}], ")"}], TraditionalForm]],
  CellChangeTimes->{
   3.500670658189921*^9, {3.5006707933409214`*^9, 3.5006708043192463`*^9}, {
    3.500671040435235*^9, 3.5006710482484665`*^9}, 3.500671100846023*^9, {
    3.500671413501278*^9, 3.5006714205264854`*^9}},
  TextJustification->1.],
 " of a variable ",
 Cell[BoxData[
  FormBox["x", TraditionalForm]],
  CellChangeTimes->{
   3.500670658189921*^9, {3.5006707933409214`*^9, 3.5006708043192463`*^9}, {
    3.500671040435235*^9, 3.5006710482484665`*^9}, 3.500671100846023*^9, {
    3.500671413501278*^9, 3.5006714205264854`*^9}},
  TextJustification->1.],
 " and its derivative ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    OverscriptBox["x", "."], "\[LongEqual]", 
    RowBox[{
     RowBox[{"\[DifferentialD]", "x"}], "/", 
     RowBox[{"\[DifferentialD]", "t"}]}]}], TraditionalForm]],
  CellChangeTimes->{
   3.500670658189921*^9, {3.5006707933409214`*^9, 3.5006708043192463`*^9}, {
    3.500671040435235*^9, 3.5006710482484665`*^9}, 3.500671100846023*^9, {
    3.500671413501278*^9, 3.5006714205264854`*^9}},
  TextJustification->1.],
 ".  We want to find an extremum of "
}], "Text",
 CellChangeTimes->{{3.500671369759983*^9, 3.5006713850514355`*^9}, {
  3.500671426645666*^9, 3.500671496201725*^9}, {3.5006720301635303`*^9, 
  3.500672036211709*^9}, {3.5006721456619487`*^9, 3.5006721510251074`*^9}}],

Cell[BoxData[
 FormBox[
  RowBox[{"J", "=", 
   RowBox[{
    SubsuperscriptBox["\[Integral]", 
     SubscriptBox["t", "0"], 
     SubscriptBox["t", "1"]], 
    RowBox[{
     RowBox[{"f", "(", 
      RowBox[{
       RowBox[{"x", "(", "t", ")"}], ",", 
       RowBox[{
        RowBox[{
         OverscriptBox["x", "."], "(", "t", ")"}], ";", "t"}]}], ")"}], 
     RowBox[{"\[DifferentialD]", "t"}]}]}]}], 
  TraditionalForm]], "DisplayFormula",
 CellChangeTimes->{{3.5006708476535287`*^9, 3.5006708559487743`*^9}, {
  3.5006713260626893`*^9, 3.500671332004865*^9}, {3.500671513757245*^9, 
  3.5006715594855986`*^9}, {3.5006721520241375`*^9, 3.5006721524491496`*^9}},
 TextAlignment->Center,
 TextJustification->1.],

Cell[TextData[{
 "Our goal is to compute ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "(", "t", ")"}], TraditionalForm]],
  CellChangeTimes->{
   3.500670658189921*^9, {3.5006707933409214`*^9, 3.5006708043192463`*^9}, {
    3.500671040435235*^9, 3.5006710482484665`*^9}, 3.500671100846023*^9, {
    3.500671413501278*^9, 3.5006714205264854`*^9}},
  TextJustification->1.],
 " such that ",
 Cell[BoxData[
  FormBox["J", TraditionalForm]],
  CellChangeTimes->{
   3.500670658189921*^9, {3.5006707933409214`*^9, 3.5006708043192463`*^9}, {
    3.500671040435235*^9, 3.5006710482484665`*^9}, 3.500671100846023*^9, {
    3.500671413501278*^9, 3.5006714205264854`*^9}},
  TextJustification->1.],
 " is at an extremum.  We consider the limits of integration to be fixed.  \
That is, ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "(", 
    SubscriptBox["t", "1"], ")"}], TraditionalForm]],
  CellChangeTimes->{
   3.500670658189921*^9, {3.5006707933409214`*^9, 3.5006708043192463`*^9}, {
    3.500671040435235*^9, 3.5006710482484665`*^9}, 3.500671100846023*^9, {
    3.500671413501278*^9, 3.5006714205264854`*^9}},
  TextJustification->1.],
 " will be the same for any ",
 Cell[BoxData[
  FormBox["x", TraditionalForm]],
  CellChangeTimes->{
   3.500670658189921*^9, {3.5006707933409214`*^9, 3.5006708043192463`*^9}, {
    3.500671040435235*^9, 3.5006710482484665`*^9}, 3.500671100846023*^9, {
    3.500671413501278*^9, 3.5006714205264854`*^9}},
  TextJustification->1.],
 " we care about, as will ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "(", 
    SubscriptBox["t", "2"], ")"}], TraditionalForm]],
  CellChangeTimes->{
   3.500670658189921*^9, {3.5006707933409214`*^9, 3.5006708043192463`*^9}, {
    3.500671040435235*^9, 3.5006710482484665`*^9}, 3.500671100846023*^9, {
    3.500671413501278*^9, 3.5006714205264854`*^9}},
  TextJustification->1.],
 "."
}], "Text",
 CellChangeTimes->{{3.500671369759983*^9, 3.5006713850514355`*^9}, {
  3.500671426645666*^9, 3.500671496201725*^9}, {3.500671539809016*^9, 
  3.5006717309726744`*^9}, {3.5006717985466747`*^9, 3.5006718669707*^9}, {
  3.5006718976136065`*^9, 3.5006718986796384`*^9}, {3.50067215313717*^9, 
  3.500672154587213*^9}}],

Cell[TextData[{
 "Imagine we have some ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "(", "t", ")"}], TraditionalForm]],
  CellChangeTimes->{
   3.500670658189921*^9, {3.5006707933409214`*^9, 3.5006708043192463`*^9}, {
    3.500671040435235*^9, 3.5006710482484665`*^9}, 3.500671100846023*^9, {
    3.500671413501278*^9, 3.5006714205264854`*^9}},
  TextJustification->1.],
 " for which ",
 Cell[BoxData[
  FormBox["J", TraditionalForm]],
  CellChangeTimes->{
   3.500670658189921*^9, {3.5006707933409214`*^9, 3.5006708043192463`*^9}, {
    3.500671040435235*^9, 3.5006710482484665`*^9}, 3.500671100846023*^9, {
    3.500671413501278*^9, 3.5006714205264854`*^9}},
  TextJustification->1.],
 " is at an extremum, and imagine that we have a function which parametrizes \
how far our current path is from our choice of ",
 Cell[BoxData[
  FormBox["x", TraditionalForm]],
  CellChangeTimes->{
   3.500670658189921*^9, {3.5006707933409214`*^9, 3.5006708043192463`*^9}, {
    3.500671040435235*^9, 3.5006710482484665`*^9}, 3.500671100846023*^9, {
    3.500671413501278*^9, 3.5006714205264854`*^9}},
  TextJustification->1.],
 ":"
}], "Text",
 CellChangeTimes->{{3.5006718997056684`*^9, 3.500671911209009*^9}, {
   3.5006721550152254`*^9, 3.5006721554812393`*^9}, 3.5006953333305945`*^9}],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{"x", "(", 
    RowBox[{"t", ";", "\[Alpha]"}], ")"}], "=", 
   RowBox[{
    RowBox[{"x", "(", "t", ")"}], "+", 
    RowBox[{"\[Alpha]", " ", 
     RowBox[{"A", "(", "t", ")"}]}]}]}], TraditionalForm]], "DisplayFormula",
 CellChangeTimes->{{3.5006708476535287`*^9, 3.5006708559487743`*^9}, {
  3.5006713260626893`*^9, 3.500671332004865*^9}, {3.500671513757245*^9, 
  3.5006715594855986`*^9}, {3.500671872658868*^9, 3.500671887000293*^9}, {
  3.5006721559292526`*^9, 3.500672156408267*^9}},
 TextAlignment->Center,
 TextJustification->1.],

Cell[TextData[{
 "The function ",
 Cell[BoxData[
  FormBox["A", TraditionalForm]],
  CellChangeTimes->{
   3.500670658189921*^9, {3.5006707933409214`*^9, 3.5006708043192463`*^9}, {
    3.500671040435235*^9, 3.5006710482484665`*^9}, 3.500671100846023*^9, {
    3.500671413501278*^9, 3.5006714205264854`*^9}},
  TextJustification->1.],
 " is totally arbitrary, except that we require it to vanish at the \
endpoints: ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"A", "(", 
     SubscriptBox["t", "0"], ")"}], "=", 
    RowBox[{
     RowBox[{"A", "(", 
      SubscriptBox["t", "1"], ")"}], "=", "0"}]}], TraditionalForm]],
  CellChangeTimes->{
   3.500670658189921*^9, {3.5006707933409214`*^9, 3.5006708043192463`*^9}, {
    3.500671040435235*^9, 3.5006710482484665`*^9}, 3.500671100846023*^9, {
    3.500671413501278*^9, 3.5006714205264854`*^9}},
  TextJustification->1.],
 ".  The parameter ",
 Cell[BoxData[
  FormBox["\[Alpha]", TraditionalForm]],
  CellChangeTimes->{
   3.500670658189921*^9, {3.5006707933409214`*^9, 3.5006708043192463`*^9}, {
    3.500671040435235*^9, 3.5006710482484665`*^9}, 3.500671100846023*^9, {
    3.500671413501278*^9, 3.5006714205264854`*^9}},
  TextJustification->1.],
 " allows us to control how the variation ",
 Cell[BoxData[
  FormBox[
   RowBox[{"A", "(", "t", ")"}], TraditionalForm]],
  CellChangeTimes->{
   3.500670658189921*^9, {3.5006707933409214`*^9, 3.5006708043192463`*^9}, {
    3.500671040435235*^9, 3.5006710482484665`*^9}, 3.500671100846023*^9, {
    3.500671413501278*^9, 3.5006714205264854`*^9}},
  TextJustification->1.],
 " enters into our path ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "(", 
    RowBox[{"t", ";", "\[Alpha]"}], ")"}], TraditionalForm]],
  CellChangeTimes->{
   3.500670658189921*^9, {3.5006707933409214`*^9, 3.5006708043192463`*^9}, {
    3.500671040435235*^9, 3.5006710482484665`*^9}, 3.500671100846023*^9, {
    3.500671413501278*^9, 3.5006714205264854`*^9}},
  TextJustification->1.],
 "."
}], "Text",
 CellChangeTimes->{{3.500671369759983*^9, 3.5006713850514355`*^9}, {
  3.500671426645666*^9, 3.500671496201725*^9}, {3.500671539809016*^9, 
  3.5006717309726744`*^9}, {3.5006717985466747`*^9, 3.5006718669707*^9}, {
  3.5006719158081455`*^9, 3.5006720457879925`*^9}, {3.5006721598763695`*^9, 
  3.5006721598763695`*^9}}],

Cell[TextData[{
 "The \[OpenCurlyDoubleQuote]correct\[CloseCurlyDoubleQuote] path ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "(", "t", ")"}], TraditionalForm]],
  CellChangeTimes->{
   3.500670658189921*^9, {3.5006707933409214`*^9, 3.5006708043192463`*^9}, {
    3.500671040435235*^9, 3.5006710482484665`*^9}, 3.500671100846023*^9, {
    3.500671413501278*^9, 3.5006714205264854`*^9}},
  TextJustification->1.],
 " is unknown; our goal is to figure out how to construct it, or to figure \
out how ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]],
  CellChangeTimes->{
   3.500670658189921*^9, {3.5006707933409214`*^9, 3.5006708043192463`*^9}, {
    3.500671040435235*^9, 3.5006710482484665`*^9}, 3.500671100846023*^9, {
    3.500671413501278*^9, 3.5006714205264854`*^9}},
  TextJustification->1.],
 " behaves when we are on it."
}], "Text",
 CellChangeTimes->{{3.500671369759983*^9, 3.5006713850514355`*^9}, {
   3.500671426645666*^9, 3.500671496201725*^9}, {3.500671539809016*^9, 
   3.5006717309726744`*^9}, {3.5006717985466747`*^9, 3.5006718669707*^9}, {
   3.5006719158081455`*^9, 3.500672116011071*^9}, {3.500672160462387*^9, 
   3.5006721698736653`*^9}, 3.5006953359166713`*^9}],

Cell[TextData[{
 "Our basic idea is to ask how does the integral ",
 Cell[BoxData[
  FormBox["J", TraditionalForm]],
  CellChangeTimes->{
   3.500670658189921*^9, {3.5006707933409214`*^9, 3.5006708043192463`*^9}, {
    3.500671040435235*^9, 3.5006710482484665`*^9}, 3.500671100846023*^9, {
    3.500671413501278*^9, 3.5006714205264854`*^9}},
  TextJustification->1.],
 " behave when we are in the vicinity of the extremum.  We know that ordinary \
functions are flat --- have zero first derivative --- when we are at an \
extremum.  So let us put"
}], "Text",
 CellChangeTimes->{{3.5006721716217175`*^9, 3.500672176736869*^9}, {
   3.5006722139379697`*^9, 3.5006722921302843`*^9}, 3.5006953383007417`*^9}],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{"J", "(", "\[Alpha]", ")"}], "=", 
   RowBox[{
    SubsuperscriptBox["\[Integral]", 
     SubscriptBox["t", "0"], 
     SubscriptBox["t", "1"]], 
    RowBox[{
     RowBox[{"f", "(", 
      RowBox[{
       RowBox[{"x", "(", 
        RowBox[{"t", ";", "\[Alpha]"}], ")"}], ",", 
       RowBox[{
        RowBox[{
         OverscriptBox["x", "."], "(", 
         RowBox[{"t", ";", "\[Alpha]"}], ")"}], ";", "t"}]}], ")"}], 
     RowBox[{"\[DifferentialD]", "t"}]}]}]}], 
  TraditionalForm]], "DisplayFormula",
 CellChangeTimes->{{3.5006708476535287`*^9, 3.5006708559487743`*^9}, {
  3.5006713260626893`*^9, 3.500671332004865*^9}, {3.500671513757245*^9, 
  3.5006715594855986`*^9}, {3.5006721520241375`*^9, 3.5006721524491496`*^9}, {
  3.5006722975874453`*^9, 3.500672326280295*^9}},
 TextAlignment->Center,
 TextJustification->1.],

Cell[TextData[{
 "We know that ",
 Cell[BoxData[
  FormBox[
   RowBox[{"\[Alpha]", "=", "0"}], TraditionalForm]],
  CellChangeTimes->{
   3.500670658189921*^9, {3.5006707933409214`*^9, 3.5006708043192463`*^9}, {
    3.500671040435235*^9, 3.5006710482484665`*^9}, 3.500671100846023*^9, {
    3.500671413501278*^9, 3.5006714205264854`*^9}},
  TextJustification->1.],
 " corresponds to the extremum by definition of ",
 Cell[BoxData[
  FormBox["\[Alpha]", TraditionalForm]],
  CellChangeTimes->{
   3.500670658189921*^9, {3.5006707933409214`*^9, 3.5006708043192463`*^9}, {
    3.500671040435235*^9, 3.5006710482484665`*^9}, 3.500671100846023*^9, {
    3.500671413501278*^9, 3.5006714205264854`*^9}},
  TextJustification->1.],
 ".  However, this doesn\[CloseCurlyQuote]t teach us anything useful, sine we \
don\[CloseCurlyQuote]t know the path ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "(", "t", ")"}], TraditionalForm]],
  CellChangeTimes->{
   3.500670658189921*^9, {3.5006707933409214`*^9, 3.5006708043192463`*^9}, {
    3.500671040435235*^9, 3.5006710482484665`*^9}, 3.500671100846023*^9, {
    3.500671413501278*^9, 3.5006714205264854`*^9}},
  TextJustification->1.],
 " that corresponds to the extremum."
}], "Text",
 CellChangeTimes->{{3.5006721716217175`*^9, 3.500672176736869*^9}, {
  3.5006722139379697`*^9, 3.5006722921302843`*^9}, {3.5006723350535545`*^9, 
  3.5006723904011927`*^9}}],

Cell[TextData[{
 "But we also know We know that ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox[
     RowBox[{
      FractionBox[
       RowBox[{"\[PartialD]", "J"}], 
       RowBox[{"\[PartialD]", "\[Alpha]"}],
       MultilineFunction->None], "\[RightBracketingBar]"}], 
     RowBox[{"\[Alpha]", "=", "0"}]], "=", "0"}], TraditionalForm]],
  CellChangeTimes->{{3.5006708476535287`*^9, 3.5006708559487743`*^9}, {
    3.5006713260626893`*^9, 3.500671332004865*^9}, {3.500671513757245*^9, 
    3.5006715594855986`*^9}, {3.5006721520241375`*^9, 
    3.5006721524491496`*^9}, {3.5006722975874453`*^9, 3.500672326280295*^9}, 
    3.500672692848145*^9},
  TextAlignment->Center,
  TextJustification->1.],
 " since it\[CloseCurlyQuote]s an extremum.  Using this fact,"
}], "Text",
 CellChangeTimes->{{3.5006721716217175`*^9, 3.500672176736869*^9}, {
  3.5006722139379697`*^9, 3.5006722921302843`*^9}, {3.5006723350535545`*^9, 
  3.5006724068646803`*^9}, {3.500672703510461*^9, 3.500672815073763*^9}}],

Cell[BoxData[{
 FormBox[
  RowBox[{
   FractionBox[
    RowBox[{"\[PartialD]", "J"}], 
    RowBox[{"\[PartialD]", "\[Alpha]"}],
    MultilineFunction->None], "=", 
   RowBox[{
    SubsuperscriptBox["\[Integral]", 
     SubscriptBox["t", "0"], 
     SubscriptBox["t", "1"]], 
    RowBox[{
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        FractionBox[
         RowBox[{"\[PartialD]", "f"}], 
         RowBox[{"\[PartialD]", "x"}],
         MultilineFunction->None], " ", 
        FractionBox[
         RowBox[{"\[PartialD]", "x"}], 
         RowBox[{"\[PartialD]", "\[Alpha]"}],
         MultilineFunction->None]}], "+", 
       RowBox[{
        FractionBox[
         RowBox[{"\[PartialD]", "f"}], 
         RowBox[{"\[PartialD]", 
          OverscriptBox["x", "."]}],
         MultilineFunction->None], " ", 
        FractionBox[
         RowBox[{"\[PartialD]", 
          OverscriptBox["x", "."]}], 
         RowBox[{"\[PartialD]", "\[Alpha]"}],
         MultilineFunction->None]}]}], ")"}], 
     RowBox[{"\[DifferentialD]", "t"}]}]}]}], 
  TraditionalForm], "\[IndentingNewLine]", 
 FormBox[
  RowBox[{
   FractionBox[
    RowBox[{"\[PartialD]", "x"}], 
    RowBox[{"\[PartialD]", "\[Alpha]"}],
    MultilineFunction->None], "=", 
   RowBox[{
    RowBox[{
     FractionBox["\[PartialD]", 
      RowBox[{"\[PartialD]", "\[Alpha]"}],
      MultilineFunction->None], 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"x", "(", "t", ")"}], "+", 
       RowBox[{"\[Alpha]", " ", 
        RowBox[{"A", "(", "t", ")"}]}]}], ")"}]}], "=", 
    RowBox[{"A", "(", "t", ")"}]}]}], TraditionalForm], "\[IndentingNewLine]", 
 FormBox[
  RowBox[{
   FractionBox[
    RowBox[{"\[PartialD]", 
     OverscriptBox["x", "."]}], 
    RowBox[{"\[PartialD]", "\[Alpha]"}],
    MultilineFunction->None], "=", 
   RowBox[{
    RowBox[{
     RowBox[{
      FractionBox["\[PartialD]", 
       RowBox[{"\[PartialD]", "\[Alpha]"}],
       MultilineFunction->None], 
      FractionBox["\[DifferentialD]", 
       RowBox[{"\[DifferentialD]", "t"}],
       MultilineFunction->None]}], 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"x", "(", "t", ")"}], "+", 
       RowBox[{"\[Alpha]", " ", 
        RowBox[{"A", "(", "t", ")"}]}]}], ")"}]}], "=", 
    FractionBox[
     RowBox[{"\[DifferentialD]", "A"}], 
     RowBox[{"\[DifferentialD]", "t"}],
     MultilineFunction->None]}]}], TraditionalForm]}], "DisplayFormula",
 CellChangeTimes->{{3.5006708476535287`*^9, 3.5006708559487743`*^9}, {
   3.5006713260626893`*^9, 3.500671332004865*^9}, {3.500671513757245*^9, 
   3.5006715594855986`*^9}, {3.5006721520241375`*^9, 
   3.5006721524491496`*^9}, {3.5006722975874453`*^9, 3.500672326280295*^9}, 
   3.500672692848145*^9, {3.5006728199689074`*^9, 3.500672830047206*^9}, {
   3.500672889177956*^9, 3.50067288997898*^9}, {3.5006729405134754`*^9, 
   3.50067295080278*^9}, {3.5006729983811884`*^9, 3.5006730148286753`*^9}},
 TextAlignment->Center,
 TextJustification->1.],

Cell["So", "Text",
 CellChangeTimes->{{3.5006721716217175`*^9, 3.500672176736869*^9}, {
  3.5006722139379697`*^9, 3.5006722921302843`*^9}, {3.5006723350535545`*^9, 
  3.5006724068646803`*^9}, {3.500672703510461*^9, 3.500672815073763*^9}, {
  3.5006730263480167`*^9, 3.500673026637025*^9}}],

Cell[BoxData[
 FormBox[
  RowBox[{
   FractionBox[
    RowBox[{"\[PartialD]", "J"}], 
    RowBox[{"\[PartialD]", "\[Alpha]"}],
    MultilineFunction->None], "=", 
   RowBox[{
    SubsuperscriptBox["\[Integral]", 
     SubscriptBox["t", "0"], 
     SubscriptBox["t", "1"]], 
    RowBox[{
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        FractionBox[
         RowBox[{"\[PartialD]", "f"}], 
         RowBox[{"\[PartialD]", "x"}],
         MultilineFunction->None], " ", 
        RowBox[{"A", "(", "t", ")"}]}], "+", 
       RowBox[{
        FractionBox[
         RowBox[{"\[PartialD]", "f"}], 
         RowBox[{"\[PartialD]", 
          OverscriptBox["x", "."]}],
         MultilineFunction->None], 
        FractionBox[
         RowBox[{"\[DifferentialD]", "A"}], 
         RowBox[{"\[DifferentialD]", "t"}],
         MultilineFunction->None]}]}], ")"}], 
     RowBox[{"\[DifferentialD]", "t"}]}]}]}], 
  TraditionalForm]], "DisplayFormula",
 CellChangeTimes->{{3.5006708476535287`*^9, 3.5006708559487743`*^9}, {
   3.5006713260626893`*^9, 3.500671332004865*^9}, {3.500671513757245*^9, 
   3.5006715594855986`*^9}, {3.5006721520241375`*^9, 
   3.5006721524491496`*^9}, {3.5006722975874453`*^9, 3.500672326280295*^9}, 
   3.500672692848145*^9, {3.5006728199689074`*^9, 3.500672830047206*^9}, {
   3.500672889177956*^9, 3.50067288997898*^9}, {3.5006729405134754`*^9, 
   3.50067295080278*^9}, {3.5006729983811884`*^9, 3.500673052292784*^9}},
 TextAlignment->Center,
 TextJustification->1.],

Cell["\<\
Integration by parts on the section term gives\
\>", "Text",
 CellChangeTimes->{{3.5006721716217175`*^9, 3.500672176736869*^9}, {
  3.5006722139379697`*^9, 3.5006722921302843`*^9}, {3.5006723350535545`*^9, 
  3.5006724068646803`*^9}, {3.500672703510461*^9, 3.500672815073763*^9}, {
  3.5006730263480167`*^9, 3.500673026637025*^9}, {3.50067306126505*^9, 
  3.500673068795273*^9}}],

Cell[BoxData[
 FormBox[
  RowBox[{
   SubsuperscriptBox[
    RowBox[{
     RowBox[{
      RowBox[{
       SubsuperscriptBox["\[Integral]", 
        SubscriptBox["t", "0"], 
        SubscriptBox["t", "1"]], 
       RowBox[{
        FractionBox[
         RowBox[{"\[PartialD]", "f"}], 
         RowBox[{"\[PartialD]", 
          OverscriptBox["x", "."]}],
         MultilineFunction->None], 
        FractionBox[
         RowBox[{"\[DifferentialD]", "A"}], 
         RowBox[{"\[DifferentialD]", "t"}],
         MultilineFunction->None], 
        RowBox[{"\[DifferentialD]", "t"}]}]}], "=", 
      RowBox[{
       RowBox[{"A", "(", "t", ")"}], 
       FractionBox[
        RowBox[{"\[PartialD]", "f"}], 
        RowBox[{"\[PartialD]", 
         OverscriptBox["x", "."]}],
        MultilineFunction->None]}]}], "\[RightBracketingBar]"}], 
    SubscriptBox["t", "0"], 
    SubscriptBox["t", "1"]], "-", 
   RowBox[{
    SubsuperscriptBox["\[Integral]", 
     SubscriptBox["t", "0"], 
     SubscriptBox["t", "1"]], 
    RowBox[{
     RowBox[{"A", "(", "t", ")"}], 
     RowBox[{
      FractionBox["\[DifferentialD]", 
       RowBox[{"\[DifferentialD]", "t"}],
       MultilineFunction->None], 
      FractionBox[
       RowBox[{"\[PartialD]", "f"}], 
       RowBox[{"\[PartialD]", 
        OverscriptBox["x", "."]}],
       MultilineFunction->None]}], 
     RowBox[{"\[DifferentialD]", "t"}]}]}]}], 
  TraditionalForm]], "DisplayFormula",
 CellChangeTimes->{{3.5006708476535287`*^9, 3.5006708559487743`*^9}, {
   3.5006713260626893`*^9, 3.500671332004865*^9}, {3.500671513757245*^9, 
   3.5006715594855986`*^9}, {3.5006721520241375`*^9, 
   3.5006721524491496`*^9}, {3.5006722975874453`*^9, 3.500672326280295*^9}, 
   3.500672692848145*^9, {3.5006728199689074`*^9, 3.500672830047206*^9}, {
   3.500672889177956*^9, 3.50067288997898*^9}, {3.5006729405134754`*^9, 
   3.50067295080278*^9}, {3.5006729983811884`*^9, 3.500673144400511*^9}, {
   3.5006731961530423`*^9, 3.5006732301340485`*^9}},
 TextAlignment->Center,
 TextJustification->1.],

Cell[TextData[{
 "Since ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"A", "(", 
     SubscriptBox["t", "0"], ")"}], "=", 
    RowBox[{
     RowBox[{"A", "(", 
      SubscriptBox["t", "1"], ")"}], "=", "0"}]}], TraditionalForm]],
  CellChangeTimes->{{3.5006708476535287`*^9, 3.5006708559487743`*^9}, {
    3.5006713260626893`*^9, 3.500671332004865*^9}, {3.500671513757245*^9, 
    3.5006715594855986`*^9}, {3.5006721520241375`*^9, 
    3.5006721524491496`*^9}, {3.5006722975874453`*^9, 3.500672326280295*^9}, 
    3.500672692848145*^9},
  TextAlignment->Center,
  TextJustification->1.],
 ", the first term dies, and we get "
}], "Text",
 CellChangeTimes->{{3.5006721716217175`*^9, 3.500672176736869*^9}, {
  3.5006722139379697`*^9, 3.5006722921302843`*^9}, {3.5006723350535545`*^9, 
  3.5006724068646803`*^9}, {3.500672703510461*^9, 3.500672815073763*^9}, {
  3.5006730263480167`*^9, 3.500673026637025*^9}, {3.50067306126505*^9, 
  3.500673068795273*^9}, {3.500673245903515*^9, 3.500673279390506*^9}}],

Cell[BoxData[
 FormBox[
  RowBox[{
   FractionBox[
    RowBox[{"\[PartialD]", "J"}], 
    RowBox[{"\[PartialD]", "\[Alpha]"}],
    MultilineFunction->None], "=", 
   RowBox[{
    SubsuperscriptBox["\[Integral]", 
     SubscriptBox["t", "0"], 
     SubscriptBox["t", "1"]], 
    RowBox[{
     RowBox[{"A", "(", "t", ")"}], 
     RowBox[{"(", 
      RowBox[{
       FractionBox[
        RowBox[{"\[PartialD]", "f"}], 
        RowBox[{"\[PartialD]", "x"}],
        MultilineFunction->None], " ", "+", 
       RowBox[{
        FractionBox["\[DifferentialD]", 
         RowBox[{"\[DifferentialD]", "t"}],
         MultilineFunction->None], 
        FractionBox[
         RowBox[{"\[PartialD]", "f"}], 
         RowBox[{"\[PartialD]", 
          OverscriptBox["x", "."]}],
         MultilineFunction->None]}]}], ")"}], 
     RowBox[{"\[DifferentialD]", "t"}]}]}]}], 
  TraditionalForm]], "DisplayFormula",
 CellChangeTimes->{{3.5006708476535287`*^9, 3.5006708559487743`*^9}, {
   3.5006713260626893`*^9, 3.500671332004865*^9}, {3.500671513757245*^9, 
   3.5006715594855986`*^9}, {3.5006721520241375`*^9, 
   3.5006721524491496`*^9}, {3.5006722975874453`*^9, 3.500672326280295*^9}, 
   3.500672692848145*^9, {3.5006728199689074`*^9, 3.500672830047206*^9}, {
   3.500672889177956*^9, 3.50067288997898*^9}, {3.5006729405134754`*^9, 
   3.50067295080278*^9}, {3.5006729983811884`*^9, 3.500673052292784*^9}, {
   3.500673318489663*^9, 3.5006733275569315`*^9}},
 TextAlignment->Center,
 TextJustification->1.],

Cell[TextData[{
 "This must be zero.  Since ",
 Cell[BoxData[
  FormBox[
   RowBox[{"A", "(", "t", ")"}], TraditionalForm]],
  CellChangeTimes->{{3.5006708476535287`*^9, 3.5006708559487743`*^9}, {
    3.5006713260626893`*^9, 3.500671332004865*^9}, {3.500671513757245*^9, 
    3.5006715594855986`*^9}, {3.5006721520241375`*^9, 
    3.5006721524491496`*^9}, {3.5006722975874453`*^9, 3.500672326280295*^9}, 
    3.500672692848145*^9},
  TextAlignment->Center,
  TextJustification->1.],
 " is arbitrary except at the endpoints, we must have that the integrand is \
zero at all points:"
}], "Text",
 CellChangeTimes->{{3.5006721716217175`*^9, 3.500672176736869*^9}, {
  3.5006722139379697`*^9, 3.5006722921302843`*^9}, {3.5006723350535545`*^9, 
  3.5006724068646803`*^9}, {3.500672703510461*^9, 3.500672815073763*^9}, {
  3.5006730263480167`*^9, 3.500673026637025*^9}, {3.50067306126505*^9, 
  3.500673068795273*^9}, {3.500673245903515*^9, 3.500673279390506*^9}, {
  3.500673363503996*^9, 3.5006734024671493`*^9}}],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    FractionBox[
     RowBox[{"\[PartialD]", "f"}], 
     RowBox[{"\[PartialD]", "x"}],
     MultilineFunction->None], " ", "+", 
    RowBox[{
     FractionBox["\[DifferentialD]", 
      RowBox[{"\[DifferentialD]", "t"}],
      MultilineFunction->None], 
     FractionBox[
      RowBox[{"\[PartialD]", "f"}], 
      RowBox[{"\[PartialD]", 
       OverscriptBox["x", "."]}],
      MultilineFunction->None]}]}], "=", "0"}], 
  TraditionalForm]], "DisplayFormula",
 CellChangeTimes->{{3.5006708476535287`*^9, 3.5006708559487743`*^9}, {
   3.5006713260626893`*^9, 3.500671332004865*^9}, {3.500671513757245*^9, 
   3.5006715594855986`*^9}, {3.5006721520241375`*^9, 
   3.5006721524491496`*^9}, {3.5006722975874453`*^9, 3.500672326280295*^9}, 
   3.500672692848145*^9, {3.5006728199689074`*^9, 3.500672830047206*^9}, {
   3.500672889177956*^9, 3.50067288997898*^9}, {3.5006729405134754`*^9, 
   3.50067295080278*^9}, {3.5006729983811884`*^9, 3.500673052292784*^9}, {
   3.500673318489663*^9, 3.5006733275569315`*^9}, {3.500673408441326*^9, 
   3.500673412388443*^9}},
 TextAlignment->Center,
 TextJustification->1.],

Cell["\<\
This is what was to be derived.\
\>", "Text",
 CellChangeTimes->{{3.5006721716217175`*^9, 3.500672176736869*^9}, {
  3.5006722139379697`*^9, 3.5006722921302843`*^9}, {3.5006723350535545`*^9, 
  3.5006724068646803`*^9}, {3.500672703510461*^9, 3.500672815073763*^9}, {
  3.5006730263480167`*^9, 3.500673026637025*^9}, {3.50067306126505*^9, 
  3.500673068795273*^9}, {3.500673245903515*^9, 3.500673279390506*^9}, {
  3.500673363503996*^9, 3.5006734330880556`*^9}}]
}, Closed]]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[{
 "Least action: ",
 Cell[BoxData[
  FormBox[
   RowBox[{"F", "=", 
    RowBox[{"m", " ", "a"}]}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}]
}], "Section",
 CellChangeTimes->{{3.5006734704251604`*^9, 3.500673531351964*^9}, {
  3.5006763289867716`*^9, 3.5006763727590675`*^9}}],

Cell[TextData[{
 "Suppose we have the ",
 "Newtonian",
 " kinetic energy, ",
 Cell[BoxData[
  FormBox[
   RowBox[{"K", " ", "=", 
    RowBox[{
     FractionBox["1", "2"], "m", " ", 
     SuperscriptBox["v", "2"]}]}], TraditionalForm]],
  FormatType->"TraditionalForm"],
 ", and a potential that depends only on position, ",
 Cell[BoxData[
  FormBox[
   RowBox[{"U", "=", 
    RowBox[{"U", "(", 
     OverscriptBox["r", "\[RightVector]"], ")"}]}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 ".  Then the Euler-Lagrange equations tell us the following:"
}], "Text",
 CellChangeTimes->{{3.500676337562025*^9, 3.5006764013829145`*^9}, {
   3.5006764738990607`*^9, 3.500676536515914*^9}, 3.5006772365746355`*^9}],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"Clear", "[", 
  RowBox[{"U", ",", "m", ",", "r"}], "]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"L", "=", 
   RowBox[{
    RowBox[{
     FractionBox["1", "2"], "m", " ", 
     SuperscriptBox[
      RowBox[{
       RowBox[{"r", "'"}], "[", "t", "]"}], "2"]}], "-", 
    RowBox[{"U", "[", 
     RowBox[{"r", "[", "t", "]"}], "]"}]}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{
    SubscriptBox["\[PartialD]", 
     RowBox[{"r", "[", "t", "]"}]], "L"}], "-", 
   RowBox[{"Dt", "[", 
    RowBox[{
     RowBox[{
      SubscriptBox["\[PartialD]", 
       RowBox[{
        RowBox[{"r", "'"}], "[", "t", "]"}]], "L"}], ",", "t", ",", 
     RowBox[{"Constants", "\[Rule]", "m"}]}], "]"}]}], "\[Equal]", 
  "0"}]}], "Input",
 CellChangeTimes->{{3.5006765401430216`*^9, 3.5006765645637445`*^9}, {
  3.5006766092710676`*^9, 3.5006768974745984`*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"-", 
    RowBox[{
     SuperscriptBox["U", "\[Prime]",
      MultilineFunction->None], "[", 
     RowBox[{"r", "[", "t", "]"}], "]"}]}], "-", 
   RowBox[{"m", " ", 
    RowBox[{
     SuperscriptBox["r", "\[Prime]\[Prime]",
      MultilineFunction->None], "[", "t", "]"}]}]}], "\[Equal]", 
  "0"}]], "Output",
 CellChangeTimes->{{3.500676812240075*^9, 3.500676897695605*^9}}]
}, Open  ]],

Cell["Rearrangement gives", "Text",
 CellChangeTimes->{{3.500676337562025*^9, 3.5006764013829145`*^9}, {
  3.5006764738990607`*^9, 3.500676536515914*^9}, {3.5006769003376827`*^9, 
  3.500676906346861*^9}}],

Cell[BoxData[{
 FormBox[
  RowBox[{
   RowBox[{
    RowBox[{"-", 
     FractionBox[
      RowBox[{"\[PartialD]", "U"}], 
      RowBox[{"\[PartialD]", "r"}],
      MultilineFunction->None]}], "=", 
    RowBox[{"m", " ", 
     OverscriptBox["r", "\[DoubleDot]"]}]}], " "}], 
  TraditionalForm], "\[IndentingNewLine]", 
 FormBox[
  RowBox[{"F", "=", 
   RowBox[{"m", " ", "a"}]}], TraditionalForm]}], "DisplayFormula",
 CellChangeTimes->{{3.5006769330676517`*^9, 3.500676940532873*^9}, {
  3.5006769769839516`*^9, 3.5006769866432376`*^9}},
 TextAlignment->Center]
}, Open  ]],

Cell[CellGroupData[{

Cell["Least action with no potential", "Section",
 CellChangeTimes->{{3.5006734704251604`*^9, 3.500673531351964*^9}, {
  3.5006763289867716`*^9, 3.500676335469963*^9}}],

Cell[TextData[{
 "Suppose we have no potential, ",
 Cell[BoxData[
  FormBox[
   RowBox[{"U", "=", "0"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 ".  Then ",
 Cell[BoxData[
  FormBox[
   RowBox[{"L", "=", "K"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 ", so the Euler-Lagrange equations become"
}], "Text",
 CellChangeTimes->{{3.500676337562025*^9, 3.5006763568505964`*^9}, {
  3.5006769999236307`*^9, 3.500677021808278*^9}}],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    FractionBox[
     RowBox[{"\[PartialD]", "K"}], 
     RowBox[{"\[PartialD]", "q"}],
     MultilineFunction->None], "-", 
    TagBox[
     RowBox[{
      FractionBox["\[DifferentialD]", 
       RowBox[{"\[DifferentialD]", "t"}]], 
      FractionBox[
       RowBox[{"\[PartialD]", "K"}], 
       RowBox[{"\[PartialD]", 
        OverscriptBox["q", "."]}],
       MultilineFunction->None]}],
     D]}], "\[LongEqual]", "0"}], TraditionalForm]], "DisplayFormula",
 CellChangeTimes->{{3.5006769330676517`*^9, 3.500676940532873*^9}, {
  3.5006769769839516`*^9, 3.5006769866432376`*^9}, {3.5006770288334866`*^9, 
  3.5006770426868963`*^9}},
 TextAlignment->Center],

Cell[TextData[{
 "For ",
 "Newtonian",
 " kinetic energy, ",
 Cell[BoxData[
  FormBox[
   RowBox[{"K", " ", "=", 
    RowBox[{
     FractionBox["1", "2"], "m", " ", 
     SuperscriptBox[
      OverscriptBox["x", "."], "2"]}]}], TraditionalForm]],
  FormatType->"TraditionalForm"],
 ", this is just"
}], "Text",
 CellChangeTimes->{{3.500676337562025*^9, 3.5006763568505964`*^9}, {
   3.5006769999236307`*^9, 3.5006771037877045`*^9}, 3.5006772329585285`*^9}],

Cell[BoxData[{
 FormBox[
  RowBox[{
   TagBox[
    RowBox[{
     RowBox[{
      FractionBox["\[DifferentialD]", 
       RowBox[{"\[DifferentialD]", "t"}]], "m"}], " ", 
     OverscriptBox["x", "."]}],
    D], "\[LongEqual]", "0"}], TraditionalForm], "\[IndentingNewLine]", 
 FormBox[
  RowBox[{
   RowBox[{"m", " ", 
    OverscriptBox["x", "."]}], "=", 
   RowBox[{"m", " ", "v"}]}], TraditionalForm], "\[IndentingNewLine]", 
 FormBox[
  RowBox[{"x", "=", 
   RowBox[{
    SubscriptBox["x", "0"], "+", 
    RowBox[{"v", " ", "t"}]}]}], TraditionalForm]}], "DisplayFormula",
 CellChangeTimes->{{3.5006769330676517`*^9, 3.500676940532873*^9}, {
  3.5006769769839516`*^9, 3.5006769866432376`*^9}, {3.5006770288334866`*^9, 
  3.5006770426868963`*^9}, {3.5006771093078685`*^9, 3.500677157707301*^9}},
 TextAlignment->Center],

Cell["\<\
This is a straight line, as expected.\
\>", "Text",
 CellChangeTimes->{{3.5006771590423403`*^9, 3.500677172225731*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell["\<\
Least action with gravitational potential\
\>", "Section",
 CellChangeTimes->{{3.5006734704251604`*^9, 3.500673531351964*^9}, {
  3.5006763289867716`*^9, 3.500676335469963*^9}, {3.5006771914673004`*^9, 
  3.5006771937063665`*^9}}],

Cell[TextData[{
 "Suppose we have gravitational potential close to the surface of the earth, ",
 Cell[BoxData[
  FormBox[
   RowBox[{"U", "=", 
    RowBox[{"m", " ", "g", " ", "y"}]}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 ", and Newtonian kinetic energy, ",
 Cell[BoxData[
  FormBox[
   RowBox[{"K", "=", 
    RowBox[{
     FractionBox["1", "2"], "m", " ", 
     SuperscriptBox[
      OverscriptBox["y", "."], "2"]}]}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 ".  Then the Euler-Lagrange equations become"
}], "Text",
 CellChangeTimes->{{3.500676337562025*^9, 3.5006763568505964`*^9}, {
  3.5006769999236307`*^9, 3.500677021808278*^9}, {3.500677196639453*^9, 
  3.5006772720916862`*^9}}],

Cell[BoxData[{
 FormBox[
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{"-", "m"}], " ", "g"}], "-", 
    TagBox[
     RowBox[{
      RowBox[{
       FractionBox["\[DifferentialD]", 
        RowBox[{"\[DifferentialD]", "t"}]], "m"}], " ", 
      OverscriptBox["y", "."]}],
     D]}], "=", 
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{"-", "m"}], " ", "g"}], "-", 
     RowBox[{"m", " ", 
      OverscriptBox["y", "\[DoubleDot]"]}]}], "\[LongEqual]", "0"}]}], 
  TraditionalForm], "\[IndentingNewLine]", 
 FormBox[
  RowBox[{
   RowBox[{"-", "g"}], "=", 
   OverscriptBox["y", "\[DoubleDot]"]}], 
  TraditionalForm], "\[IndentingNewLine]", 
 FormBox[
  RowBox[{"y", "=", 
   RowBox[{
    SubscriptBox["y", "0"], "+", 
    RowBox[{
     SubscriptBox["a", "y"], "t"}], "-", 
    RowBox[{
     FractionBox["1", "2"], "g", " ", 
     SuperscriptBox["t", "2"]}]}]}], TraditionalForm]}], "DisplayFormula",
 CellChangeTimes->{{3.5006769330676517`*^9, 3.500676940532873*^9}, {
  3.5006769769839516`*^9, 3.5006769866432376`*^9}, {3.5006770288334866`*^9, 
  3.5006770426868963`*^9}, {3.5006772893151965`*^9, 3.5006774138908834`*^9}},
 TextAlignment->Center],

Cell["\<\
This is a parabola, as expected.\
\>", "Text",
 CellChangeTimes->{{3.500676337562025*^9, 3.5006763568505964`*^9}, {
  3.5006769999236307`*^9, 3.5006771037877045`*^9}, {3.500677421269102*^9, 
  3.500677426802266*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell["Constants of motion: Momenta", "Section",
 CellChangeTimes->{{3.5006734704251604`*^9, 3.500673531351964*^9}, {
  3.5006763289867716`*^9, 3.500676335469963*^9}, {3.5006771914673004`*^9, 
  3.5006771937063665`*^9}, {3.500677438024598*^9, 3.5006774443417854`*^9}}],

Cell["\<\
We may rearrange the Euler-Lagrange equations to obtain\
\>", "Text",
 CellChangeTimes->{{3.500676337562025*^9, 3.5006763568505964`*^9}, {
  3.5006769999236307`*^9, 3.500677021808278*^9}, {3.500677196639453*^9, 
  3.5006772720916862`*^9}, {3.500677462161312*^9, 3.5006774728426285`*^9}}],

Cell[BoxData[
 FormBox[
  RowBox[{
   FractionBox[
    RowBox[{"\[PartialD]", "L"}], 
    RowBox[{"\[PartialD]", "q"}],
    MultilineFunction->None], "=", 
   TagBox[
    RowBox[{
     FractionBox["\[DifferentialD]", 
      RowBox[{"\[DifferentialD]", "t"}]], 
     FractionBox[
      RowBox[{"\[PartialD]", "L"}], 
      RowBox[{"\[PartialD]", 
       OverscriptBox["q", "."]}],
      MultilineFunction->None]}],
    D]}], TraditionalForm]], "DisplayFormula",
 CellChangeTimes->{{3.500677476101725*^9, 3.5006774770927544`*^9}},
 TextAlignment->Center],

Cell[TextData[{
 "If it happens that ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    FractionBox[
     RowBox[{"\[PartialD]", "L"}], 
     RowBox[{"\[PartialD]", "q"}],
     MultilineFunction->None], "=", "0"}], TraditionalForm]],
  CellChangeTimes->{{3.500677476101725*^9, 3.5006774770927544`*^9}},
  TextAlignment->Center],
 ", then ",
 Cell[BoxData[
  FormBox[
   TagBox[
    RowBox[{
     FractionBox["\[DifferentialD]", 
      RowBox[{"\[DifferentialD]", "t"}]], 
     FractionBox[
      RowBox[{"\[PartialD]", "L"}], 
      RowBox[{"\[PartialD]", 
       OverscriptBox["q", "."]}],
      MultilineFunction->None]}],
    D], TraditionalForm]],
  CellChangeTimes->{{3.500677476101725*^9, 3.5006774770927544`*^9}},
  TextAlignment->Center],
 " is also zero.  This means that ",
 Cell[BoxData[
  FormBox[
   FractionBox[
    RowBox[{"\[PartialD]", "L"}], 
    RowBox[{"\[PartialD]", 
     OverscriptBox["q", "."]}],
    MultilineFunction->None], TraditionalForm]],
  CellChangeTimes->{{3.500677476101725*^9, 3.5006774770927544`*^9}},
  TextAlignment->Center],
 " is a constant (with respect to time).  We call ",
 Cell[BoxData[
  FormBox[
   FractionBox[
    RowBox[{"\[PartialD]", "L"}], 
    RowBox[{"\[PartialD]", 
     OverscriptBox["q", "."]}],
    MultilineFunction->None], TraditionalForm]],
  CellChangeTimes->{{3.500677476101725*^9, 3.5006774770927544`*^9}},
  TextAlignment->Center],
 " a (conserved) momentum of the system."
}], "Text",
 CellChangeTimes->{{3.500676337562025*^9, 3.5006763568505964`*^9}, {
  3.5006769999236307`*^9, 3.500677021808278*^9}, {3.500677196639453*^9, 
  3.5006772720916862`*^9}, {3.500677462161312*^9, 3.5006775482138596`*^9}, {
  3.5006781568528748`*^9, 3.500678166594163*^9}}],

Cell[CellGroupData[{

Cell["Linear Momentum", "Subsection",
 CellChangeTimes->{{3.500677552213978*^9, 3.5006775672014217`*^9}}],

Cell[TextData[{
 "By noting that Newtonian kinetic energy, ",
 Cell[BoxData[
  FormBox[
   RowBox[{"K", " ", "=", 
    RowBox[{
     FractionBox["1", "2"], "m", " ", 
     SuperscriptBox["v", "2"]}]}], TraditionalForm]],
  FormatType->"TraditionalForm"],
 ", is independent of the time derivatives of position, if potential energy \
depends only on position, we can infer that ",
 Cell[BoxData[
  FormBox[
   FractionBox[
    RowBox[{"\[PartialD]", "L"}], 
    RowBox[{"\[PartialD]", 
     OverscriptBox["x", "."]}],
    MultilineFunction->None], TraditionalForm]],
  CellChangeTimes->{{3.500677476101725*^9, 3.5006774770927544`*^9}},
  TextAlignment->Center],
 " (and, similarly, ",
 Cell[BoxData[
  FormBox[
   FractionBox[
    RowBox[{"\[PartialD]", "L"}], 
    RowBox[{"\[PartialD]", 
     OverscriptBox["y", "."]}],
    MultilineFunction->None], TraditionalForm]],
  CellChangeTimes->{{3.500677476101725*^9, 3.5006774770927544`*^9}},
  TextAlignment->Center],
 " and ",
 Cell[BoxData[
  FormBox[
   FractionBox[
    RowBox[{"\[PartialD]", "L"}], 
    RowBox[{"\[PartialD]", 
     OverscriptBox["z", "."]}],
    MultilineFunction->None], TraditionalForm]],
  CellChangeTimes->{{3.500677476101725*^9, 3.5006774770927544`*^9}},
  TextAlignment->Center],
 ") are constant.  Then ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    FractionBox[
     RowBox[{"\[PartialD]", "L"}], 
     RowBox[{"\[PartialD]", 
      OverscriptBox["x", "."]}],
     MultilineFunction->None], "=", 
    RowBox[{
     RowBox[{
      FractionBox["\[PartialD]", 
       RowBox[{"\[PartialD]", 
        OverscriptBox["x", "."]}],
       MultilineFunction->None], 
      RowBox[{"(", 
       RowBox[{
        FractionBox["1", "2"], "m", " ", 
        SuperscriptBox[
         OverscriptBox["x", "."], "2"]}], ")"}]}], "=", 
     RowBox[{"m", " ", 
      OverscriptBox["x", "."]}]}]}], TraditionalForm]],
  CellChangeTimes->{{3.500677476101725*^9, 3.5006774770927544`*^9}},
  TextAlignment->Center],
 ".  This is just standard linear momentum, ",
 Cell[BoxData[
  FormBox[
   RowBox[{"m", " ", "v"}], TraditionalForm]],
  CellChangeTimes->{{3.500677476101725*^9, 3.5006774770927544`*^9}},
  TextAlignment->Center],
 "."
}], "Text",
 CellChangeTimes->{{3.500676337562025*^9, 3.5006764013829145`*^9}, {
   3.5006764738990607`*^9, 3.500676536515914*^9}, 3.5006772365746355`*^9, {
   3.500677580856826*^9, 3.500677737467461*^9}, {3.500678146481568*^9, 
   3.500678181126593*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell["Angular Momentum", "Subsection",
 CellChangeTimes->{{3.500677552213978*^9, 3.5006775672014217`*^9}, {
  3.5006777482087793`*^9, 3.5006777493638134`*^9}}],

Cell["\<\
Let us change to polar coordinates.\
\>", "Text",
 CellChangeTimes->{{3.500676337562025*^9, 3.5006764013829145`*^9}, {
   3.5006764738990607`*^9, 3.500676536515914*^9}, 3.5006772365746355`*^9, {
   3.500677580856826*^9, 3.500677837358418*^9}, {3.500677999976231*^9, 
   3.5006780122675953`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"x", "[", "t_", "]"}], ":=", 
  RowBox[{
   RowBox[{"r", "[", "t", "]"}], 
   RowBox[{"Cos", "[", 
    RowBox[{"\[Theta]", "[", "t", "]"}], "]"}]}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"y", "[", "t_", "]"}], ":=", 
  RowBox[{
   RowBox[{"r", "[", "t", "]"}], 
   RowBox[{"Sin", "[", 
    RowBox[{"\[Theta]", "[", "t", "]"}], "]"}]}]}], "\[IndentingNewLine]", 
 RowBox[{"K", "=", 
  RowBox[{
   RowBox[{"Expand", "[", 
    RowBox[{"FullSimplify", "[", 
     RowBox[{
      FractionBox["1", "2"], "m", 
      RowBox[{"(", 
       RowBox[{
        SuperscriptBox[
         RowBox[{
          RowBox[{"x", "'"}], "[", "t", "]"}], "2"], "+", 
        SuperscriptBox[
         RowBox[{
          RowBox[{"y", "'"}], "[", "t", "]"}], "2"]}], ")"}]}], "]"}], "]"}], 
   "//", "TraditionalForm"}]}]}], "Input",
 CellChangeTimes->{{3.5006777735285287`*^9, 3.5006777900840187`*^9}, {
  3.50067783979449*^9, 3.500677871852439*^9}, {3.500678015673696*^9, 
  3.5006780228109074`*^9}, {3.50067832596188*^9, 3.500678342815379*^9}}],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    FractionBox["1", "2"], " ", "m", " ", 
    SuperscriptBox[
     RowBox[{
      SuperscriptBox["r", "\[Prime]",
       MultilineFunction->None], "(", "t", ")"}], "2"]}], "+", 
   RowBox[{
    FractionBox["1", "2"], " ", "m", " ", 
    SuperscriptBox[
     RowBox[{"r", "(", "t", ")"}], "2"], " ", 
    SuperscriptBox[
     RowBox[{
      SuperscriptBox["\[Theta]", "\[Prime]",
       MultilineFunction->None], "(", "t", ")"}], "2"]}]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{{3.5006778656572556`*^9, 3.5006778720974464`*^9}, 
   3.5006780231569176`*^9, {3.5006783301880054`*^9, 3.500678343080387*^9}}]
}, Open  ]],

Cell["Using dot notation, this is", "Text",
 CellChangeTimes->{{3.50067788709089*^9, 3.5006779011143055`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"K", "/.", 
    RowBox[{
     RowBox[{
      RowBox[{"r_", "'"}], "[", "t", "]"}], "\[Rule]", 
     RowBox[{"OverDot", "[", "r", "]"}]}]}], "/.", 
   RowBox[{
    RowBox[{"r_", "[", "t", "]"}], "\[Rule]", "r"}]}], "//", 
  "TraditionalForm"}]], "Input",
 CellChangeTimes->{{3.500677906819474*^9, 3.5006779468736596`*^9}, {
  3.500678328631959*^9, 3.5006783471025057`*^9}}],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    FractionBox["1", "2"], " ", 
    SuperscriptBox[
     OverscriptBox["\[Theta]", "."], "2"], " ", "m", " ", 
    SuperscriptBox["r", "2"]}], "+", 
   FractionBox[
    RowBox[{"m", " ", 
     SuperscriptBox[
      OverscriptBox["r", "."], "2"]}], "2"]}], TraditionalForm]], "Output",
 CellChangeTimes->{{3.5006779206158824`*^9, 3.5006779497437444`*^9}, 
   3.500678025379983*^9, {3.5006783289579687`*^9, 3.5006783473155127`*^9}}]
}, Open  ]],

Cell[TextData[{
 "Note that ",
 Cell[BoxData[
  FormBox["\[Theta]", TraditionalForm]],
  CellChangeTimes->{{3.500677476101725*^9, 3.5006774770927544`*^9}},
  TextAlignment->Center],
 " does not appear in this expression.  If potential energy is not a function \
of ",
 Cell[BoxData[
  FormBox["\[Theta]", TraditionalForm]],
  CellChangeTimes->{{3.500677476101725*^9, 3.5006774770927544`*^9}},
  TextAlignment->Center],
 " (is only a function of ",
 Cell[BoxData[
  FormBox["r", TraditionalForm]],
  CellChangeTimes->{{3.500677476101725*^9, 3.5006774770927544`*^9}},
  TextAlignment->Center],
 "), then ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    FractionBox[
     RowBox[{"\[PartialD]", "L"}], 
     RowBox[{"\[PartialD]", 
      OverscriptBox["\[Theta]", "."]}],
     MultilineFunction->None], "=", 
    RowBox[{"m", " ", 
     SuperscriptBox["r", "2"], " ", 
     OverscriptBox["\[Theta]", "."], " "}]}], TraditionalForm]],
  CellChangeTimes->{{3.500677476101725*^9, 3.5006774770927544`*^9}},
  TextAlignment->Center],
 " is constant.  This is standard angular momentum, ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"m", " ", 
     SuperscriptBox["r", "2"], "\[Omega]"}], "=", " ", 
    RowBox[{
     RowBox[{"r", " ", "m", " ", "r", " ", "\[Omega]"}], "=", 
     RowBox[{"r", "\[Times]", "m", " ", "v"}]}]}], TraditionalForm]],
  CellChangeTimes->{{3.500677476101725*^9, 3.5006774770927544`*^9}},
  TextAlignment->Center],
 "."
}], "Text",
 CellChangeTimes->{{3.500676337562025*^9, 3.5006764013829145`*^9}, {
   3.5006764738990607`*^9, 3.500676536515914*^9}, 3.5006772365746355`*^9, {
   3.500677580856826*^9, 3.500677837358418*^9}, {3.5006779653062053`*^9, 
   3.500677994667074*^9}, {3.5006780298741164`*^9, 3.500678122699864*^9}, {
   3.5006781970830655`*^9, 3.5006782787704835`*^9}}]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["\<\
Classic Problem: Brachistochrone (\[OpenCurlyDoubleQuote]shortest time\
\[CloseCurlyDoubleQuote])\
\>", "Section",
 CellChangeTimes->{{3.5006734704251604`*^9, 3.500673531351964*^9}, 
   3.500685825842284*^9}],

Cell[CellGroupData[{

Cell["Problem", "Subsection",
 CellChangeTimes->{{3.500654268050593*^9, 3.5006542794169292`*^9}},
 TextJustification->1.],

Cell[TextData[{
 "A bead starts at ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "=", "0"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 ", ",
 Cell[BoxData[
  FormBox[
   RowBox[{"y", "=", "0"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 ", and slides down a wire without friction, reaching a lower point ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{
     SubscriptBox["x", "f"], ",", 
     SubscriptBox["y", "f"]}], ")"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 ".  What shape should the wire be in order to have the bead reach ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{
     SubscriptBox["x", "f"], ",", 
     SubscriptBox["y", "f"]}], ")"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 " in as little time as possible."
}], "Text",
 CellChangeTimes->{{3.5006539390118537`*^9, 3.500653953225274*^9}, {
   3.500654074195855*^9, 3.500654177844923*^9}, {3.500673523587734*^9, 
   3.500673606105177*^9}, 3.5006953591723595`*^9},
 TextJustification->1.]
}, Open  ]],

Cell[CellGroupData[{

Cell["Solution", "Subsection",
 CellChangeTimes->{{3.5006542826410246`*^9, 3.5006542901622477`*^9}},
 TextJustification->1.],

Cell[CellGroupData[{

Cell["Idea", "Subsubsection",
 CellChangeTimes->{{3.500673701961014*^9, 3.500673709627241*^9}}],

Cell[TextData[{
 "Use the Euler equation to minimize the time it takes to get from ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{
     SubscriptBox["x", "i"], ",", 
     SubscriptBox["y", "i"]}], ")"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 " to ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{
     SubscriptBox["x", "f"], ",", 
     SubscriptBox["y", "f"]}], ")"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 "."
}], "Text",
 CellChangeTimes->{{3.5006539390118537`*^9, 3.500653953225274*^9}, {
  3.500654074195855*^9, 3.500654177844923*^9}, {3.500673523587734*^9, 
  3.500673606105177*^9}, {3.5006736562106595`*^9, 3.5006736664479628`*^9}, {
  3.500673712551327*^9, 3.5006737482723846`*^9}},
 TextJustification->1.]
}, Open  ]],

Cell[CellGroupData[{

Cell["Implementation", "Subsubsection",
 CellChangeTimes->{{3.500673750651455*^9, 3.5006737608317566`*^9}}],

Cell[TextData[{
 "Letting ",
 Cell[BoxData[
  FormBox[
   RowBox[{"\[DifferentialD]", "s"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 " be the infinitesimal distance element and ",
 Cell[BoxData[
  FormBox["v", TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 " be the travel speed,"
}], "Text",
 CellChangeTimes->{{3.5006539390118537`*^9, 3.500653953225274*^9}, {
  3.500654074195855*^9, 3.500654177844923*^9}, {3.500673523587734*^9, 
  3.500673606105177*^9}, {3.5006736562106595`*^9, 3.5006736664479628`*^9}, {
  3.500673712551327*^9, 3.5006737482723846`*^9}, {3.500673856771596*^9, 
  3.5006739189354362`*^9}},
 TextJustification->1.],

Cell[BoxData[{
 FormBox[
  RowBox[{"T", "\[LongEqual]", 
   RowBox[{
    SubsuperscriptBox["\[Integral]", 
     SubscriptBox["t", "i"], 
     SubscriptBox["t", "f"]], 
    RowBox[{
     FractionBox[
      RowBox[{
       TagBox["\[DifferentialD]",
        Dt], "s"}], "v"], 
     RowBox[{"\[DifferentialD]", "t"}]}]}]}], 
  TraditionalForm], "\[IndentingNewLine]", 
 FormBox[
  RowBox[{
   RowBox[{
    TagBox["\[DifferentialD]",
     Dt], "s"}], "=", 
   RowBox[{
    SqrtBox[
     RowBox[{
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         TagBox["\[DifferentialD]",
          Dt], "x"}], ")"}], "2"], "+", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         TagBox["\[DifferentialD]",
          Dt], "y"}], ")"}], "2"]}]], "=", 
    RowBox[{
     RowBox[{
      RowBox[{
       TagBox["\[DifferentialD]",
        Dt], "y"}], 
      SqrtBox[
       RowBox[{"1", "+", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{"x", "'"}], ")"}], "2"]}]], "             ", 
      RowBox[{"x", "'"}]}], "=", 
     FractionBox[
      RowBox[{"\[DifferentialD]", "x"}], 
      RowBox[{"\[DifferentialD]", "y"}],
      MultilineFunction->None]}]}]}], TraditionalForm], "\[IndentingNewLine]", 
 FormBox[
  RowBox[{"v", "=", 
   RowBox[{
    SqrtBox[
     RowBox[{"2", "g", " ", "y"}]], "             ", 
    InterpretationBox[Cell["(Assumption: bead starts at rest)"],
     TextCell["(Assumption: bead starts at rest)"]]}]}], 
  TraditionalForm], "\[IndentingNewLine]", 
 FormBox[
  RowBox[{"T", "=", 
   RowBox[{
    SubsuperscriptBox["\[Integral]", "0", 
     SubscriptBox["y", "f"]], 
    RowBox[{
     SqrtBox[
      FractionBox[
       RowBox[{"1", "+", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{"x", "'"}], ")"}], "2"]}], 
       RowBox[{"2", "g", " ", "y"}]]], 
     RowBox[{"\[DifferentialD]", "y"}]}]}]}], 
  TraditionalForm]}], "DisplayFormula",
 CellChangeTimes->{{3.500673770989057*^9, 3.5006737722500944`*^9}, {
  3.5006738413471394`*^9, 3.5006738431441927`*^9}, {3.5006739219395247`*^9, 
  3.5006740203434377`*^9}, {3.5006740958086715`*^9, 3.5006741529423623`*^9}, {
  3.500689357251708*^9, 3.5006893573757114`*^9}},
 TextAlignment->Center],

Cell[TextData[{
 "Now we apply the Euler equation to ",
 Cell[BoxData[
  FormBox[
   RowBox[{"f", "=", 
    SqrtBox[
     FractionBox[
      RowBox[{"1", "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{"x", "'"}], ")"}], "2"]}], 
      RowBox[{"2", "g", " ", "y"}]]]}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 " and change ",
 Cell[BoxData[
  FormBox[
   RowBox[{"t", "\[Rule]", "y"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 ", ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    OverscriptBox["x", "."], "\[Rule]", 
    RowBox[{"x", "'"}]}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 "."
}], "Text",
 CellChangeTimes->{{3.5006539390118537`*^9, 3.500653953225274*^9}, {
  3.500654074195855*^9, 3.500654177844923*^9}, {3.500673523587734*^9, 
  3.500673606105177*^9}, {3.5006736562106595`*^9, 3.5006736664479628`*^9}, {
  3.500673712551327*^9, 3.5006737482723846`*^9}, {3.500673856771596*^9, 
  3.5006739189354362`*^9}, {3.500674161911628*^9, 3.500674241256976*^9}},
 TextJustification->1.],

Cell[BoxData[{
 FormBox[
  RowBox[{
   RowBox[{
    FractionBox[
     RowBox[{"\[PartialD]", "f"}], 
     RowBox[{"\[PartialD]", "x"}],
     MultilineFunction->None], "-", 
    RowBox[{
     FractionBox["\[DifferentialD]", 
      RowBox[{"\[DifferentialD]", "y"}],
      MultilineFunction->None], " ", 
     FractionBox[
      RowBox[{"\[PartialD]", "f"}], 
      RowBox[{"\[PartialD]", 
       OverscriptBox["x", "."]}],
      MultilineFunction->None]}]}], "\[LongEqual]", "0"}], 
  TraditionalForm], "\[IndentingNewLine]", 
 FormBox[
  RowBox[{
   FractionBox[
    RowBox[{"\[PartialD]", "f"}], 
    RowBox[{"\[PartialD]", "x"}],
    MultilineFunction->None], "=", "0"}], 
  TraditionalForm], "\[IndentingNewLine]", 
 FormBox[
  RowBox[{" ", 
   RowBox[{
    FractionBox[
     RowBox[{"\[PartialD]", "f"}], 
     RowBox[{"\[PartialD]", 
      OverscriptBox["x", "."]}],
     MultilineFunction->None], "=", 
    RowBox[{
     FractionBox["1", 
      SqrtBox[
       RowBox[{"2", "g", " ", "y"}]]], 
     FractionBox[
      RowBox[{"x", "'"}], 
      SqrtBox[
       RowBox[{"1", "+", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{"x", "'"}], ")"}], "2"]}]]]}]}]}], 
  TraditionalForm], "\[IndentingNewLine]", 
 FormBox[
  RowBox[{
   RowBox[{
    RowBox[{
     FractionBox["\[DifferentialD]", 
      RowBox[{"\[DifferentialD]", "y"}],
      MultilineFunction->None], " ", 
     FractionBox[
      RowBox[{"\[PartialD]", "f"}], 
      RowBox[{"\[PartialD]", 
       OverscriptBox["x", "."]}],
      MultilineFunction->None]}], "\[LongEqual]", 
    RowBox[{
     RowBox[{"0", "   ", "\[LongRightArrow]", "   ", 
      FractionBox["1", 
       SqrtBox[
        RowBox[{"2", "g", " ", "y"}]]]}], 
     FractionBox[
      RowBox[{"x", "'"}], 
      SqrtBox[
       RowBox[{"1", "+", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{"x", "'"}], ")"}], "2"]}]]]}]}], "=", "Constant"}], 
  TraditionalForm]}], "DisplayFormula",
 CellChangeTimes->{{3.500673770989057*^9, 3.5006737722500944`*^9}, {
  3.5006738413471394`*^9, 3.5006738431441927`*^9}, {3.5006739219395247`*^9, 
  3.5006740203434377`*^9}, {3.5006740958086715`*^9, 3.5006741529423623`*^9}, {
  3.50067429171247*^9, 3.5006743117520633`*^9}, {3.5006743447130384`*^9, 
  3.5006743930644703`*^9}},
 TextAlignment->Center],

Cell["\<\
Squaring both sides and making a special choice for the constant gives\
\>", "Text",
 CellChangeTimes->{{3.5006539390118537`*^9, 3.500653953225274*^9}, {
  3.500654074195855*^9, 3.500654177844923*^9}, {3.500673523587734*^9, 
  3.500673606105177*^9}, {3.5006736562106595`*^9, 3.5006736664479628`*^9}, {
  3.500673712551327*^9, 3.5006737482723846`*^9}, {3.500673856771596*^9, 
  3.5006739189354362`*^9}, {3.500674161911628*^9, 3.500674241256976*^9}, {
  3.500674406015853*^9, 3.5006744338366766`*^9}},
 TextJustification->1.],

Cell[BoxData[{
 FormBox[
  RowBox[{
   FractionBox[
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"x", "'"}], ")"}], "2"], 
    RowBox[{"2", "g", " ", 
     RowBox[{"y", "(", 
      RowBox[{"1", "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{"x", "'"}], ")"}], "2"]}], ")"}]}]], "=", 
   FractionBox["1", 
    RowBox[{"4", " ", "g", " ", "A"}]]}], 
  TraditionalForm], "\[IndentingNewLine]", 
 FormBox[
  RowBox[{
   RowBox[{"\[LongRightArrow]", "     ", 
    SuperscriptBox[
     RowBox[{"(", 
      FractionBox[
       RowBox[{"\[DifferentialD]", "x"}], 
       RowBox[{"\[DifferentialD]", "y"}],
       MultilineFunction->None], ")"}], "2"]}], "=", 
   RowBox[{
    FractionBox[
     RowBox[{"y", "/", 
      RowBox[{"(", 
       RowBox[{"2", "A"}], ")"}]}], 
     RowBox[{"1", "-", 
      RowBox[{"y", "/", 
       RowBox[{"(", 
        RowBox[{"2", "A"}], ")"}]}]}]], "=", 
    FractionBox[
     SuperscriptBox["y", "2"], 
     RowBox[{
      RowBox[{"2", " ", "A", " ", "y"}], "-", 
      SuperscriptBox["y", "2"]}]]}]}], 
  TraditionalForm], "\[IndentingNewLine]", 
 FormBox[
  RowBox[{
   RowBox[{"\[LongRightArrow]", "     ", "x"}], "=", 
   RowBox[{
    RowBox[{
     SubsuperscriptBox["\[Integral]", "0", 
      SubscriptBox["y", "f"]], 
     RowBox[{
      FractionBox[
       RowBox[{"\[DifferentialD]", "x"}], 
       RowBox[{"\[DifferentialD]", "y"}],
       MultilineFunction->None], 
      RowBox[{"\[DifferentialD]", "y"}]}]}], "=", 
    RowBox[{
     SubsuperscriptBox["\[Integral]", "0", 
      SubscriptBox["y", "f"]], 
     RowBox[{
      FractionBox["y", 
       SqrtBox[
        RowBox[{
         RowBox[{"2", " ", "A", " ", "y"}], "-", 
         SuperscriptBox["y", "2"]}]]], 
      RowBox[{"\[DifferentialD]", "y"}]}]}]}]}], 
  TraditionalForm]}], "DisplayFormula",
 CellChangeTimes->{{3.500673770989057*^9, 3.5006737722500944`*^9}, {
  3.5006738413471394`*^9, 3.5006738431441927`*^9}, {3.5006739219395247`*^9, 
  3.5006740203434377`*^9}, {3.5006740958086715`*^9, 3.5006741529423623`*^9}, {
  3.50067429171247*^9, 3.5006743117520633`*^9}, {3.5006743447130384`*^9, 
  3.5006743930644703`*^9}, {3.5006744392078357`*^9, 3.5006745469880257`*^9}, {
  3.500674585749173*^9, 3.5006746480530176`*^9}},
 TextAlignment->Center],

Cell["\<\
To solve this, change variables:\
\>", "Text",
 CellChangeTimes->{{3.5006539390118537`*^9, 3.500653953225274*^9}, {
  3.500654074195855*^9, 3.500654177844923*^9}, {3.500673523587734*^9, 
  3.500673606105177*^9}, {3.5006736562106595`*^9, 3.5006736664479628`*^9}, {
  3.500673712551327*^9, 3.5006737482723846`*^9}, {3.500673856771596*^9, 
  3.5006739189354362`*^9}, {3.500674161911628*^9, 3.500674241256976*^9}, {
  3.500674406015853*^9, 3.5006744338366766`*^9}, {3.500674665329529*^9, 
  3.500674670733689*^9}},
 TextJustification->1.],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{"y", "=", 
    RowBox[{"A", "(", 
     RowBox[{"1", "-", 
      RowBox[{"cos", "(", "\[Theta]", ")"}]}], ")"}]}], ",", "      ", 
   RowBox[{
    RowBox[{"\[DifferentialD]", "y"}], "=", 
    RowBox[{"A", " ", 
     RowBox[{"sin", "(", "\[Theta]", ")"}], 
     RowBox[{"\[DifferentialD]", "\[Theta]"}]}]}]}], 
  TraditionalForm]], "DisplayFormula",
 CellChangeTimes->{{3.500673770989057*^9, 3.5006737722500944`*^9}, {
  3.5006738413471394`*^9, 3.5006738431441927`*^9}, {3.5006739219395247`*^9, 
  3.5006740203434377`*^9}, {3.5006740958086715`*^9, 3.5006741529423623`*^9}, {
  3.50067429171247*^9, 3.5006743117520633`*^9}, {3.5006743447130384`*^9, 
  3.5006743930644703`*^9}, {3.5006746997475476`*^9, 3.5006747176370773`*^9}, {
  3.5006755763354936`*^9, 3.5006755851427546`*^9}},
 TextAlignment->Center],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"FullSimplify", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"2", "A", " ", "y"}], "-", 
    SuperscriptBox["y", "2"]}], "/.", 
   RowBox[{"y", "\[Rule]", 
    RowBox[{"A", 
     RowBox[{"(", 
      RowBox[{"1", "-", 
       RowBox[{"Cos", "[", "\[Theta]", "]"}]}], ")"}]}]}]}], "]"}]], "Input",
 CellChangeTimes->{{3.500674735248598*^9, 3.500674761080363*^9}, {
  3.5006755786585627`*^9, 3.500675615525654*^9}}],

Cell[BoxData[
 RowBox[{
  SuperscriptBox["A", "2"], " ", 
  SuperscriptBox[
   RowBox[{"Sin", "[", "\[Theta]", "]"}], "2"]}]], "Output",
 CellChangeTimes->{{3.5006747586552916`*^9, 3.500674762899417*^9}, {
  3.5006755792285795`*^9, 3.500675615902665*^9}}]
}, Open  ]],

Cell[BoxData[{
 FormBox[
  RowBox[{
   RowBox[{
    FractionBox["y", 
     SqrtBox[
      RowBox[{
       RowBox[{"2", " ", "A", " ", "y"}], "-", 
       SuperscriptBox["y", "2"]}]]], 
    RowBox[{"\[DifferentialD]", "y"}]}], "=", 
   RowBox[{
    RowBox[{
     FractionBox[
      RowBox[{"A", "(", 
       RowBox[{"1", "-", 
        RowBox[{"cos", "(", "\[Theta]", ")"}]}], ")"}], 
      SqrtBox[
       RowBox[{
        SuperscriptBox["A", "2"], 
        RowBox[{
         SuperscriptBox["sin", "2"], "(", "\[Theta]", ")"}]}]]], "A", " ", 
     RowBox[{"sin", "(", "\[Theta]", ")"}], " ", 
     RowBox[{"\[DifferentialD]", "\[Theta]"}]}], "=", 
    RowBox[{"A", "(", 
     RowBox[{"1", "-", 
      RowBox[{"cos", "(", "\[Theta]", ")"}]}], ")"}]}]}], 
  TraditionalForm], "\[IndentingNewLine]", 
 FormBox[
  RowBox[{"x", "=", 
   RowBox[{
    RowBox[{
     SubsuperscriptBox["\[Integral]", "0", "\[Theta]"], 
     RowBox[{
      RowBox[{"A", "(", 
       RowBox[{"1", "-", 
        RowBox[{"cos", "(", "\[Theta]", ")"}]}], ")"}], 
      RowBox[{"\[DifferentialD]", "\[Theta]"}]}]}], "=", 
    RowBox[{"A", "(", 
     RowBox[{"\[Theta]", "-", 
      RowBox[{"sin", "(", "\[Theta]", ")"}]}], ")"}]}]}], 
  TraditionalForm]}], "DisplayFormula",
 CellChangeTimes->{{3.500673770989057*^9, 3.5006737722500944`*^9}, {
  3.5006738413471394`*^9, 3.5006738431441927`*^9}, {3.5006739219395247`*^9, 
  3.5006740203434377`*^9}, {3.5006740958086715`*^9, 3.5006741529423623`*^9}, {
  3.50067429171247*^9, 3.5006743117520633`*^9}, {3.5006743447130384`*^9, 
  3.5006743930644703`*^9}, {3.5006744392078357`*^9, 3.5006745469880257`*^9}, {
  3.500674585749173*^9, 3.5006746480530176`*^9}, {3.5006748073597326`*^9, 
  3.5006748109948406`*^9}, {3.5006748472029123`*^9, 3.5006749232481627`*^9}},
 TextAlignment->Center],

Cell["\<\
Full solution: The brachistochrone is described by\
\>", "Text",
 CellChangeTimes->{{3.5006539390118537`*^9, 3.500653953225274*^9}, {
  3.500654074195855*^9, 3.500654177844923*^9}, {3.500673523587734*^9, 
  3.500673606105177*^9}, {3.5006736562106595`*^9, 3.5006736664479628`*^9}, {
  3.500673712551327*^9, 3.5006737482723846`*^9}, {3.500673856771596*^9, 
  3.5006739189354362`*^9}, {3.500674161911628*^9, 3.500674241256976*^9}, {
  3.500674406015853*^9, 3.5006744338366766`*^9}, {3.500674665329529*^9, 
  3.500674670733689*^9}, {3.5006749363195496`*^9, 3.5006749694895315`*^9}, {
  3.500695368286629*^9, 3.5006953686346397`*^9}},
 TextJustification->1.],

Cell[BoxData[
 FormBox[
  FrameBox[
   RowBox[{
    RowBox[{"x", "=", 
     RowBox[{"A", "(", 
      RowBox[{"\[Theta]", "-", 
       RowBox[{"sin", "(", "\[Theta]", ")"}]}], ")"}]}], 
    "\[IndentingNewLine]", 
    RowBox[{"y", "=", 
     RowBox[{"A", "(", 
      RowBox[{"1", "-", 
       RowBox[{"cos", "(", "\[Theta]", ")"}]}], ")"}]}]}],
   StripOnInput->False], TraditionalForm]], "DisplayFormula",
 CellChangeTimes->{{3.500673770989057*^9, 3.5006737722500944`*^9}, {
  3.5006738413471394`*^9, 3.5006738431441927`*^9}, {3.5006739219395247`*^9, 
  3.5006740203434377`*^9}, {3.5006740958086715`*^9, 3.5006741529423623`*^9}, {
  3.50067429171247*^9, 3.5006743117520633`*^9}, {3.5006743447130384`*^9, 
  3.5006743930644703`*^9}, {3.5006744392078357`*^9, 3.5006745469880257`*^9}, {
  3.500674585749173*^9, 3.5006746480530176`*^9}, {3.5006748073597326`*^9, 
  3.5006748109948406`*^9}, {3.5006748472029123`*^9, 3.5006749232481627`*^9}, {
  3.50067497451068*^9, 3.5006749747366867`*^9}, {3.500675125077137*^9, 
  3.500675149407857*^9}},
 TextAlignment->Center],

Cell["\<\
There\[CloseCurlyQuote]s no analytic solution, but we can compute them.\
\>", "Text",
 CellChangeTimes->{{3.5006539390118537`*^9, 3.500653953225274*^9}, {
  3.500654074195855*^9, 3.500654177844923*^9}, {3.500673523587734*^9, 
  3.500673606105177*^9}, {3.5006736562106595`*^9, 3.5006736664479628`*^9}, {
  3.500673712551327*^9, 3.5006737482723846`*^9}, {3.500673856771596*^9, 
  3.5006739189354362`*^9}, {3.500674161911628*^9, 3.500674241256976*^9}, {
  3.500674406015853*^9, 3.5006744338366766`*^9}, {3.500674665329529*^9, 
  3.500674670733689*^9}, {3.5006749363195496`*^9, 3.5006749694895315`*^9}, {
  3.500675157476096*^9, 3.500675195925234*^9}, {3.5006754443265867`*^9, 
  3.500675457648981*^9}},
 TextJustification->1.],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"Clear", "[", 
   RowBox[{
   "x", ",", "y", ",", "A", ",", "\[Theta]", ",", "soln", ",", "yf", ",", 
    "xf", ",", "xmax", ",", "\[Theta]max", ",", "Asol", ",", "f"}], "]"}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"RepeatedFindRoot", "[", 
   RowBox[{"fs_", ",", 
    RowBox[{"{", 
     RowBox[{"\[Theta]", ",", "\[Theta]0_"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"A", ",", "A0_"}], "}"}], ",", 
    RowBox[{"n_:", "3"}], ",", 
    RowBox[{"nMaxIterations_:", 
     RowBox[{"OptionValue", "[", 
      RowBox[{"FindRoot", ",", "MaxIterations"}], "]"}]}]}], "]"}], ":=", 
  RowBox[{"If", "[", 
   RowBox[{
    RowBox[{"n", "\[LessEqual]", "1"}], ",", 
    RowBox[{"FindRoot", "[", 
     RowBox[{"fs", ",", 
      RowBox[{"{", 
       RowBox[{"\[Theta]", ",", "\[Theta]0"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"A", ",", "A0"}], "}"}], ",", 
      RowBox[{"MaxIterations", "\[Rule]", "nMaxIterations"}]}], "]"}], ",", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"err", ",", "soln", ",", 
        RowBox[{"k", "=", 
         RowBox[{"Reap", "[", 
          RowBox[{"Quiet", "[", 
           RowBox[{"Check", "[", 
            RowBox[{
             RowBox[{"Sow", "[", 
              RowBox[{"RepeatedFindRoot", "[", 
               RowBox[{"fs", ",", 
                RowBox[{"{", 
                 RowBox[{"\[Theta]", ",", "\[Theta]0"}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"A", ",", "A0"}], "}"}], ",", 
                RowBox[{"n", "-", "1"}], ",", "nMaxIterations"}], "]"}], 
              "]"}], ",", "Throw"}], "]"}], "]"}], "]"}]}]}], "}"}], ",", 
      RowBox[{
       RowBox[{
        RowBox[{"{", 
         RowBox[{"err", ",", 
          RowBox[{"{", 
           RowBox[{"{", "soln", "}"}], "}"}]}], "}"}], "=", "k"}], ";", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{"SameQ", "[", 
          RowBox[{"err", ",", "soln"}], "]"}], ",", "soln", ",", 
         RowBox[{"FindRoot", "[", 
          RowBox[{"fs", ",", 
           RowBox[{"{", 
            RowBox[{"\[Theta]", ",", 
             RowBox[{"Mod", "[", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{"\[Theta]", "/.", "soln"}], ")"}], ",", 
               RowBox[{"2", "\[Pi]"}], ",", 
               RowBox[{
                RowBox[{"-", "2"}], "\[Pi]"}]}], "]"}]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"A", ",", 
             RowBox[{"A", "/.", "soln"}]}], "}"}], ",", 
           RowBox[{"MaxIterations", "\[Rule]", "nMaxIterations"}]}], "]"}]}], 
        "]"}]}]}], "]"}]}], "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"Manipulate", "[", 
  RowBox[{
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"y", "=", 
        RowBox[{"Function", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"A", ",", "\[Theta]"}], "}"}], ",", 
          RowBox[{"A", " ", 
           RowBox[{"(", 
            RowBox[{"1", " ", "-", " ", 
             RowBox[{"Cos", "[", "\[Theta]", "]"}]}], ")"}]}]}], "]"}]}], ",", 
       RowBox[{"x", " ", "=", 
        RowBox[{"Function", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"A", ",", "\[Theta]"}], "}"}], ",", " ", 
          RowBox[{"A", 
           RowBox[{"(", 
            RowBox[{"\[Theta]", " ", "-", " ", 
             RowBox[{"Sin", "[", "\[Theta]", "]"}]}], ")"}]}]}], "]"}]}]}], 
      "}"}], ",", 
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"soln", "=", 
         RowBox[{"RepeatedFindRoot", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{
              RowBox[{"x", "[", 
               RowBox[{"A", ",", "\[Theta]"}], "]"}], "\[Equal]", "xf"}], ",", 
             RowBox[{
              RowBox[{"y", "[", 
               RowBox[{"A", ",", "\[Theta]"}], "]"}], "\[Equal]", "yf"}]}], 
            "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"\[Theta]", ",", 
             RowBox[{"-", "\[Pi]"}]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"A", ",", 
             RowBox[{"-", "1"}]}], "}"}], ",", "3", ",", "1000"}], "]"}]}], 
        "}"}], ",", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"Asol", "=", 
            RowBox[{"A", "/.", "soln"}]}], ",", 
           RowBox[{"\[Theta]max", "=", 
            RowBox[{"\[Theta]", "/.", "soln"}]}]}], "}"}], ",", 
         RowBox[{"ParametricPlot", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"x", "[", 
              RowBox[{"Asol", ",", "\[Theta]"}], "]"}], ",", 
             RowBox[{"y", "[", 
              RowBox[{"Asol", ",", "\[Theta]"}], "]"}]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"\[Theta]", ",", "0", ",", "\[Theta]max"}], "}"}], ",", 
           RowBox[{"PlotRange", "\[Rule]", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"0", ",", "xmax"}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"ymax", ",", "0"}], "}"}]}], "}"}]}], ",", 
           RowBox[{"PlotStyle", "\[Rule]", "Black"}]}], "]"}]}], "]"}]}], 
      "]"}]}], "]"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"xmax", ",", 
       RowBox[{"2", "\[Pi]"}], ",", 
       SubscriptBox["x", "max"]}], "}"}], ",", "0", ",", 
     RowBox[{"4", "\[Pi]"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"ymax", ",", 
       RowBox[{"-", "2.5"}], ",", 
       SubscriptBox["y", "max"]}], "}"}], ",", "0", ",", 
     RowBox[{"-", "20"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"xf", ",", "4", ",", 
       SubscriptBox["x", "f"]}], "}"}], ",", "1", ",", "6"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"yf", ",", 
       RowBox[{"-", "2"}], ",", 
       SubscriptBox["y", "f"]}], "}"}], ",", "0", ",", 
     RowBox[{"-", "5"}]}], "}"}]}], "]"}]}], "Input",
 CellChangeTimes->{{3.5006752046124907`*^9, 3.5006752407415605`*^9}, {
   3.5006754099535685`*^9, 3.5006754366623597`*^9}, {3.500675473443448*^9, 
   3.5006755157116995`*^9}, {3.5006757225918226`*^9, 
   3.5006761510525045`*^9}, {3.5006762060191317`*^9, 3.50067622216461*^9}, {
   3.5006942096673355`*^9, 3.500694224855785*^9}, {3.5007539146950665`*^9, 
   3.5007539153290854`*^9}, {3.5007557852784348`*^9, 
   3.5007558518684053`*^9}, {3.500755937569942*^9, 3.5007560334947815`*^9}, {
   3.500757044853798*^9, 3.5007570502559576`*^9}, 3.5007570812258744`*^9, {
   3.5007571477998447`*^9, 3.500757199382372*^9}, {3.5007572493308496`*^9, 
   3.5007572657433357`*^9}, {3.5007573507318516`*^9, 3.500757351759882*^9}, {
   3.5007575525588255`*^9, 3.5007579864356675`*^9}, {3.500758144743354*^9, 
   3.5007581784453506`*^9}, 3.5007582126753645`*^9, {3.5007582511555033`*^9, 
   3.5007583139843626`*^9}, {3.500758344045253*^9, 3.5007583794583006`*^9}, {
   3.5007586540844297`*^9, 3.5007587958796263`*^9}, 3.500758973462883*^9, 
   3.500759007084878*^9, {3.5007591143770537`*^9, 3.5007591290314875`*^9}, {
   3.5007591731867943`*^9, 3.500759198889555*^9}, 3.5007592370116835`*^9, {
   3.5007592941583753`*^9, 3.5007593066627455`*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`xf$$ = 4, $CellContext`xmax$$ = 2 
    Pi, $CellContext`yf$$ = -2, $CellContext`ymax$$ = -2.5, Typeset`show$$ = 
    True, Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`xmax$$], 2 Pi, 
       Subscript[$CellContext`x, $CellContext`max]}, 0, 4 Pi}, {{
       Hold[$CellContext`ymax$$], -2.5, 
       Subscript[$CellContext`y, $CellContext`max]}, 0, -20}, {{
       Hold[$CellContext`xf$$], 4, 
       Subscript[$CellContext`x, $CellContext`f]}, 1, 6}, {{
       Hold[$CellContext`yf$$], -2, 
       Subscript[$CellContext`y, $CellContext`f]}, 0, -5}}, Typeset`size$$ = {
    360., {71., 76.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`xmax$13918$$ = 
    0, $CellContext`ymax$13919$$ = 0, $CellContext`xf$13920$$ = 
    0, $CellContext`yf$13921$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`xf$$ = 4, $CellContext`xmax$$ = 
        2 Pi, $CellContext`yf$$ = -2, $CellContext`ymax$$ = -2.5}, 
      "ControllerVariables" :> {
        Hold[$CellContext`xmax$$, $CellContext`xmax$13918$$, 0], 
        Hold[$CellContext`ymax$$, $CellContext`ymax$13919$$, 0], 
        Hold[$CellContext`xf$$, $CellContext`xf$13920$$, 0], 
        Hold[$CellContext`yf$$, $CellContext`yf$13921$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`y$ = 
         Function[{$CellContext`A, $CellContext`\[Theta]}, $CellContext`A (1 - 
            Cos[$CellContext`\[Theta]])], $CellContext`x$ = 
         Function[{$CellContext`A, $CellContext`\[Theta]}, $CellContext`A \
($CellContext`\[Theta] - Sin[$CellContext`\[Theta]])]}, 
        Module[{$CellContext`soln$ = \
$CellContext`RepeatedFindRoot[{$CellContext`x$[$CellContext`A, $CellContext`\
\[Theta]] == $CellContext`xf$$, $CellContext`y$[$CellContext`A, $CellContext`\
\[Theta]] == $CellContext`yf$$}, {$CellContext`\[Theta], -
             Pi}, {$CellContext`A, -1}, 3, 1000]}, 
         Module[{$CellContext`Asol$ = 
           ReplaceAll[$CellContext`A, $CellContext`soln$], $CellContext`\
\[Theta]max$ = ReplaceAll[$CellContext`\[Theta], $CellContext`soln$]}, 
          ParametricPlot[{
            $CellContext`x$[$CellContext`Asol$, $CellContext`\[Theta]], 
            $CellContext`y$[$CellContext`Asol$, $CellContext`\[Theta]]}, \
{$CellContext`\[Theta], 0, $CellContext`\[Theta]max$}, 
           PlotRange -> {{0, $CellContext`xmax$$}, {$CellContext`ymax$$, 0}}, 
           PlotStyle -> Black]]]], 
      "Specifications" :> {{{$CellContext`xmax$$, 2 Pi, 
          Subscript[$CellContext`x, $CellContext`max]}, 0, 4 
         Pi}, {{$CellContext`ymax$$, -2.5, 
          Subscript[$CellContext`y, $CellContext`max]}, 
         0, -20}, {{$CellContext`xf$$, 4, 
          Subscript[$CellContext`x, $CellContext`f]}, 1, 
         6}, {{$CellContext`yf$$, -2, 
          Subscript[$CellContext`y, $CellContext`f]}, 0, -5}}, 
      "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{409., {158., 163.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{{3.5007583522064943`*^9, 3.5007583801443214`*^9}, 
   3.5007587379919133`*^9, 3.5007587975336757`*^9, 3.5007589743819103`*^9, 
   3.5007590080419064`*^9, 3.50075913078854*^9, {3.500759173787812*^9, 
   3.500759199545575*^9}, 3.5007592391627474`*^9, {3.5007592947863936`*^9, 
   3.500759307571772*^9}}]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Classic Problem: Catenary", "Section",
 CellChangeTimes->{{3.5006734704251604`*^9, 3.500673531351964*^9}, 
   3.500678571330143*^9, {3.5006786379991164`*^9, 3.500678639358156*^9}}],

Cell[CellGroupData[{

Cell["Problem", "Subsection",
 CellChangeTimes->{{3.500654268050593*^9, 3.5006542794169292`*^9}},
 TextJustification->1.],

Cell[TextData[{
 "Suppose we have a rope of length ",
 Cell[BoxData[
  FormBox["l", TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 " and linear mass density ",
 Cell[BoxData[
  FormBox["\[Lambda]", TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 ".  Suppose we fix its ends at points ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{
     SubscriptBox["x", "0"], ",", 
     SubscriptBox["y", "0"]}], ")"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 " and ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{
     SubscriptBox["x", "f"], ",", 
     SubscriptBox["y", "f"]}], ")"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 ".  What shape does the rope make, hanging under the influence of gravity?"
}], "Text",
 CellChangeTimes->{{3.5006539390118537`*^9, 3.500653953225274*^9}, {
  3.500654074195855*^9, 3.500654177844923*^9}, {3.500673523587734*^9, 
  3.500673606105177*^9}, {3.500678652082533*^9, 3.5006787373450565`*^9}, {
  3.500678802012971*^9, 3.5006788233496027`*^9}, {3.5006792647386675`*^9, 
  3.500679283283216*^9}},
 TextJustification->1.]
}, Open  ]],

Cell[CellGroupData[{

Cell["Solution", "Subsection",
 CellChangeTimes->{{3.5006542826410246`*^9, 3.5006542901622477`*^9}},
 TextJustification->1.],

Cell[CellGroupData[{

Cell["Idea", "Subsubsection",
 CellChangeTimes->{{3.500673701961014*^9, 3.500673709627241*^9}}],

Cell[TextData[{
 "Calculate the potential energy of the rope as a function of the curve, ",
 Cell[BoxData[
  FormBox[
   RowBox[{"y", "(", "x", ")"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 ", and minimize this quantity using the Euler-Lagrange equations."
}], "Text",
 CellChangeTimes->{{3.5006539390118537`*^9, 3.500653953225274*^9}, {
  3.500654074195855*^9, 3.500654177844923*^9}, {3.500673523587734*^9, 
  3.500673606105177*^9}, {3.5006736562106595`*^9, 3.5006736664479628`*^9}, {
  3.500673712551327*^9, 3.5006737482723846`*^9}, {3.5006787458933096`*^9, 
  3.5006787553005886`*^9}, {3.500679156427461*^9, 3.5006792006107693`*^9}},
 TextJustification->1.]
}, Open  ]],

Cell[CellGroupData[{

Cell["Implementation", "Subsubsection",
 CellChangeTimes->{{3.500673750651455*^9, 3.5006737608317566`*^9}}],

Cell[TextData[{
 "Suppose we have curve parameterized by ",
 Cell[BoxData[
  FormBox["t", TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 ", ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{
     RowBox[{"x", "(", "t", ")"}], ",", " ", 
     RowBox[{"y", "(", "t", ")"}]}], ")"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 ".  The potential energy associated with this curve is"
}], "Text",
 CellChangeTimes->{{3.5006539390118537`*^9, 3.500653953225274*^9}, {
  3.500654074195855*^9, 3.500654177844923*^9}, {3.500673523587734*^9, 
  3.500673606105177*^9}, {3.5006736562106595`*^9, 3.5006736664479628`*^9}, {
  3.500673712551327*^9, 3.5006737482723846`*^9}, {3.500673856771596*^9, 
  3.5006739189354362`*^9}, {3.500678901671921*^9, 3.5006789082621155`*^9}, {
  3.500679072494977*^9, 3.500679092694575*^9}, {3.500679205896926*^9, 
  3.500679247173147*^9}, {3.5006793994226537`*^9, 3.500679418269212*^9}},
 TextJustification->1.],

Cell[BoxData[{
 FormBox[
  RowBox[{"U", "\[LongEqual]", 
   RowBox[{
    SubsuperscriptBox["\[Integral]", "0", "l"], 
    RowBox[{"\[Lambda]", " ", "g", " ", "y", 
     RowBox[{"\[DifferentialD]", "s"}]}]}]}], 
  TraditionalForm], "\[IndentingNewLine]", 
 FormBox[
  RowBox[{
   RowBox[{
    TagBox["\[DifferentialD]",
     Dt], "s"}], "=", 
   RowBox[{
    SqrtBox[
     RowBox[{
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         TagBox["\[DifferentialD]",
          Dt], "x"}], ")"}], "2"], "+", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         TagBox["\[DifferentialD]",
          Dt], "y"}], ")"}], "2"]}]], "=", 
    RowBox[{
     RowBox[{
      RowBox[{
       TagBox["\[DifferentialD]",
        Dt], "y"}], 
      SqrtBox[
       RowBox[{"1", "+", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{"x", "'"}], ")"}], "2"]}]], "             ", 
      RowBox[{"x", "'"}]}], "=", 
     FractionBox[
      RowBox[{"\[DifferentialD]", "x"}], 
      RowBox[{"\[DifferentialD]", "y"}],
      MultilineFunction->None]}]}]}], TraditionalForm], "\[IndentingNewLine]", 
 FormBox[
  RowBox[{"U", "=", 
   RowBox[{
    SubsuperscriptBox["\[Integral]", 
     SubscriptBox["y", "0"], 
     SubscriptBox["y", "f"]], 
    RowBox[{"\[Lambda]", " ", "g", " ", "y", 
     SqrtBox[
      RowBox[{"1", "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{"x", "'"}], ")"}], "2"]}]], 
     RowBox[{
      TagBox["\[DifferentialD]",
       Dt], "y"}]}]}]}], TraditionalForm]}], "DisplayFormula",
 CellChangeTimes->{{3.500673770989057*^9, 3.5006737722500944`*^9}, {
  3.5006738413471394`*^9, 3.5006738431441927`*^9}, {3.5006739219395247`*^9, 
  3.5006740203434377`*^9}, {3.5006740958086715`*^9, 3.5006741529423623`*^9}, {
  3.5006792494532146`*^9, 3.5006793290785713`*^9}, {3.500679422006322*^9, 
  3.5006794985995893`*^9}, {3.5006795294065013`*^9, 3.500679560847432*^9}, {
  3.5006796055267544`*^9, 3.500679628768442*^9}, {3.5006796828120418`*^9, 
  3.5006796835230627`*^9}, {3.5006893450383463`*^9, 3.5006893527165737`*^9}, {
  3.5006893897096686`*^9, 3.500689411753321*^9}},
 TextAlignment->Center],

Cell[TextData[{
 "Note that if we choose to factor ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    TagBox["\[DifferentialD]",
     Dt], "s"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 " the other way (for ",
 Cell[BoxData[
  FormBox[
   RowBox[{"y", "'"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 "), we get a mess."
}], "Text",
 CellChangeTimes->{{3.500690969301423*^9, 3.500691015743798*^9}}],

Cell[TextData[{
 "Now we apply the Euler-Lagrange equation to ",
 Cell[BoxData[
  FormBox[
   RowBox[{"f", "=", 
    RowBox[{"\[Lambda]", " ", "g", " ", "y", 
     SqrtBox[
      RowBox[{"1", "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{"x", "'"}], ")"}], "2"]}]]}]}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 " and change ",
 Cell[BoxData[
  FormBox[
   RowBox[{"t", "\[Rule]", "y"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 ", ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    OverscriptBox["x", "."], "\[Rule]", 
    RowBox[{"x", "'"}]}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 "."
}], "Text",
 CellChangeTimes->{{3.5006539390118537`*^9, 3.500653953225274*^9}, {
  3.500654074195855*^9, 3.500654177844923*^9}, {3.500673523587734*^9, 
  3.500673606105177*^9}, {3.5006736562106595`*^9, 3.5006736664479628`*^9}, {
  3.500673712551327*^9, 3.5006737482723846`*^9}, {3.500673856771596*^9, 
  3.5006739189354362`*^9}, {3.500678901671921*^9, 3.5006789082621155`*^9}, {
  3.500679072494977*^9, 3.500679092694575*^9}, {3.500679205896926*^9, 
  3.500679247173147*^9}, {3.500679337564823*^9, 3.5006793664116764`*^9}, {
  3.500679582440071*^9, 3.5006795856161647`*^9}, {3.5006796389687443`*^9, 
  3.5006796533651705`*^9}, {3.5006797287024*^9, 3.5006797291834145`*^9}, {
  3.500689416422459*^9, 3.5006894293918433`*^9}},
 TextJustification->1.],

Cell[BoxData[{
 FormBox[
  RowBox[{
   RowBox[{
    FractionBox[
     RowBox[{"\[PartialD]", "f"}], 
     RowBox[{"\[PartialD]", "x"}],
     MultilineFunction->None], "-", 
    RowBox[{
     FractionBox["\[DifferentialD]", 
      RowBox[{"\[DifferentialD]", "y"}],
      MultilineFunction->None], " ", 
     FractionBox[
      RowBox[{"\[PartialD]", "f"}], 
      RowBox[{"\[PartialD]", 
       RowBox[{"x", "'"}]}],
      MultilineFunction->None]}]}], "\[LongEqual]", "0"}], 
  TraditionalForm], "\[IndentingNewLine]", 
 FormBox[
  RowBox[{
   FractionBox[
    RowBox[{"\[PartialD]", "f"}], 
    RowBox[{"\[PartialD]", "x"}],
    MultilineFunction->None], "=", "0"}], 
  TraditionalForm], "\[IndentingNewLine]", 
 FormBox[
  RowBox[{" ", 
   RowBox[{
    FractionBox[
     RowBox[{"\[PartialD]", "f"}], 
     RowBox[{"\[PartialD]", 
      RowBox[{"x", "'"}]}],
     MultilineFunction->None], "=", 
    FractionBox[
     RowBox[{"\[Lambda]", " ", "g", " ", "y", " ", 
      RowBox[{"x", "'"}]}], 
     SqrtBox[
      RowBox[{"1", "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{"x", "'"}], ")"}], "2"]}]]]}]}], 
  TraditionalForm]}], "DisplayFormula",
 CellChangeTimes->{{3.500673770989057*^9, 3.5006737722500944`*^9}, {
  3.5006738413471394`*^9, 3.5006738431441927`*^9}, {3.5006739219395247`*^9, 
  3.5006740203434377`*^9}, {3.5006740958086715`*^9, 3.5006741529423623`*^9}, {
  3.50067429171247*^9, 3.5006743117520633`*^9}, {3.5006743447130384`*^9, 
  3.5006743930644703`*^9}, {3.500679669029634*^9, 3.500679706916755*^9}, {
  3.500679759742319*^9, 3.500679792005274*^9}, {3.5006798318624535`*^9, 
  3.5006798521090527`*^9}, {3.5006894339279776`*^9, 3.500689547934352*^9}},
 TextAlignment->Center],

Cell[TextData[{
 "Since ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    FractionBox[
     RowBox[{"\[PartialD]", "f"}], 
     RowBox[{"\[PartialD]", "x"}],
     MultilineFunction->None], "=", "0"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 ", ",
 Cell[BoxData[
  FormBox[
   RowBox[{" ", 
    FractionBox[
     RowBox[{"\[PartialD]", "f"}], 
     RowBox[{"\[PartialD]", 
      RowBox[{"x", "'"}]}],
     MultilineFunction->None]}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 " is constant, say ",
 Cell[BoxData[
  FormBox[
   RowBox[{"a", "=", " ", 
    RowBox[{
     RowBox[{
      FractionBox["1", 
       RowBox[{"\[Lambda]", " ", "g"}]], 
      FractionBox[
       RowBox[{"\[PartialD]", "f"}], 
       RowBox[{"\[PartialD]", 
        RowBox[{"x", "'"}]}],
       MultilineFunction->None]}], "=", 
     FractionBox[
      RowBox[{"y", " ", 
       RowBox[{"x", "'"}]}], 
      SqrtBox[
       RowBox[{"1", "+", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{"x", "'"}], ")"}], "2"]}]]]}]}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 ".  Then"
}], "Text",
 CellChangeTimes->{{3.5006539390118537`*^9, 3.500653953225274*^9}, {
  3.500654074195855*^9, 3.500654177844923*^9}, {3.500673523587734*^9, 
  3.500673606105177*^9}, {3.5006736562106595`*^9, 3.5006736664479628`*^9}, {
  3.500673712551327*^9, 3.5006737482723846`*^9}, {3.500673856771596*^9, 
  3.5006739189354362`*^9}, {3.500678901671921*^9, 3.5006789082621155`*^9}, {
  3.500679072494977*^9, 3.500679092694575*^9}, {3.500679205896926*^9, 
  3.500679247173147*^9}, {3.500679337564823*^9, 3.5006793664116764`*^9}, {
  3.500679582440071*^9, 3.5006795856161647`*^9}, {3.5006796389687443`*^9, 
  3.5006796533651705`*^9}, {3.5006797287024*^9, 3.5006797291834145`*^9}, {
  3.500689416422459*^9, 3.5006894293918433`*^9}, {3.500689551676463*^9, 
  3.500689638930045*^9}},
 TextJustification->1.],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{"x", "'"}], "=", 
   RowBox[{
    FractionBox[
     RowBox[{"\[DifferentialD]", "x"}], 
     RowBox[{"\[DifferentialD]", "y"}],
     MultilineFunction->None], "=", 
    RowBox[{"\[PlusMinus]", 
     FractionBox["a", 
      SqrtBox[
       RowBox[{
        SuperscriptBox["y", "2"], "-", 
        SuperscriptBox["a", "2"]}]]]}]}]}], 
  TraditionalForm]], "DisplayFormula",
 CellChangeTimes->{{3.500673770989057*^9, 3.5006737722500944`*^9}, {
  3.5006738413471394`*^9, 3.5006738431441927`*^9}, {3.5006739219395247`*^9, 
  3.5006740203434377`*^9}, {3.5006740958086715`*^9, 3.5006741529423623`*^9}, {
  3.50067429171247*^9, 3.5006743117520633`*^9}, {3.5006743447130384`*^9, 
  3.5006743930644703`*^9}, {3.500679669029634*^9, 3.500679706916755*^9}, {
  3.500679759742319*^9, 3.500679792005274*^9}, {3.5006798318624535`*^9, 
  3.5006798521090527`*^9}, {3.5006894339279776`*^9, 3.500689547934352*^9}, {
  3.500689648628332*^9, 3.500689720352455*^9}},
 TextAlignment->Center],

Cell["Using the fact that", "Text",
 CellChangeTimes->{{3.5006897256666126`*^9, 3.50068975260141*^9}, {
  3.5006898936845856`*^9, 3.5006899330597515`*^9}}],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    RowBox[{"\[Integral]", 
     FractionBox[
      RowBox[{"\[DifferentialD]", "y"}], 
      SqrtBox[
       RowBox[{
        SuperscriptBox["y", "2"], "-", 
        SuperscriptBox["a", "2"]}]]]}], "\[LongEqual]", 
    RowBox[{
     RowBox[{
      SuperscriptBox["cosh", 
       RowBox[{"-", "1"}]], "(", 
      FractionBox["y", "a"], ")"}], "+", "b"}]}], ","}], 
  TraditionalForm]], "DisplayFormula",
 CellChangeTimes->{{3.500673770989057*^9, 3.5006737722500944`*^9}, {
  3.5006738413471394`*^9, 3.5006738431441927`*^9}, {3.5006739219395247`*^9, 
  3.5006740203434377`*^9}, {3.5006740958086715`*^9, 3.5006741529423623`*^9}, {
  3.50067429171247*^9, 3.5006743117520633`*^9}, {3.5006743447130384`*^9, 
  3.5006743930644703`*^9}, {3.500679669029634*^9, 3.500679706916755*^9}, {
  3.500679759742319*^9, 3.500679792005274*^9}, {3.5006798318624535`*^9, 
  3.5006798521090527`*^9}, {3.5006894339279776`*^9, 3.500689547934352*^9}, {
  3.500689648628332*^9, 3.500689720352455*^9}, {3.5006899374878826`*^9, 
  3.500689953147346*^9}, {3.5006900240804453`*^9, 3.500690041865972*^9}, {
  3.500690090927424*^9, 3.500690098683654*^9}},
 TextAlignment->Center],

Cell[TextData[{
 "integration of ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "'"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 " gives"
}], "Text",
 CellChangeTimes->{{3.5006899599395466`*^9, 3.5006899839962587`*^9}, {
  3.5006900396459064`*^9, 3.5006900399519153`*^9}, {3.5006968562886724`*^9, 
  3.500696856896691*^9}}],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{"x", "(", "y", ")"}], "=", 
   RowBox[{
    RowBox[{
     RowBox[{"\[PlusMinus]", "a"}], " ", 
     RowBox[{
      SuperscriptBox["cosh", 
       RowBox[{"-", "1"}]], "(", 
      FractionBox["y", "a"], ")"}]}], "+", "b"}]}], 
  TraditionalForm]], "DisplayFormula",
 CellChangeTimes->{{3.500673770989057*^9, 3.5006737722500944`*^9}, {
  3.5006738413471394`*^9, 3.5006738431441927`*^9}, {3.5006739219395247`*^9, 
  3.5006740203434377`*^9}, {3.5006740958086715`*^9, 3.5006741529423623`*^9}, {
  3.50067429171247*^9, 3.5006743117520633`*^9}, {3.5006743447130384`*^9, 
  3.5006743930644703`*^9}, {3.500679669029634*^9, 3.500679706916755*^9}, {
  3.500679759742319*^9, 3.500679792005274*^9}, {3.5006798318624535`*^9, 
  3.5006798521090527`*^9}, {3.5006894339279776`*^9, 3.500689547934352*^9}, {
  3.500689648628332*^9, 3.5006897400180373`*^9}, {3.5006897715399704`*^9, 
  3.5006897836613293`*^9}, {3.5006898204024167`*^9, 3.500689825471567*^9}, {
  3.5006900557423825`*^9, 3.5006901053048496`*^9}, {3.5006902201922503`*^9, 
  3.5006902206762643`*^9}, {3.500696838594149*^9, 3.5006968510995193`*^9}},
 TextAlignment->Center],

Cell[TextData[{
 "where ",
 Cell[BoxData[
  FormBox["b", TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 " is a constant of integration."
}], "Text",
 CellChangeTimes->{{3.5006968582377305`*^9, 3.5006968748282213`*^9}}],

Cell[TextData[{
 "Plotting this for ",
 Cell[BoxData[
  FormBox[
   RowBox[{"a", "=", "1"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 ", ",
 Cell[BoxData[
  FormBox[
   RowBox[{"b", "=", "0"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 " gives:"
}], "Text",
 CellChangeTimes->{{3.5006968582377305`*^9, 3.5006968748282213`*^9}, {
  3.500697094747731*^9, 3.5006971192614565`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Clear", "[", "y", "]"}], ";", 
  RowBox[{"Manipulate", "[", 
   RowBox[{
    RowBox[{"ParametricPlot", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{
           RowBox[{
            RowBox[{"-", "a"}], " ", 
            RowBox[{"ArcCosh", "[", 
             FractionBox["t", "a"], "]"}]}], "+", "b"}], ",", "t"}], "}"}], 
        ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{
           RowBox[{"a", " ", 
            RowBox[{"ArcCosh", "[", 
             FractionBox["t", "a"], "]"}]}], "+", "b"}], ",", "t"}], "}"}]}], 
       "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"t", ",", "ymin", ",", "ymax"}], "}"}], ",", 
      RowBox[{"PlotStyle", "\[Rule]", "Black"}], ",", 
      RowBox[{"AspectRatio", "\[Rule]", "Automatic"}]}], "]"}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"a", ",", "1"}], "}"}], ",", 
      RowBox[{"-", "5"}], ",", "5"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"b", ",", "0"}], "}"}], ",", 
      RowBox[{"-", "5"}], ",", "5"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"ymin", ",", "0", ",", 
        SubscriptBox["y", "min"]}], "}"}], ",", 
      RowBox[{"-", "5"}], ",", "5"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"ymax", ",", "2", ",", 
        SubscriptBox["y", "max"]}], "}"}], ",", 
      RowBox[{"-", "5"}], ",", "5"}], "}"}]}], "]"}]}]], "Input",
 CellChangeTimes->{{3.5006967262438235`*^9, 3.5006967324610076`*^9}, {
  3.5006967941868343`*^9, 3.5006968265737934`*^9}, {3.500696943420252*^9, 
  3.5006970802433014`*^9}, {3.5007549389673843`*^9, 3.5007549446145515`*^9}, {
  3.5007549828936844`*^9, 3.500754993720005*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`a$$ = 0.6600000000000001, $CellContext`b$$ =
     0, $CellContext`ymax$$ = 2, $CellContext`ymin$$ = 0, Typeset`show$$ = 
    True, Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`a$$], 1}, -5, 5}, {{
       Hold[$CellContext`b$$], 0}, -5, 5}, {{
       Hold[$CellContext`ymin$$], 0, 
       Subscript[$CellContext`y, $CellContext`min]}, -5, 5}, {{
       Hold[$CellContext`ymax$$], 2, 
       Subscript[$CellContext`y, $CellContext`max]}, -5, 5}}, 
    Typeset`size$$ = {360., {102., 106.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = True, $CellContext`a$4619$$ =
     0, $CellContext`b$4620$$ = 0, $CellContext`ymin$4621$$ = 
    0, $CellContext`ymax$4622$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`a$$ = 1, $CellContext`b$$ = 
        0, $CellContext`ymax$$ = 2, $CellContext`ymin$$ = 0}, 
      "ControllerVariables" :> {
        Hold[$CellContext`a$$, $CellContext`a$4619$$, 0], 
        Hold[$CellContext`b$$, $CellContext`b$4620$$, 0], 
        Hold[$CellContext`ymin$$, $CellContext`ymin$4621$$, 0], 
        Hold[$CellContext`ymax$$, $CellContext`ymax$4622$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      ParametricPlot[{{(-$CellContext`a$$) 
           ArcCosh[$CellContext`t/$CellContext`a$$] + $CellContext`b$$, \
$CellContext`t}, {$CellContext`a$$ 
           ArcCosh[$CellContext`t/$CellContext`a$$] + $CellContext`b$$, \
$CellContext`t}}, {$CellContext`t, $CellContext`ymin$$, $CellContext`ymax$$}, 
        PlotStyle -> Black, AspectRatio -> Automatic], 
      "Specifications" :> {{{$CellContext`a$$, 1}, -5, 
         5}, {{$CellContext`b$$, 0}, -5, 5}, {{$CellContext`ymin$$, 0, 
          Subscript[$CellContext`y, $CellContext`min]}, -5, 
         5}, {{$CellContext`ymax$$, 2, 
          Subscript[$CellContext`y, $CellContext`max]}, -5, 5}}, 
      "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{409., {189., 194.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{
  3.5006967329170213`*^9, {3.5006970295007997`*^9, 3.500697080490309*^9}, {
   3.5006971311868095`*^9, 3.5006971368149757`*^9}, 3.5007549454965773`*^9, {
   3.50075497935958*^9, 3.500754994052015*^9}}]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Problem: Bead on a Ring", "Section",
 CellChangeTimes->{{3.5006734704251604`*^9, 3.500673531351964*^9}, 
   3.500678571330143*^9, {3.5006786379991164`*^9, 3.500678639358156*^9}, {
   3.5006910355213833`*^9, 3.5006910420225754`*^9}}],

Cell["From 8.033 Quiz #2", "Text",
 CellChangeTimes->{{3.5006911555499363`*^9, 3.5006911653902273`*^9}}],

Cell[CellGroupData[{

Cell["Problem", "Subsection",
 CellChangeTimes->{{3.500654268050593*^9, 3.5006542794169292`*^9}},
 TextJustification->1.],

Cell[BoxData[
 GraphicsBox[
  TagBox[RasterBox[CompressedData["
1:eJztnQ+MHNV9xx/Yx9kuTaCWWwJWHVREFdkiqmHcJlBXjZSmocYLTkhbnBBw
F6wCiYvplIAMKoqXWm6FSDfCiW3UbhVq0zBpQdU124q00DUJKO0CbkFDfImj
rbFNvbliO2Psu93t/Nk/s3u7e7Mzv/fmvXffj4Rv7nbudobfZ3/v9/7MzOWb
tmy483zG2H2L3H823H7/b27devsDn1rofvOxB/74jk3eS391HmOfdjcaAAAA
AAAAAAAAAAAAAAAAAAAAAABADaZWsyYLdtbTPhigBUc3n/C+nNzAbnaCn1hO
mscD1OdY0ft3ege77I3mT8xyiocDdKE+Mb74+dY3bE+ahwI04ciqBdumm9s2
uynVYwFaECqm3HKKMRRUICG1XZ1iqtHIMoaCCiSjq5hyyymGggokJFxMeeUU
Q0EFknHq7lAx5ZdTKKhAIjrF1Jl/8v7Nek6hoALxqb+4tFlMTe950vviT9Og
oALx6Uz3sYWeSba/iYIK0GEFfqV9GEAvIBSgBk4BauAUoAZOAWrgFKAGTgFq
4BSgBk4BauAUoAZOAWrgFKAGTsmAXlHQ62xURa8o6HU2qqJXFPQ6G1XRKwp6
nY2q6BUFvc5GVfSKgl5noyp6RUGvs1EVvaKg19moil5R0OtsVEWvKOh1Nqqi
VxT0OhtV0SsKep2NqugVBb3ORlX0ioJeZ6MqekVBr7NRFb2ioNfZqIpeUdDr
bFRFryjodTaqolcU9DobVdErCnqdjaroFQW9zkZV9IqCXmejKnpFQa+zURW9
oqDX2aiKXlHQ62xURa8o6HU2qqJXFPQ6G1XRKwp6nY08nLbuWrnhiLsx9Qcr
st94Z4699YqCXmcjDfb1532iNONv1l79Pfbh7w3fXa8o6HU2svDmNex6Pze9
W3f/OXkHu/y7Q/fXKwp6nY0k/N/N7OJX3K/1Zy/+mifVoRXsysPDfkGvKOh1
NnJQf2Yhu/Wsu/HTT7CVJ9yvMw+z8x+cGfIbekVBr7ORg/c2sAssb+N/LmU/
c9DbODDOPnRsyG/oFQW9zkYOfnwJW+I/aPPgEjbuPy/RlWvxS0N+Q68o6HU2
cuCq9MG3vY033s8WveBt/PSjbGz/kN/QKwp6nY0cTDB2RdXbeOdKtvSQt3Fm
bfAQzkG0o+DYVq7C+fC4A6foaTt1diO79qS3EcWpqqtTxntEZ0b1h57DKXr+
s9X21fee/3DN23Dbvh6nqnb4O2aZRvuxwiwn7Ej5AKfocWv0oLvXePn9z/lf
e2t0J5/pauFYnoUpCTtULsApetwmLxhLqD+z4HH/Jy8vZr8SmvMrZnusYY1q
2CpD7ZIKTtFTnxg7b7M35nlm0+qPv+t+rT3OFv5FvfWynS30Vkx+PWW1m7/b
4BTowfkiu/gFV6V9H7d//yvTjcZ//SL7WCtNOYXsbGOCKDhNq7LrLIEHSw+c
4sHRW9j7Ht1/x0d/0Dh642ee+sql7CM/aL5SyRb77N+KgmeV4baLVkblTAWn
uHB636fHrtv7E2/rbz+54JP+lkelvyydKDhFf4dKb8WlEnBKJAOU6hMFR2Gp
4JRAnEFNWp8oOFl79g/VAE4JJFce8EK/KFSzqo6nwylxVM1Br/SNQlHV3h+c
EkdxYInUPwrZKrdD4QqcEoc5sDHrH4WyohN/cEocA5u+QVEwB9VfcgOnxDGy
U7aaFRWcEseobV+jDKfAcKwRa/RGn5lBFYBT4qiMNpbQyBe4HQpX4JRAzEGD
A/2i4OTzPI+FI3BKIOVBiadPFPovYFACOCWSQdMts6JQzZtq1lIecEokg6Zb
eqJQyWfVHJkKgFMiGbTYIByFajGbU3ZJgg+cEoqT7Zup2lFwhTKLqq5HaAGn
xOJY/Rbb+VFwyoVsTnmhGnBKPK5V+VLPoAKruD6ZBbWbvDZwKgUqRdM1yLIs
2/3PyplZlrc08ckDTqWFbdtlq+z+W9UtCnqdjaroFQW9zkZV9IqCXmejKnpF
Qa+zURW9oqDX2aiKXlHQ62xURa8o6HU2qqJXFPQ6G1XRKwp6nY2q6BUFvc5G
VfSKgl5noyp6RUGvs1GHil20CqYZvoU1y5hmzrLKturLXeCUaColy/TurW+Y
pmVZJduD+f8WLStvmp5drlu2ojfgaMApoTjlgqeMWbDs7isYuqNgl61c1pUu
p+gCGDglCG8Vp6dTuV/+6RcFu5h305lpqXf9DJwSQbWYYyw7OO0MikK15Hpl
5BW7iAZOcadazLpelIZV3sOiUC2aimkFp/jilHIRjJgjCsEfUaYRhFM8qeQN
FiXFzB0Fx012GUUuqoFT/CiZUTWIFAVXUCOvwggDnOKEU8qwyNcTR4yC9zdN
+ccX4BQXHGuknBI9CmVTfqvgFAc8o6xRap9RomBLbxWcoqeUGc2oUaPgWSVz
JxBOUWNnWX7U/tmoUXCtkrhah1O0VHNs4B0WBzN6FLxcOPIvCQJOkWIZmTi1
TowoOBaL9VYCgFOEVLIsXvKIFYWqyWY9WFkK4BQdVpxmzydmFMrxsiJv4BQV
lawR+07BcaPg5GRMVXCKiCJL8Gi0+FFwU5V0wwpwigQ3YSTphiWIgltVyXYj
dThFQSVjJCpsEkXBYjm52j84RUCJDX7kVSSSRcE25HrYEZxKTp4lfdhQwihU
s4ZM60DhVFIc0xj4DLWoJI5CXqaiCk4lxM0RyRue5FEoMnmeogWnklExBj2X
aBQIolAypKnU4VQiaJQiiQLRoRAAp5JQMmhaHJIoSCMVnEpAiaqIoYlCJSOH
VHAqPmRKUUXByUohFZyKDZ1SZFGQQyo4FRebsPdOFgUppIJTMakQlec+dFGQ
oVCHU/GoGDnCv0YYBdoDiwWcioVD28WijAJpAo0FnIoDddlCGoVS2nN/cCoO
eYI5vjC0USiydFcpwKkYWIz40gLiKFArPyJwanTK5I0LdRSymTQ7f3BqZKr0
RTB1FJxUO39wamQ4DCuSR8FOdMlFQuDUqBQ4FCv0USiy9EoqODUiZZZ4pfBs
OETBTK+kglOjwadS4RCFFEsqODUaOS4ffx5RKKc2SgWnRqJMPTIVwCUKeSOl
1g9OjYJjJL2Srz9couBkUmr94NQo8Gn5eEWBU1KdE7mcSn3pz3BsXiUKpyjw
+gjMgVxOsZv2lCX2iltjwikK1XTu+SmZUx7SemUZvO71yysKFkvj7sQSOiWr
Vw6/Tz23KKRSpjNJWZ6T6KYSAXl+1Qk3p+yUynSJ8Gy6iF35J0Wp7qcUUOUx
KdOEX2thmtz+tCIwSX3yMDP8/jY/pyopr/lMH1l9anBuRThWtXmOHwWQDK6N
CEeneDbZIBF8i12evW8kKlnJca11eTpVnfcVVYijy71u4BXVYOuKVJ8txrkF
4TpKyPfjoBjHN7OxvXVv6+ytj6Y7BMq5AeHqFMaowpzc0HRq6nPHUj0Qh3Oh
y3c2w0z7YneZqE+Mrznmf/3zeqoHYnFe3sbXqVIqs36yMrX6Am+O7eymV9I9
jgyfpXhtOM+6ZqR9JGkK1Pexa082GpP3Tqd6GGXeH3TOTlkYTghxZJWbqOpP
p/w5y/PuOXF2CsMJYWq72M2O7hU6/xVHudTvcyYTk8uWvHIg5Qq9yP0CFN5O
lZh0q9FSpLadfX57yhV6lntfnLdTTvLHLOnE5DK39Uv1CARUI9xX2+bR+IU4
t/WClCv0osH9Lbg7VUbjF+bAFSkvquLf9Am4KgCNX5i0K3RHQEecv1No/ELU
dqZcoZcEXFrE/y1EnIUyTN1+Mt0DEDG2wz/gIrKtKtT/7vmUj8AQcFGYgCSS
5TxlqQivLc28/tZfpzvV16iImNQX4JSV5f8eCnBoHVv/UroFeqNRFDH/KsAp
G6MJ0pATsaBNRAGNgkoahAzsiHDKREElCRUh94QW4ZSFSx0kocR/YqYhxqky
RqgkoSDk0y0i3FVcPiMJppAJbCEpRMRAG4iAmLsNCHEKRbocVMU8tkWIUyjS
5cAWU9gKeRcx3Q0wF4KuYhLilKDPB5gDMd0+MU456PhJgaC6VlALi9kZGRAz
lCDIKUEnA4Yj6KMNp+YRgkoQMU4JKg7BUMTMIItyCgNUMiCq+y3IKSz1lAC9
nMIAlQyIWh8Cp+YPoioQODV/gFOAGr2cEnJZGZgDvZwSNdoGhgGnADVwClAj
zCkxhQ6ckgBhTol5egeckgBhTpkiEhUW5cmAMKdsEYkK41MyIK5GF5Go4JQM
CLlRUMNzSkSiglMyIHBdgoBEBadkQKBTAhIVLvCTAZHrp/gnKqzzlAFRvW/P
qf6J6uAS1ubq/d9NdCdKOCUFIq9xGJCoTj3C2NgjBxv1V+9k7MYfJXgXPHFN
CgQ9UsN3alBF5aaqK3zdpncwtibBowxxLZYUCL1mdECiOrq86VTj5Aa2YFv8
e3tncAMqGRBy1+GWUwMSVcep+hOstRnrXTA1IwOCytpm97J/ouo41Zhg7MI3
476JoHtpgTkQNKTTdKp/oqJyCkOeciDo6QetaPdNVB2natsZuzb2I50E3UsL
zIWYGqTlVN9E1XHqyCo2tjf2EFUew1NyIKav1G6V+iWqtlPHbmALtsTPmxhK
kAQxHb+2U/0SVdOpHz65lH3g7xM8JUzVW5rV/v1O1vswq9PPPXlp2g/hi42Y
+1Z0quc+icp1KiDZQ8JUvbpvescWZ3r3eNeT1qdWMzaurFNiOkudN+mTqPw8
VZ8YZ5e9keQ9FF2VUJ9Y6vZ0p3df1K3Q0eXqOiVmFjkk7uxEFbR957YydtOJ
BO8hb4l+9OUhL57d2DPKG+x9Zq26TjUyIirbkFOzE1WznnI7fUkmZsScSBxq
u4fZMbms26nm3ko7JeTjHW5gZyWqplP1F5eyxfH/P0r7CKP6i0Or7YNLupxq
7a20UyUhzwANbc9KVK2xhNquJMsShJxHDGr/uHSoHd1OtfdW2ikhn++uePcm
qvb4VKJlCULyrb+CcOEev6vaNYk0PbGOsau/5QTz4N75+F/vq3urw1h3J66z
b2NmC+t6ubO379QPt7FFhenOL63/l87/nelv7//wHm/N2aKv+UN69de2sc4e
/vhE8B6t1z7wjSTV6mhkBdx2v8up3kTVGUd/LUHrJ2bw1g36gp11twq65J5w
hI6tv/tw452H2DWHGn6+9c/H/YjcV5+dcbr2ndX2tfb2vtorXUuCiYVTf+Sa
c2hdZ0j4zFpPbrdcYEHXprb/wked+vdXBrtP71hk1ad3jwd61/Z/4bB35M13
FEBBwAhVd7vUk6hC831u6xdzQEHUHZTd7ql7hLWn/yw83n9yg99mu6/5XyeC
83GTUB+nevYd4tRjDx1uHN/sT4Ceu8/P35PLQqNYZzcufPBh307P8qnVXt6s
bWe/8543PrHEE//cVj/t1yd+/Zi/P9uUoAs0EraAscJup3oS1eQytrwphDeg
cHWs4XBRVyp62edm57VcODr1fX7u8s7E3xjmVO++g50ae9x7j+BvHVj6ZvBD
X5mAmS1B1nIPyP3fd25rSOezGwP3gu+m1uzx3/mJBGs+RkXA+uGe+rkrUfnr
0R9tfuyPrGJsUf7g6O+QFbO4sOE10GMPfqFrVnJqddMaNxV4WWWYU737Dmv7
Gq2XvfUaTTo7z2xZ6LvSODC+5JXWD4O37vyyZ9GB8dYviyv78/wvDehxKpSo
2tfNBJ8hbzidxVjsWRU32VfbH4qhz+SyZrCaqWCYU737RnJqZkufDNN26ujy
ZotYf+3Jpc08Fc6BE839RFLmv4aqt59Pfq1fUeDEjNsCdQ95HFzSsmZiTqd6
943k1Jm1w5w6s9Z3yu0Zrv/n54KhvolxLwe67axbT9WfSMEpAY1fr1PkFyWL
a/oatW/+5bruJTkHl7RK5wm/MhzuVPe+kZxq1UddhJzydj207uoX6623nt69
5J4Tbi/Q6xHW94mrzTvwH9qZNR5JnKgENn310q5pt6QKLx2cWt2K2oS/Mbye
6t43aj11c1PiV3/S2rPt1NRqV84jq/wOc/OtG8cfvr89PnVgvNWXfvc/iP4n
zE2Ze89vllPEiUrgsuEjboqq7WKXhuaF3ZAHHdfadn947eAS/9tjNzSdCieZ
3n1nOxXs3eWUq0XQC2yc/Xo75bj9vlYPctN0Kxk1nTp2S2hExtU4mJyv/4PA
i0C4T7/OnjehTVQZMY9LdTn5eS9a7dGlgCOrgvH/qdV+Oplc5vZja9/5w9v9
OJ9Z67741jfr/fdtNYEtWntPrQ6yUNB1c99vwd2HG413HumkPDcN+n/h3FY3
DblO+b1I96/9uHiotj18dF6/x2sXp5/OCWwDC7w/5rOdIk1UIobYAo5v9gej
3RB2XYZvrxz78onG5J1BPvBG2Ri76dgWf3bGHwgIxbh73+ObWTMFBTT39jzw
jJneEQykuznPI7yr69SCe040Tn/1ci9lTi5bVJg+veuz/sD72Y3tW1C4LvnX
d7fG24XBvRzpM79LmaiELZ3yZkTcNimYpguXSe88vTI0HXfqEW8WbmbL1fu9
nxzf7OeYfvu25vtCzZ+/d+sNgpEW79XT1kq24K7wPUrcemr3d1aysUf8v10v
r/Nm9I7d4C+/PrSuJZXfwHbP/gnC5DxE1ccpwkRVZWLu+iAX7Rq9D8fyTX9O
f/UO8X2+AN5Ver91KHSJylJz1XBChjh18t52U3v0S2k51cjwHd/p5xRdojJk
XeHJlcFO1ba3L7ytfT29/zdFg2tj23e9HFWiKom5llo23B7izv7XGblV3/pv
efV4rfRQktXYCXH4ftb7OkWVqDjnWEnxlloPWBBV//7KZoXenptPBYtrouq/
rpcmUZUUva4vGc2LIu/rn6lOP3unN5Dw9OG+r4qCb6Lq7xRNopqfaUoJuCaq
AdcfUCSq+Zmm1IBrogo7VZ/c+WvL73tppkGTqJCmJIZnogo5da5w4afKk3+6
6AEvvSRPVEhTMuMY/CZiO07N7Br7zP82Gmd3jn32NEGicpCmpIbjR77j1L9e
eLG/8PbEdQt31JInKr7dVZCYLLep2LZTp25gv+tf+VHfy37+zcSJqjo/h9AV
wua2PKHlVH1ibOHeYPP1953/4EzSRJXDLTxlJ5fh1JK0nJq+i7WuOZlazVae
SJiobFnvuwHacBtPaDnlivQLPwo239sQ6JUgUTkZPGBGfoqcrhBvOfXWz7WX
n81sYWP7G4kSVcHAOIICmHxuntBy6uXFYacWPO6/ZVwxKgzPl1EBTh2pllMT
jP1Ws2SrPd6cAY2bqBx+3VRACp/WL+TU8o23Bvxqa1Y9ZqJCy6cMJo++X8ip
MIFT8RKVPS8XoauJY3CY7Qg51VrW6l101Fz9EydROQb6fOpQ5pAAWk61Hynq
1+it9dRxEhWXdAp4UTDIS6r+Ywnta75HT1QWntWnFlnyHNBy6sRKtrS5hvq9
T7LFLzV/PHKiKmMYQTEcg7qX3nLq3Kbw3MwH3269PmKiqvCo+QBXKox4KVV7
DnkfG/ubYPO/Lw7dFmm0ROVksyimlKNEXKe317q8/ctswxlvo7aLLQrdb2Ck
RJXFoikVKdAue2k7Vdu78KIXvI2ja8773JnODqMkqjx9HwKIgDZwnXWezhfZ
dUcbjbP3s490XXwWPVER6w7EYVJKFbrG4dS2hWuefeG289ZPdu0ROVFRN8tA
HE6WUKrwtVi1V7d96Gc3f/u9nl0iJioopTKUvasIz6yKlqhKDKMIKkMoVZTn
oEVJVFBKdVypiJaTRHEqQqKCUupDVlNFel7jnIkKSukAlVSRnJorURUZLubT
AVcqisudoj1XdniiyqPHpwskoYzm1LBE5eSglD4UCCaUIz7/enCiIh0tA6lT
YrmkYwoRnRqYqCpGFkppRfKIRnRqUKIqMRMrETSjmk34iL+oTvVNVE6eejkX
kIECyyfJFFGd6peoKlkDCxG0pJyo/YvslP3YU/feeO8zIX+LBtVgPpCNqplg
yDGyU7uX+ReTXvVU83snybsC6bFY7FQV1akvrWheobziy/73JSODO0xpTSUb
N2lEdOrflrcve7/ke35qLKC/pztWzLwR0amrQvdS+I3YbwbUwk0duRglczSn
KitCTv3S9bj/63yhnDGskRukiPN9XTd9uRfdvfmDZRijXlkexym0e/MJx2KZ
0cbVYzi1AhN884tq3rVqhBYwYo1+Tcipq+IdGVCXat4Yoa6K6FQ+5NTuuEcG
1MWxDJaPWPREdKp0WVupG+IfGFCZUpZli1GSVRSnKgWDPfbbwXDC8lsw1jlv
qeQNlpt72cCcTlWLWZbx9Hz+tmvWXHPb6yQHBxTFKeWYkS8PzyvDnfKEMvLo
54EOnlYsVxwyRjnEKbvgCYUVUqAXp+Q2gpl8aUCyGeCUbZmMZQsY3QQDqBRz
BjNMqzw7Yc12yi65+cmzEDMwYDiVUt5NPczMWUU7lLNC9zSzbatgZpgvHzp3
ICKVspU3DW9MwDBd8pbFLCvnbfoDBVmzULShE4hB1baLluXbxHyzLKtso3YC
NERejw5AROAUoAZOAWrgFKAGTgFq4BSgBk4BauAUoAZOAWrgFKAGTgFq4BSg
Bk4BauAUoAZOAWrgFKAGTgFq4BSgBk4BauAUoAZOAWrgFKAGTgFq4BSgBk4B
auAUoAZOAWrgFKAGTgFq4BSgBk4BauAUoAZOAWrgFKAGTgFq4BSgBk4BauAU
oAZOAWrgFKAGTgFq4BSgBk4BauAUoAZOAWrgFKAGTgFq4BSgBk4BauAUoAZO
AWrgFKAGTgFq4BSgBk4BauAUoAZOAWrgFKAGTgFq4BSgBk4BauAUoAZOAWrg
FKAGTgFq4BSgBk4BauAUoAZOAWrgFKAGTgFq4BSgBk4BauAUoAZOAWrgFKAG
TgEAAAAAAAAAAAAAAAAAAAAAAABa8P8lPtf5
    "], {{0, 415}, {596, 0}}, {0, 255},
    ColorFunction->GrayLevel],
   BoxForm`ImageTag["Byte", ColorSpace -> "Grayscale", Interleaving -> None],
   Selectable->False],
  BaseStyle->"ImageGraphics",
  ImageSizeRaw->{596, 415},
  PlotRange->{{0, 596}, {0, 415}}]], "Input",
 CellChangeTimes->{3.5006942344410686`*^9},
 TextAlignment->Center],

Cell[TextData[{
 "A bead of mass ",
 Cell[BoxData[
  FormBox["m", TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 " slides without friction on a circular hoop of radius ",
 Cell[BoxData[
  FormBox["R", TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 ". The angle ",
 Cell[BoxData[
  FormBox["\[Theta]", TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 " is defined so that when the bead is at the bottom of the hoop, ",
 Cell[BoxData[
  FormBox[
   RowBox[{"\[Theta]", "=", "0"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 ". The hoop is spun about its vertical axis with angular velocity ",
 Cell[BoxData[
  FormBox["\[Omega]", TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 ". Gravity acts downward with acceleration ",
 Cell[BoxData[
  FormBox["g", TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 ".\nFind an equation describing how ",
 Cell[BoxData[
  FormBox["\[Theta]", TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 " evolves with time.\nFind the minimum value of ",
 Cell[BoxData[
  FormBox["\[Omega]", TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 " for the bead to be in equilibrium at some value of ",
 Cell[BoxData[
  FormBox["\[Theta]", TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 " other than zero.\n(\[OpenCurlyDoubleQuote]equilibrium\
\[CloseCurlyDoubleQuote] means that ",
 Cell[BoxData[
  FormBox[
   OverscriptBox["\[Theta]", "."], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 " and ",
 Cell[BoxData[
  FormBox[
   OverscriptBox["\[Theta]", "\[DoubleDot]"], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 " are both zero.) How large must ",
 Cell[BoxData[
  FormBox["\[Omega]", TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 " be in order to make ",
 Cell[BoxData[
  FormBox[
   RowBox[{"\[Theta]", "=", 
    RowBox[{"\[Pi]", "/", "2"}]}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 "?"
}], "Text",
 CellChangeTimes->{{3.5006539390118537`*^9, 3.500653953225274*^9}, {
  3.500654074195855*^9, 3.500654177844923*^9}, {3.500673523587734*^9, 
  3.500673606105177*^9}, {3.500678652082533*^9, 3.5006787373450565`*^9}, {
  3.500678802012971*^9, 3.5006788233496027`*^9}, {3.5006792647386675`*^9, 
  3.500679283283216*^9}, {3.5006910450886664`*^9, 3.5006911121506515`*^9}, {
  3.500691176256549*^9, 3.500691321021834*^9}, {3.5006913880728188`*^9, 
  3.500691412359537*^9}},
 TextJustification->1.]
}, Open  ]],

Cell[CellGroupData[{

Cell["Solution", "Subsection",
 CellChangeTimes->{{3.5006542826410246`*^9, 3.5006542901622477`*^9}},
 TextJustification->1.],

Cell["\<\
The general Lagrangian for the object in Cartesian coordinates is\
\>", "Text",
 CellChangeTimes->{{3.5006539390118537`*^9, 3.500653953225274*^9}, {
   3.500654074195855*^9, 3.500654177844923*^9}, {3.500673523587734*^9, 
   3.500673606105177*^9}, {3.5006736562106595`*^9, 3.5006736664479628`*^9}, {
   3.500673712551327*^9, 3.5006737482723846`*^9}, {3.500673856771596*^9, 
   3.5006739189354362`*^9}, {3.500678901671921*^9, 3.5006789082621155`*^9}, {
   3.500679072494977*^9, 3.500679092694575*^9}, {3.500679205896926*^9, 
   3.500679247173147*^9}, {3.5006793994226537`*^9, 3.500679418269212*^9}, {
   3.5006918350820494`*^9, 3.500691853840605*^9}, 3.5006953798709717`*^9},
 TextJustification->1.],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Clear", "[", 
   RowBox[{"x", ",", "y", ",", "z", ",", "t"}], "]"}], ";", 
  RowBox[{
   RowBox[{"(", 
    RowBox[{"L", "=", 
     RowBox[{
      RowBox[{
       FractionBox["1", "2"], "m", 
       RowBox[{"(", 
        RowBox[{
         SuperscriptBox[
          RowBox[{
           RowBox[{"x", "'"}], "[", "t", "]"}], "2"], "+", 
         SuperscriptBox[
          RowBox[{
           RowBox[{"y", "'"}], "[", "t", "]"}], "2"], "+", 
         SuperscriptBox[
          RowBox[{
           RowBox[{"z", "'"}], "[", "t", "]"}], "2"]}], ")"}]}], "-", 
      RowBox[{"m", " ", "g", " ", 
       RowBox[{"z", "[", "t", "]"}]}]}]}], ")"}], "//", 
   "TraditionalForm"}]}]], "Input",
 CellChangeTimes->{{3.500691859015758*^9, 3.500691909160242*^9}}],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    FractionBox["1", "2"], " ", "m", " ", 
    RowBox[{"(", 
     RowBox[{
      SuperscriptBox[
       RowBox[{
        SuperscriptBox["x", "\[Prime]",
         MultilineFunction->None], "(", "t", ")"}], "2"], "+", 
      SuperscriptBox[
       RowBox[{
        SuperscriptBox["y", "\[Prime]",
         MultilineFunction->None], "(", "t", ")"}], "2"], "+", 
      SuperscriptBox[
       RowBox[{
        SuperscriptBox["z", "\[Prime]",
         MultilineFunction->None], "(", "t", ")"}], "2"]}], ")"}]}], "-", 
   RowBox[{"g", " ", "m", " ", 
    RowBox[{"z", "(", "t", ")"}]}]}], TraditionalForm]], "Output",
 CellChangeTimes->{{3.500691902896057*^9, 3.5006919094612513`*^9}}]
}, Open  ]],

Cell[TextData[{
 "Converting to polar coordinates, and using the constraints that ",
 Cell[BoxData[
  FormBox[
   RowBox[{"\[Phi]", "=", 
    RowBox[{"\[Omega]", " ", "t"}]}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 " and ",
 Cell[BoxData[
  FormBox[
   RowBox[{"r", "=", "R"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 ", using the conversion"
}], "Text",
 CellChangeTimes->{{3.5006539390118537`*^9, 3.500653953225274*^9}, {
  3.500654074195855*^9, 3.500654177844923*^9}, {3.500673523587734*^9, 
  3.500673606105177*^9}, {3.5006736562106595`*^9, 3.5006736664479628`*^9}, {
  3.500673712551327*^9, 3.5006737482723846`*^9}, {3.500673856771596*^9, 
  3.5006739189354362`*^9}, {3.500678901671921*^9, 3.5006789082621155`*^9}, {
  3.500679072494977*^9, 3.500679092694575*^9}, {3.500679205896926*^9, 
  3.500679247173147*^9}, {3.5006793994226537`*^9, 3.500679418269212*^9}, {
  3.5006918350820494`*^9, 3.500691853840605*^9}, {3.5006919376930866`*^9, 
  3.500691943819268*^9}, {3.500691991665684*^9, 3.500692024772664*^9}, {
  3.5006929315445037`*^9, 3.5006929383637056`*^9}, {3.500692972372712*^9, 
  3.5006929752367973`*^9}},
 TextJustification->1.],

Cell[BoxData[{
 FormBox[
  RowBox[{"x", "=", 
   RowBox[{"R", " ", 
    RowBox[{"sin", "(", "\[Theta]", ")"}], " ", 
    RowBox[{"cos", "(", 
     RowBox[{"\[Omega]", " ", "t"}], ")"}]}]}], 
  TraditionalForm], "\[IndentingNewLine]", 
 FormBox[
  RowBox[{"y", "=", 
   RowBox[{"R", " ", 
    RowBox[{"sin", "(", "\[Theta]", ")"}], " ", 
    RowBox[{"sin", "(", 
     RowBox[{"\[Omega]", " ", "t"}], ")"}]}]}], 
  TraditionalForm], "\[IndentingNewLine]", 
 FormBox[
  RowBox[{"z", "=", 
   RowBox[{"R", "-", 
    RowBox[{"R", " ", 
     RowBox[{"cos", "(", "\[Theta]", ")"}]}]}]}], 
  TraditionalForm]}], "DisplayFormula",
 CellChangeTimes->{{3.500673770989057*^9, 3.5006737722500944`*^9}, {
  3.5006738413471394`*^9, 3.5006738431441927`*^9}, {3.5006739219395247`*^9, 
  3.5006740203434377`*^9}, {3.5006740958086715`*^9, 3.5006741529423623`*^9}, {
  3.50067429171247*^9, 3.5006743117520633`*^9}, {3.5006743447130384`*^9, 
  3.5006743930644703`*^9}, {3.500679669029634*^9, 3.500679706916755*^9}, {
  3.500679759742319*^9, 3.500679792005274*^9}, {3.5006798318624535`*^9, 
  3.5006798521090527`*^9}, {3.5006894339279776`*^9, 3.500689547934352*^9}, {
  3.500689648628332*^9, 3.5006897400180373`*^9}, {3.5006897715399704`*^9, 
  3.5006897836613293`*^9}, {3.5006898204024167`*^9, 3.500689825471567*^9}, {
  3.5006900557423825`*^9, 3.5006901053048496`*^9}, {3.5006902201922503`*^9, 
  3.5006902206762643`*^9}, {3.5006929601933517`*^9, 3.500693001957588*^9}},
 TextAlignment->Center],

Cell["gives", "Text",
 CellChangeTimes->{{3.5006930062387147`*^9, 3.500693011595873*^9}}],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"Clear", "[", 
   RowBox[{"r", ",", "\[Theta]", ",", "\[Phi]"}], "]"}], ";", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{"Defer", "[", "L", "]"}], "\[Equal]", 
      RowBox[{"(", 
       RowBox[{"Lpolar", "=", 
        RowBox[{"Expand", "[", 
         RowBox[{"FullSimplify", "[", 
          RowBox[{"L", "/.", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"x", "\[Rule]", 
              RowBox[{"Function", "[", 
               RowBox[{"t", ",", 
                RowBox[{"R", " ", 
                 RowBox[{"Cos", "[", 
                  RowBox[{"\[Omega]", " ", "t"}], "]"}], 
                 RowBox[{"Sin", "[", 
                  RowBox[{"\[Theta]", "[", "t", "]"}], "]"}]}]}], "]"}]}], 
             ",", 
             RowBox[{"y", "\[Rule]", 
              RowBox[{"Function", "[", 
               RowBox[{"t", ",", 
                RowBox[{"R", " ", 
                 RowBox[{"Sin", "[", 
                  RowBox[{"\[Omega]", " ", "t"}], "]"}], 
                 RowBox[{"Sin", "[", 
                  RowBox[{"\[Theta]", "[", "t", "]"}], "]"}]}]}], "]"}]}], 
             ",", 
             RowBox[{"z", "\[Rule]", 
              RowBox[{"Function", "[", 
               RowBox[{"t", ",", 
                RowBox[{"R", "-", 
                 RowBox[{"R", " ", 
                  RowBox[{"Cos", "[", 
                   RowBox[{"\[Theta]", "[", "t", "]"}], "]"}]}]}]}], 
               "]"}]}]}], "}"}]}], "]"}], "]"}]}], ")"}]}], "/.", 
     RowBox[{
      RowBox[{
       RowBox[{"\[Theta]", "'"}], "[", "t", "]"}], "\[Rule]", 
      OverscriptBox["\[Theta]", "."]}]}], "/.", 
    RowBox[{
     RowBox[{"\[Theta]", "[", "t", "]"}], "\[Rule]", "\[Theta]"}]}], "//", 
   "TraditionalForm"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"0", "\[Equal]", 
    RowBox[{"Defer", "[", 
     RowBox[{
      RowBox[{
       SubscriptBox["\[PartialD]", "\[Theta]"], "L"}], "-", 
      RowBox[{
       RowBox[{"Dt", "[", 
        RowBox[{"\"\<\>\"", ",", "t"}], "]"}], 
       RowBox[{
        SubscriptBox["\[PartialD]", 
         OverscriptBox["\[Theta]", "."]], "L"}]}]}], "]"}], "\[Equal]", 
    RowBox[{"(", 
     RowBox[{"EL", "=", 
      RowBox[{"Expand", "[", 
       RowBox[{"FullSimplify", "[", 
        RowBox[{
         RowBox[{
          SubscriptBox["\[PartialD]", 
           RowBox[{"\[Theta]", "[", "t", "]"}]], "Lpolar"}], "-", 
         RowBox[{
          SubscriptBox["\[PartialD]", "t"], 
          RowBox[{
           SubscriptBox["\[PartialD]", 
            RowBox[{
             RowBox[{"\[Theta]", "'"}], "[", "t", "]"}]], "Lpolar"}]}]}], 
        "]"}], "]"}]}], ")"}]}], "/.", 
   RowBox[{
    RowBox[{"\[Theta]", "[", "t", "]"}], "\[Rule]", "\[Theta]"}]}], "//", 
  "TraditionalForm"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"\[Theta]", "''"}], "[", "t", "]"}], "\[Equal]", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      RowBox[{"\[Theta]", "''"}], "[", "t", "]"}], "/.", 
     RowBox[{
      RowBox[{"Solve", "[", 
       RowBox[{
        RowBox[{"EL", "\[Equal]", "0"}], ",", 
        RowBox[{
         RowBox[{"\[Theta]", "''"}], "[", "t", "]"}]}], "]"}], 
      "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}]}], ")"}]}], "//",
   "TraditionalForm"}]}], "Input",
 CellChangeTimes->{{3.5006919489974213`*^9, 3.5006919864995313`*^9}, {
  3.500692027841755*^9, 3.5006923957756453`*^9}, {3.50069302231219*^9, 
  3.5006930229562097`*^9}}],

Cell[BoxData[
 FormBox[
  RowBox[{"L", "\[LongEqual]", 
   RowBox[{
    RowBox[{"g", " ", "m", " ", "R", " ", 
     RowBox[{"cos", "(", "\[Theta]", ")"}]}], "-", 
    RowBox[{"g", " ", "m", " ", "R"}], "-", 
    RowBox[{
     FractionBox["1", "4"], " ", "m", " ", 
     SuperscriptBox["R", "2"], " ", 
     SuperscriptBox["\[Omega]", "2"], " ", 
     RowBox[{"cos", "(", 
      RowBox[{"2", " ", "\[Theta]"}], ")"}]}], "+", 
    RowBox[{
     FractionBox["1", "2"], " ", 
     SuperscriptBox[
      OverscriptBox["\[Theta]", "."], "2"], " ", "m", " ", 
     SuperscriptBox["R", "2"]}], "+", 
    RowBox[{
     FractionBox["1", "4"], " ", "m", " ", 
     SuperscriptBox["R", "2"], " ", 
     SuperscriptBox["\[Omega]", "2"]}]}]}], TraditionalForm]], "Output",
 CellChangeTimes->{{3.5006920745171366`*^9, 3.500692083102391*^9}, {
   3.5006921208835087`*^9, 3.5006921302717867`*^9}, 3.5006921668208685`*^9, {
   3.5006922491843066`*^9, 3.5006922538044434`*^9}, {3.500692312705187*^9, 
   3.500692329575686*^9}, {3.5006923669277916`*^9, 3.500692395971651*^9}, 
   3.5006930238682365`*^9}],

Cell[BoxData[
 FormBox[
  RowBox[{"0", "\[LongEqual]", 
   RowBox[{
    FractionBox[
     RowBox[{"\[PartialD]", "L"}], 
     RowBox[{"\[PartialD]", "\[Theta]"}],
     MultilineFunction->None], "-", 
    RowBox[{
     FractionBox[
      RowBox[{"\[DifferentialD]", "\<\"\"\>"}], 
      RowBox[{"\[DifferentialD]", "t"}],
      MultilineFunction->None], " ", 
     FractionBox[
      RowBox[{"\[PartialD]", "L"}], 
      RowBox[{"\[PartialD]", 
       OverscriptBox["\[Theta]", "."]}],
      MultilineFunction->None]}]}], "\[LongEqual]", 
   RowBox[{
    RowBox[{"-", 
     RowBox[{"g", " ", "m", " ", "R", " ", 
      RowBox[{"sin", "(", "\[Theta]", ")"}]}]}], "+", 
    RowBox[{"m", " ", 
     SuperscriptBox["R", "2"], " ", 
     SuperscriptBox["\[Omega]", "2"], " ", 
     RowBox[{"sin", "(", "\[Theta]", ")"}], " ", 
     RowBox[{"cos", "(", "\[Theta]", ")"}]}], "-", 
    RowBox[{"m", " ", 
     SuperscriptBox["R", "2"], " ", 
     RowBox[{
      SuperscriptBox["\[Theta]", "\[Prime]\[Prime]",
       MultilineFunction->None], "(", "t", ")"}]}]}]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{{3.5006920745171366`*^9, 3.500692083102391*^9}, {
   3.5006921208835087`*^9, 3.5006921302717867`*^9}, 3.5006921668208685`*^9, {
   3.5006922491843066`*^9, 3.5006922538044434`*^9}, {3.500692312705187*^9, 
   3.500692329575686*^9}, {3.5006923669277916`*^9, 3.500692395971651*^9}, 
   3.5006930240352416`*^9}],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    SuperscriptBox["\[Theta]", "\[Prime]\[Prime]",
     MultilineFunction->None], "(", "t", ")"}], "\[LongEqual]", 
   FractionBox[
    RowBox[{
     RowBox[{"R", " ", 
      SuperscriptBox["\[Omega]", "2"], " ", 
      RowBox[{"sin", "(", 
       RowBox[{"\[Theta]", "(", "t", ")"}], ")"}], " ", 
      RowBox[{"cos", "(", 
       RowBox[{"\[Theta]", "(", "t", ")"}], ")"}]}], "-", 
     RowBox[{"g", " ", 
      RowBox[{"sin", "(", 
       RowBox[{"\[Theta]", "(", "t", ")"}], ")"}]}]}], "R"]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{{3.5006920745171366`*^9, 3.500692083102391*^9}, {
   3.5006921208835087`*^9, 3.5006921302717867`*^9}, 3.5006921668208685`*^9, {
   3.5006922491843066`*^9, 3.5006922538044434`*^9}, {3.500692312705187*^9, 
   3.500692329575686*^9}, {3.5006923669277916`*^9, 3.500692395971651*^9}, 
   3.5006930240622425`*^9}]
}, Open  ]],

Cell[TextData[{
 "Finding the minimum value of ",
 Cell[BoxData[
  FormBox["\[Omega]", TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 " for the bead to be in equilibrium gives"
}], "Text",
 CellChangeTimes->{{3.5006539390118537`*^9, 3.500653953225274*^9}, {
  3.500654074195855*^9, 3.500654177844923*^9}, {3.500673523587734*^9, 
  3.500673606105177*^9}, {3.5006736562106595`*^9, 3.5006736664479628`*^9}, {
  3.500673712551327*^9, 3.5006737482723846`*^9}, {3.500673856771596*^9, 
  3.5006739189354362`*^9}, {3.500678901671921*^9, 3.5006789082621155`*^9}, {
  3.500679072494977*^9, 3.500679092694575*^9}, {3.500679205896926*^9, 
  3.500679247173147*^9}, {3.5006793994226537`*^9, 3.500679418269212*^9}, {
  3.5006918350820494`*^9, 3.500691853840605*^9}, {3.5006919376930866`*^9, 
  3.500691943819268*^9}, {3.500691991665684*^9, 3.500692024772664*^9}, {
  3.5006924123371353`*^9, 3.5006924385769124`*^9}},
 TextJustification->1.],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      RowBox[{"\[Theta]", "''"}], "[", "t", "]"}], "/.", 
     RowBox[{
      RowBox[{"Solve", "[", 
       RowBox[{
        RowBox[{"EL", "\[Equal]", "0"}], ",", 
        RowBox[{
         RowBox[{"\[Theta]", "''"}], "[", "t", "]"}]}], "]"}], 
      "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}]}], ")"}], 
   "\[Equal]", "0"}], "//", "TraditionalForm"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"Refine", "[", 
    RowBox[{
     RowBox[{"Reduce", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           RowBox[{"\[Theta]", "''"}], "[", "t", "]"}], "/.", 
          RowBox[{
           RowBox[{"Solve", "[", 
            RowBox[{
             RowBox[{"EL", "\[Equal]", "0"}], ",", 
             RowBox[{
              RowBox[{"\[Theta]", "''"}], "[", "t", "]"}]}], "]"}], 
           "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}]}], ")"}], 
        "\[Equal]", "0"}], ",", 
       RowBox[{"Cos", "[", 
        RowBox[{"\[Theta]", "[", "t", "]"}], "]"}]}], "]"}], ",", 
     RowBox[{
      RowBox[{
       RowBox[{"Sin", "[", 
        RowBox[{"\[Theta]", "[", "t", "]"}], "]"}], "\[NotEqual]", "0"}], "&&", 
      RowBox[{
       RowBox[{"R", " ", 
        RowBox[{"Cos", "[", 
         RowBox[{"\[Theta]", "[", "t", "]"}], "]"}]}], "\[NotEqual]", "0"}], "&&", 
      RowBox[{"g", ">", "0"}], "&&", 
      RowBox[{
       RowBox[{"R", " ", "\[Omega]"}], "\[NotEqual]", "0"}]}]}], "]"}], "/.", 
   RowBox[{
    RowBox[{"\[Theta]", "[", "t", "]"}], "\[Rule]", "\[Theta]"}]}], "//", 
  "TraditionalForm"}]}], "Input",
 CellChangeTimes->{{3.500692462692626*^9, 3.50069269018836*^9}, {
  3.500692821551248*^9, 3.500692824224327*^9}, {3.5006930590232773`*^9, 
  3.5006931330664687`*^9}}],

Cell[BoxData[
 FormBox[
  RowBox[{
   FractionBox[
    RowBox[{
     RowBox[{"R", " ", 
      SuperscriptBox["\[Omega]", "2"], " ", 
      RowBox[{"sin", "(", 
       RowBox[{"\[Theta]", "(", "t", ")"}], ")"}], " ", 
      RowBox[{"cos", "(", 
       RowBox[{"\[Theta]", "(", "t", ")"}], ")"}]}], "-", 
     RowBox[{"g", " ", 
      RowBox[{"sin", "(", 
       RowBox[{"\[Theta]", "(", "t", ")"}], ")"}]}]}], "R"], "\[LongEqual]", 
   "0"}], TraditionalForm]], "Output",
 CellChangeTimes->{{3.500692817941141*^9, 3.5006928244373336`*^9}, {
  3.500693050075012*^9, 3.5006931332614746`*^9}}],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{"cos", "(", "\[Theta]", ")"}], "\[LongEqual]", 
   FractionBox["g", 
    RowBox[{"R", " ", 
     SuperscriptBox["\[Omega]", "2"]}]]}], TraditionalForm]], "Output",
 CellChangeTimes->{{3.500692817941141*^9, 3.5006928244373336`*^9}, {
  3.500693050075012*^9, 3.500693133288475*^9}}]
}, Open  ]],

Cell["\<\
In order for this to have a solution, we must have \
\>", "Text",
 CellChangeTimes->{{3.5006539390118537`*^9, 3.500653953225274*^9}, {
  3.500654074195855*^9, 3.500654177844923*^9}, {3.500673523587734*^9, 
  3.500673606105177*^9}, {3.5006736562106595`*^9, 3.5006736664479628`*^9}, {
  3.500673712551327*^9, 3.5006737482723846`*^9}, {3.500673856771596*^9, 
  3.5006739189354362`*^9}, {3.500678901671921*^9, 3.5006789082621155`*^9}, {
  3.500679072494977*^9, 3.500679092694575*^9}, {3.500679205896926*^9, 
  3.500679247173147*^9}, {3.5006793994226537`*^9, 3.500679418269212*^9}, {
  3.5006918350820494`*^9, 3.500691853840605*^9}, {3.5006919376930866`*^9, 
  3.500691943819268*^9}, {3.500691991665684*^9, 3.500692024772664*^9}, {
  3.5006924123371353`*^9, 3.5006924385769124`*^9}, {3.500693140607692*^9, 
  3.5006931547361097`*^9}},
 TextJustification->1.],

Cell[BoxData[
 FormBox[
  RowBox[{"\[Omega]", "\[GreaterEqual]", 
   SqrtBox[
    FractionBox["g", "R"]]}], TraditionalForm]], "DisplayFormula",
 CellChangeTimes->{{3.500673770989057*^9, 3.5006737722500944`*^9}, {
  3.5006738413471394`*^9, 3.5006738431441927`*^9}, {3.5006739219395247`*^9, 
  3.5006740203434377`*^9}, {3.5006740958086715`*^9, 3.5006741529423623`*^9}, {
  3.50067429171247*^9, 3.5006743117520633`*^9}, {3.5006743447130384`*^9, 
  3.5006743930644703`*^9}, {3.500679669029634*^9, 3.500679706916755*^9}, {
  3.500679759742319*^9, 3.500679792005274*^9}, {3.5006798318624535`*^9, 
  3.5006798521090527`*^9}, {3.5006894339279776`*^9, 3.500689547934352*^9}, {
  3.500689648628332*^9, 3.5006897400180373`*^9}, {3.5006897715399704`*^9, 
  3.5006897836613293`*^9}, {3.5006898204024167`*^9, 3.500689825471567*^9}, {
  3.5006900557423825`*^9, 3.5006901053048496`*^9}, {3.5006902201922503`*^9, 
  3.5006902206762643`*^9}, {3.5006929601933517`*^9, 3.500693001957588*^9}, {
  3.500693175105713*^9, 3.500693180593876*^9}},
 TextAlignment->Center],

Cell[TextData[{
 "If ",
 Cell[BoxData[
  FormBox[
   RowBox[{"\[Theta]", "=", 
    RowBox[{"\[Pi]", "/", "2"}]}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 ", then ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"cos", "(", "\[Theta]", ")"}], "=", "0"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 ", so ",
 Cell[BoxData[
  FormBox[
   RowBox[{"\[Omega]", "=", "\[Infinity]"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 "."
}], "Text",
 CellChangeTimes->{{3.5006931923172226`*^9, 3.5006932644393573`*^9}}]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Problem 11.8: K & K 8.12", "Section",
 CellChangeTimes->{{3.500672057391336*^9, 3.5006720648705573`*^9}, {
  3.500693517132837*^9, 3.5006935275611453`*^9}}],

Cell[CellGroupData[{

Cell["Problem", "Subsection",
 CellChangeTimes->{{3.500654268050593*^9, 3.5006542794169292`*^9}},
 TextJustification->1.],

Cell[TextData[{
 "A pendulum is rigidly fixed to an axle held by two supports so that it can \
only swing in a plane perpendicular to the axle. The pendulum consists of a \
mass ",
 Cell[BoxData[
  FormBox["m", TraditionalForm]],
  CellChangeTimes->{3.5006541640755157`*^9}],
 " attached to a massless rod of length ",
 Cell[BoxData[
  FormBox["l", TraditionalForm]],
  CellChangeTimes->{3.5006541640755157`*^9}],
 ". The supports are mounted on a platform which rotates with constant \
angular velocity ",
 Cell[BoxData[
  FormBox["\[CapitalOmega]", TraditionalForm]],
  CellChangeTimes->{3.5006541640755157`*^9}],
 ". Find the pendulum\[CloseCurlyQuote]s frequency assuming the amplitude is \
small."
}], "Text",
 CellChangeTimes->{{3.5006539390118537`*^9, 3.500653953225274*^9}, {
  3.500654074195855*^9, 3.500654177844923*^9}, {3.5006935366904154`*^9, 
  3.5006935577760396`*^9}, {3.5006935961491756`*^9, 3.500693656514962*^9}},
 TextJustification->1.],

Cell[BoxData[
 GraphicsBox[
  TagBox[RasterBox[CompressedData["
1:eJztnVuSI0tSQGXAB9tgKbCEYQWDGfxiNmCGzQ8bZhHFne4qKR8Rke7xdPc4
5+N2dSkj019HkZLqVv/Tv/3nn/7j716v13/94x//+dOf/+ef//KXP//1X//h
j7/8y1//+9//7W8P/e8f//m/v3+9vgDgD3ABYAf+2P5wHSA+L1wH2AFUB9gC
VAfYAlQH2AJUB9gCVAfYA1QH2AF2dYAtQHWAPRig+uvFEwiANTpL+TrS8bwA
0EYvJ18pOpwXALrQR8mk6KgOYIdGJfOC4zqAJRq234etHNUBLFGluuRuHdUB
LKFVXfqqnBt4AFNIlPw8Ln3jjfflAIwhUPJzgE50TAeww7OThyMeHBY+EwDA
fFSqf4k1R3QAW+hUzz6O5ADGScl5+p7ilh3RAexytfPqbFpgJAfwStrchMUJ
zfEcwAMFd+9/QXEAd6Q26LPBn7/iOYBPJDfiGdOnxwoAenJ7efln2fEcwBUy
x48HTwwOAFqRb+WHD9ZRHcATmp389DiqA/hAuZdfj8B0APOIHU8e+/72xIgB
QIViKy//YmdUB7CLfC9/+v/SiksBYBEKx2W7PqoDWEN+w546unTYmHgBQEnT
/XrZZUwHMELLVv5oMZs6wHIG7uWndR1DBgAtCnerJP+s7BQwAGhQ7c+1m/lx
eY+gAUBH015e9y+zNUYMAAqaDK8VFtMBpqJxt4/kh1NVLwcAKZrtuddWfjlj
2ykA4BmNu71u2a+nrDkJAIhYdL/+dbpl5+4dYCyqG/HOt+z8S6oA49E43ncz
z5240zkB4EOT6GPi6HhWALCwlycvMuDcAHuS2sknvQH3GNWgkwNsRpPjg0VE
dYA+tHk+JbzhFwGIjMX79fSlp10MIBopzQ16/oXqALW0SD410E8MCy4L4Jrk
Zm5ZdN6WA1Dj44Y9Gc3KAACckN7Jxf+I0uRokxGtjgHAPA2360YEsxMJgEU0
e7l4z1+BqWAAbNEi+exYn7AYE8Biclt5UhbTe/kHo2EBrEPhrgvJf2M6OICp
BNzLP5gPEGASDXv51Dgr8RInwCgUW7m/vfyDo1AB+iOWPHnwzEhb8RYvQBc0
W3nPf0VpHf4iBmhGJa5vw984Dh1ASW4rT0sQYSs/4Dp4AAUqcwM5/k2EHACK
aBxX7PrOiJEFQAaluAEV/yFYOgA/aCSPu5d/CJcQwJfy47Hgjn8TNC3YFNX2
vMNe/iFuZrAhbXv53FhnEz9DiI9ye95nJz+ySZoQmJzowrv2ydEuY6tkIRQa
xVW7fkz2yxhC0LaT7zjzm6YNftFv0LtL/putkwd3aPby+5pJQdqECoAPcnfs
Us8nhWkXqgAeqNL8C9MPUAYwTa3jx9VjI/QCpQDDtImO6UeoBdij7mV55iyD
YnQHtQBr9ND8C9OvUA2wQx/HD+fqG55vKAgYodNmfjxb1/i8Q0VgPSrFRSPL
XN+gJLAU1V4u3+2Z6xuUBFah2MszTwjlX+08KGyvUBOYT85c8b+IKNr9R2bg
EGoCc2nby39/9/hYduGwDJxCUWAWNTtz/rjCcoY6BVWBGci3csXvd8w8zEwn
oSwwlNxW3uXXuBb2+17xx4GywDjkilf/TqjEsYx0ElSHEWj2csWmn199+U5r
/AFBdeiNTt16yc9nOP+1KvDYUBfohmYr7/m/tpyWNpwnNtQFeqEwt4/il9Pd
v4YD1AUaye3lin96oXkCb663njAg1AWaUHnbXfHrmX++7HbeQKA61KHYymf8
O0qfUzLRGSgM6FGZO9bx81V+vhpxBe9QF1CQVFz+o28Dpw3Vn6AuIMfcXn69
4M8Xg6/lEuoCT6h25/TBM4bs5zKMdBrqAkV03q5Q/HTx7z8nXtULs7sBfmh0
fMFg4XoBVIckbZ5PDPQax/FPOIDqcCS5OSv38nXzhOoFUN0GNnrQ6PnESG+x
fEL6QvUkq1sEv1jeBIXj6Z18bfzv6794sZ5jfZdgdRd06tpy/DefMFA9i5Vm
7c2yLmg2Z3Nb+YeT6tzBp7HUsH1Z5E2T6PPCfOamOtv6HXNd25Kp8qR2Z917
7JMClXMI6qO6vTDXYrN12zGvDc2iT4lSCaoLMNu9vZjQBo3iLrbyA8f4XrxY
T2O+i3swug0Rt/IDd9V5sX7DQyM3YFgbWh33MRsX1dnWU/hpZ2jGtCGlro8f
flOSUJ1t/Yqvlsalcx8a9/KOkUwho7q7PIbisrMB6dkGzV4ewPOvS/VQPY3X
5kajRxs0igdx/BtUF+C8x2FobEPK8m1Ev1bvxYv1FO67HIT6Puys+A+oLiFK
t51TYV1mJ4/+ujzFTXVcTxCo4Z4RmXc4gr38SFb1YHm2QT1MIBHwfQSeX0B1
CdTDBgrVhdpuoPgPl+RQPUXsEXBEnerl020iekp1XqzfiD4EfnhsxKdVpUP3
cvyba5aonmCTWXBAshFHW59bldB8k+beVcf1G9tMg3USjTgLWxR3U8XfnNNF
9RT7TYVRzo1IeJsReNudvMCxZKtjsQPVMMKxEUl17xJjeQ5UT0A1jJDy9ihv
4i9onuO7GhTlCNUwwpO51/0dx0u8eLF+g0lZj2iLfn8TzwV8tvXVkdiBYVmN
UN3XZ3px/BHu4G8wM4tI7uTJVlx/bgbRBRxugVaHYgWmZgFCxz/H/nwxL0Tv
ULUbqD6TzFaebMD1cRpVIPnWxvcfVO0bajEN7V6O6lIStaFqN6jFcMQbee7g
9/fnxeyLVG1evFi/wAQNRqF54d34p4V7U1adsv2GUoxDrPjzvo/pJTKqs62f
YISGUX3LnjloYKjOeVCdyv2CSgyjcjfPvh8/LFD3JKuD6heoxCieTE8pjupV
oLoEKjGKjOrFjRzVq8ipzs/GHqESg0jfkD/drmfaUbo7gEzVPtv67HhswgwN
4iJzaS+/rhJ+F37Iqs62foBCDOKktMTyw6rUd8dG65ui6mzr3zBFo0jt44+1
RvUa8rdIhUdzJwpb67iZrUat+WdV6pv9A4xDL9VVnXJH2MTWo5T8sOr5W3Ck
k+pV/fJD2MQMUDU29zVxh68XuQIpX6yjOszkNmtxZ68bz6rrXO8YmiHiZuaU
67BFHr5eFFRXftwWudpxM/PKZdoiD18vHlRXvzHXLzJLxM3MLadxizx73ciW
CNUPxM3ML68rqwOyDqpLiJuZYzBdSa5Ghzt46Yni1jtwao7B9E4oVQ9d8MCp
eQbR+6B8Dz50xSPn5hpM78FBdUkpQ5c8cm6+CT1201C9MRf72TVybr4JPXbT
QPU3kXPzTeixm4Ze9dERLSN0cq6JPXezUH3cFrvkoZNzTey5m4ZmW49d8djZ
eQbV5RQKpfi4LXjFY2fnmeCD15NSpRQftwWveOzsPBN88HpSrJT4Dj72+++o
bpfgg9cTVJcQOzvPBB+8njypLnuxHr3gwdNzTPTJ64hE9eeP26IXPHh6jok+
eR0pV0q6rUevd/T8/ILqYlBdQvT8/ILqYsSql+oZvt7R8/NL+NHrx7PEsqNi
1zt6fn4JP3r9EEj8eFT0j9pQ3S7hR68fMtXL78GjOqwi/Oj146lSgm09vumo
bpb4s9cNyTtuXwLV+0dmifgZemWD4euFQvXcYRtUO36GXtlg+HrxWKrn9+Dj
Vzt+hn6hNVJQXUD8DN1Ca8RIVC+/B7/Ju3KxM3QLrRGjUT193LfqkSvOPJmF
1oh5LtXTe/CvNwPCs0Hs7FxDa8SoVE8eGN905skutEaMoFRC1QcEZ4Xo+TmG
1ogRq/74Yj0w4RP0C60RI6jU04v1r/C1Zp7MQmvEyFUP/R57GebJLLRGznOh
Xo/benSYJ7PQmq6g+r6pW4fWdOXp47bw7Ju5eWhNX57eg48O82QWWtMXVN81
c/PQmr7s/h4882QWWtOX1+bbOvNkFlrTl90/bmOezEJrOoPqeyZuH1ojRlao
zT9u2zVvB9AaKdJK7f1inXkyC62RolB94zt45skstEbKS1iqvd+DZ57MQmuk
aFTfd1tnnsxCa6TUqL5fZffM2gW0Roq4Uqi+OghIQWukaFXf8w6eeTILrZEi
rxSqg0FojRSV6tv+Ly/Mk1lojZQq1bcrLfNkFlojRaf6rh+3MU9moTVSFJVC
dbAHrZFSp/putd0xZyfQGinSH6H5PvZnyciQDMI8mYXWSKlQfcP34Jkns9Aa
KZWqb1Zc5skstEaMolL7ftzGPJmF1siRFwrVwRy0Zgjbvge/X8ZuoDVDQHWw
Bq0Zw6538MyTWWjNGA6v1leHMhXmySy0ZgyoDsagNWPY9T145skstGYMP3Xd
rbzMk1lozSA2fQ9+t3wdQWvE6Cq16R0882QWWiNFWylUB1PQGimVqm/mOvNk
FlojpUL1Dbd15skstEYKqktgnsyyaWuO749nSC15Jb51XvM+6n2SvQq86Tx5
IGxrShbLSJ1Qe4nkusjsla0rArWmXe4hql+29dIlAhA0rQj4a01HmR8tvV1X
G8rPUeUlgys2k2j5BMJXa3ooXOvX46KS6/oM1LWxgefYg2O5M40uX91pnELx
6vdhB9VfX4fv6cL2hceYN8FkZ+pUnhBU3Yrzyqrk7PUog6tg98JMZ8wLUHG9
7yXPK80mrcZ8gPtioTU+xrxedfFSlfHL25bEbGCwpjU/r5w9zXJNRErVk9f0
Jb6hUODM9Nb4mtwDDaq3/dopV7ZbiQNuzGiNkyl9oFL1Mb9hzmw9nTRzR0a3
JoLkv2lUvXeiRp8+XbV0L8a0xuYYtlET90DVE1eyUHCnzd2B/q0xMnPdqVV9
3v/dZqHwrlscm26tief2lZpcfgowvRCrpA/V8Vj0ac3qvcQuq1R/2OOHXnXY
yaGFttag9xOHbX11GFOsp/9mqW0N+7iMg+qLKzOnY+vzhAz61mC4BjuqHxgo
vak84YiqNWzlan6qY61IozppLU94I2sNfldjVPU3nZU3myc8toZ9vJGXwTv4
Mz1bbDjN3Sm1Bsd78FMy+6XroTwTYpZ0a9jK+/FTNwf1y7VdEbeDLHcl0RoU
74oj1Q/UKu8ry624twbRMzT8eonjn26okt1dlvtQUH1NQGapLYlb1X+jFN5p
ljuQu4FfEoxpqqvyvdBxVRW2O84yOrRGSqvq7kud3N9T+8SS6OAJWiOlvlJB
VP/Fk+whkowJrZHSpHoc1x/u5mPkGBJaIwXVj+Rcj5Sjc3htVQuqX0i6HixH
pyTfR6E1UhoqFVP1X7Cr2yPzlimtkdKmuoVfRTMIXqvbofCGKa0R01KpwNv6
hQ1StEv2zdL3o0vCckcH1YNu60eYpyW8EqSOWRGbPxpV32Rbv2UYPmMLPGr+
c9DswHyC6hKuGeYnD3rwvJmfDp0YmWNQXUJa9fh5L0Ls+dcOw9eLpkptq/qX
dBBBicby94IJcQWgVfXAH7cduFdJfocJciqKSu2ltFVql209kaDi5SSIqKsm
lZfSrPoW23q2Sujei9o6UnUp3VQPXe9SfsjeSlMBqbkUVJfwmB+219NWOwou
BdUlPOfH1l5Fe9kot5TGSv2sDl5vWZXQXUuHglFqKe2q7/C+nLBKZ9dDV6SV
bpWi0FJaK7XHtq6qEro/0+85kSKLaSwUqqePRvYsfctDiWdxuIMPXHF9dtie
o3NlqO8sUL2wBNcvDCgK5Z0Fqj+tw/c3I8pBZaexxYv1+nnC9W9GFWL7ws5j
i229KbnTXha3RkXGlWDfms5nh229cZ42d31o9nuWdA07bOsdctvW9sHPc9vV
cyGoLj/Hfq4PT3qvcq4F1XXn2Ur38eluU8p2umxX33+ErXm33HZ61T4n0Q0K
2Yk+r0JPfwak7zztofs80wMXsSedXoWe/oxH73kK7/q0/ALXsDeoLmHAPEW2
fWZuIQs4hE6qB3+1PiKzqK5Pzitc/YbRW/WYAzwqnXjVmj4AgWo3mIGqB2rB
sGRiFWtFNkFKN4Eulbo5HmuCB89TmFot6XqAuk1iuOoh+jA2jxC1WpWE87JN
ZLzqEToxPAvvxVrXbb81m0yX5jyYHqAVE5LwXK2Vsfus2AJ69CfX6ECyz0nB
a7mWxu2vXIvo0KBSn70O75VJGbgs19qYvVVrHe2VKjfa5fDemZeAt4KtDtdR
qRbTXKnnRvsa3TQT43fluoFYnVTKAI2VEnV6+Tg0Mzd8AwKJMBHn6uu7obFT
0k6vn4g2ZkdvwaFHTJiO6lLaWiXvtGImLLZu/jyZv4+3EuD6CJzQ1CtNp7XP
CvnDV8zXgnmyolIaO8GZCMID01SXH3xQvfT5nSLOdpbMk13ZLUVmIwoHtPRL
2WzdPXzu6DUztmaeLBl1wFZUZgKxTkPLtO3WHI/qxyvb8epvGIvITiTGmai6
5lqPqisu24OF82TMLHMfDliKxTaNqo9ZkR/vRYO2dp4M2WUolG9sRWOappfq
+hXyT+FTx66atMXzZEUwK3EcsRZPQGp63qr6spvZ5fNkQjITQVwxF1A46pre
pnp+tx/N+nlar9n6CJIYDCkYdV0XLXrllN5Z9eXvzxk13URrYjNW9eRdQ/Yp
YDw25mmlbUZFt9KayNRVWDIur4zqC003M08rn+qs1OCC0bACsUR14Rn6Y2ae
1jhnV3RDrQlLg+oP6w5Kv27fXvgjqvOvmmS+7Ia39C9TrQlKZYWrVX+t3NRt
zdNk80yLbqw1IRmm+mH3Phx5NH131efaZ9x0a60JyHzVE9+dhrV5muefddPN
tcYwlYWaq/oL1c9Mev1s+2X6L4yHZ4jaSo1SPS31z5eo/maGhPZFN9kao7hQ
/f3VqsmzOE/jPfRgusnW2KRF9REfrKesfn+1bPJsztNgFT2IbrU1FmlSXb1S
vKkfD019NRmj8zTypbSLLf3LbGsMYk/126Fn01H9wDjXvZhutjXmqO7nPNUv
G/2ql+pG52mQkm5MR3UpC1QXPn5Uvema7dge+wHRjXxh0BsvcS7HvuqHFSvm
7/UyP/fd47Oe8Im1kTorVP3P0GhXKu7fD46tU/31ukVhsbWd1fQk+tKG2N8F
jjSqrlz6tOTu9WnB5LK+zhy+Ny8GGX0nzmSKWRYFm5gN4zQEqk/yccXNa0Om
v07fnBeGjI5Rmcwvz5Jor7PhoV7zVX94/HL64/Fza3oTPBeWDbpFZTK7AtPD
vWnupGAzVX88PqW6Zn1XTpe3r3qvm3ibyRWYHG9SdA8FawpUufj58LLqc4t6
vtr5S6PN7RGY2eSyzB8Kf5r/jbZgdaufDy6bvVL1r1tgFjvcHpjZ1PLMC9iz
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

    "], {{0, 638}, {1003, 0}}, {0, 255},
    ColorFunction->GrayLevel],
   BoxForm`ImageTag[
   "Byte", ColorSpace -> "Grayscale", 
    ImageSize -> {250.20000000000005`, Automatic}, Interleaving -> None],
   Selectable->False],
  BaseStyle->"ImageGraphics",
  ImageSize->{250.20000000000005`, Automatic},
  ImageSizeRaw->{1003, 638},
  PlotRange->{{0, 1003}, {0, 638}}]], "Input",
 CellChangeTimes->{{3.50065413180056*^9, 3.500654142301871*^9}, {
   3.500654187586211*^9, 3.5006541886312423`*^9}, 3.5006936619301224`*^9, 
   3.500694192070814*^9},
 TextAlignment->Center,
 TextJustification->1.]
}, Open  ]],

Cell[CellGroupData[{

Cell["Solution by torque", "Subsection",
 CellChangeTimes->{{3.5006542826410246`*^9, 3.5006542901622477`*^9}, {
  3.500693921408803*^9, 3.500693926751961*^9}, {3.500694269164096*^9, 
  3.5006942704991355`*^9}},
 TextJustification->1.],

Cell["(From the problem set solutions)", "Text",
 CellChangeTimes->{{3.500694271794174*^9, 3.500694280417429*^9}}],

Cell[BoxData[
 GraphicsBox[
  TagBox[RasterBox[CompressedData["
1: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
Khh+AI/gdxdmgu/0zRqwhZ5F6SRsn4lzJg6JPUalA6mBbauuypFjxN79teG2
kL39YbocZ81Xb4yyZz8w/m2eB7KA0ISJm472+eEt5QUWij6F+YsycBiFREfy
cjQ+3GI5VLxa5yqqKjGqvsdrUWqvOTLefNRxL5ASj4ae9bTfbTBU7ZjuE6Y0
/j1b2IYMZ6JPYfZPhWGVqkPChaO+uQc+wmxW4Ty1vDq915mDqh9S4ay2qyqr
GiikIrXLIm7BusmvOUFlUciWH2d+f8LJPl81HD2szVZCbGaaNTBfWLDQX0os
LEP59Fn97mKBOYiK3EMqnyUsxsHLES9l04qr91U1UCjgbbtBCNLHPgQv42VR
aAzKB19inzYNujT4n5902CRk2PokndcAhb8iTkq4CZYKljr96AUDswqDFKqm
dyzwXT+kgmp3waX6VR0jMhg//AR3B/7slVZFsEj8AkqaJY3IiZaN6nzbpVub
JiM8cmA7/VBEn8L05biUaoNyGPajbR22CIoYK2XALiELxJGGjc5F4SpdVQ+F
zDtjzp6B3e/LkJOLsmzhvq1g2TM+/6xJpz7Du9bt8EZysOVmDVD4bAkpbQrT
I21azqg2KXrevqLJa64s990hkyaeAF2QzlU1qzooJGxqvSb9U7m8m7RMCmds
I+Rc91ZftmrRrFvnhk1eMUCrr9fAfOH9RaVOpJtqoP2r/dIsdQEVJRSC8IF/
Te/nt3cQLtyS1tWv6qDQbwz49+LLFAtGBLPLoHDsFgor2o+sV79eyw5NmvR8
Q7m94mYNUHh7oUq8jURHbQb1UljY4gaiJR+NkCrHCckTpuOspW5oEq8SNK3x
0FRQKSrUNDFwUvJeEbPvWWaP6Huvd51633ar/+l0U7CXqzMRj8x4rtYLUxQm
zlGBbSnDqK5213akj4BVQcogU6bzZottkLKq1EbfsVWkTfhYZSbWn8whGamG
YByrTtgy9i1uX4j1fQLxDm13r3fjpk0b/qPxduGFC8sNGn0K783huEwKyazG
WUZRiZsyroSr4OR8yyPwcoWoaLNyzculUIvyvA5d74NaPZH/JD/36wneIumF
W7v3GQwbvx44ukOLr75sPClD3tdftkENUHhrLpehRSkU6irIKa0Py8fs8m+h
/DuGg22uQ8qvorQiN7GVS6FWIYMpX0zdm6XKbmQfmvbEW9zR0h8Mw9/vx1A4
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
wgRrCKNZ2CXo1LCfwnl2ErFm4f8DyKRuvQ==
    "], {{0, 400}, {646, 0}}, {0, 255},
    ColorFunction->GrayLevel],
   BoxForm`ImageTag[
   "Byte", ColorSpace -> "Grayscale", 
    ImageSize -> {465.20000000000005`, Automatic}, Interleaving -> None],
   Selectable->False],
  BaseStyle->"ImageGraphics",
  ImageSize->{465.20000000000005`, Automatic},
  ImageSizeRaw->{646, 400},
  PlotRange->{{0, 646}, {0, 400}}]], "Input",
 CellChangeTimes->{{3.5006941798274517`*^9, 3.5006941863676453`*^9}},
 TextAlignment->Center],

Cell["\<\
The torque about the pivot point is\
\>", "Text",
 CellChangeTimes->{{3.5006942579307632`*^9, 3.5006942936508207`*^9}}],

Cell[BoxData[
 FormBox[
  RowBox[{
   SubscriptBox[
    OverscriptBox["\[Tau]", "\[RightVector]"], "p"], "\[LongEqual]", 
   RowBox[{
    OverscriptBox["\[Alpha]", "\[RightVector]"], " ", 
    SubscriptBox["I", "p"]}]}], TraditionalForm]], "DisplayFormula",
 CellChangeTimes->{{3.500673770989057*^9, 3.5006737722500944`*^9}, {
  3.5006738413471394`*^9, 3.5006738431441927`*^9}, {3.5006739219395247`*^9, 
  3.5006740203434377`*^9}, {3.5006740958086715`*^9, 3.5006741529423623`*^9}, {
  3.50067429171247*^9, 3.5006743117520633`*^9}, {3.5006743447130384`*^9, 
  3.5006743930644703`*^9}, {3.500679669029634*^9, 3.500679706916755*^9}, {
  3.500679759742319*^9, 3.500679792005274*^9}, {3.5006798318624535`*^9, 
  3.5006798521090527`*^9}, {3.5006894339279776`*^9, 3.500689547934352*^9}, {
  3.500689648628332*^9, 3.5006897400180373`*^9}, {3.5006897715399704`*^9, 
  3.5006897836613293`*^9}, {3.5006898204024167`*^9, 3.500689825471567*^9}, {
  3.5006900557423825`*^9, 3.5006901053048496`*^9}, {3.5006902201922503`*^9, 
  3.5006902206762643`*^9}, {3.5006929601933517`*^9, 3.500693001957588*^9}, {
  3.500693175105713*^9, 3.500693180593876*^9}, {3.5006943261267824`*^9, 
  3.5006943290288677`*^9}},
 TextAlignment->Center],

Cell[BoxData[
 FormBox[
  RowBox[{
   OverscriptBox["k", "^"], ":", "         ", 
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{"-", "g"}], " ", "\[ScriptL]", " ", "m", " ", 
      RowBox[{"sin", "(", "\[Theta]", ")"}]}], "+", 
     RowBox[{"\[ScriptL]", " ", 
      SubscriptBox["F", "cent"], " ", 
      RowBox[{"cos", "(", "\[Theta]", ")"}]}]}], "\[LongEqual]", 
    RowBox[{
     OverscriptBox["\[Theta]", "\[DoubleDot]"], " ", 
     SubscriptBox["I", "p"]}]}]}], TraditionalForm]], "DisplayFormulaNumbered",
 CellChangeTimes->CompressedData["
1:eJxTTMoPSmViYGAQBmIQHb0sPpZR9JXjMYYOMH1EWjsNRFvNTQHT0wTsCkB0
4d+uGhC9+MHPVhB9VV2uF0T3nSmbB6KfC/xYAKLNLootBdEqAkqrQfThTwvs
WIA0f1isM4gWOfjdE0SbaDP4gWiLmb+DQHRMbXMoiP630ZaZE2TOs1pBEO0j
LSIHog9PbtAE0QXuhbogeo7mVz0QPfNBjzGIFhHXNwHzD34PANEhBzXDQfQr
tbZUEP118VQw/UGfbQ8XkJ6wxO4giGZIenwNRHMwTr4OomfxHUnjBtI1bxTS
QbRc28EiEC1ySbECRAMAvTN2pw==
  "],
 TextAlignment->Center],

Cell["\<\
The centrifugal effective force is\
\>", "Text",
 CellChangeTimes->{{3.5006942579307632`*^9, 3.5006942936508207`*^9}, {
  3.500694484634474*^9, 3.500694494064753*^9}}],

Cell[BoxData[
 FormBox[
  RowBox[{
   SubscriptBox["F", "cent"], "=", 
   RowBox[{"m", " ", 
    RowBox[{"(", 
     RowBox[{"\[ScriptL]", " ", 
      RowBox[{"sin", "(", "\[Theta]", ")"}]}], ")"}], 
    SuperscriptBox["\[CapitalOmega]", "2"]}]}], 
  TraditionalForm]], "DisplayFormula",
 CellChangeTimes->CompressedData["
1:eJxTTMoPSmViYGAQBmIQHb0sPpZR9JXjMYYOMH1EWjsNRFvNTQHT0wTsCkB0
4d+uGhC9+MHPVhB9VV2uF0T3nSmbB6KfC/xYAKLNLootBdEqAkqrQfThTwvs
WIA0f1isM4gWOfjdE0SbaDP4gWiLmb+DQHRMbXMoiP630ZaZE2TOs1pBEO0j
LSIHog9PbtAE0QXuhbogeo7mVz0QPfNBjzGIFhHXNwHzD34PANEhBzXDQfQr
tbZUEP118VQw/UGfbQ8XkJ6wxO4giGZIenwNRHMwTr4OomfxHUnjBtI1bxTS
QXTO0v4aEG33IKEORAMAxPR3aQ==
  "],
 TextAlignment->Center],

Cell[TextData[{
 "For small angles, ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"sin", "(", "\[Theta]", ")"}], "\[TildeEqual]", "\[Theta]"}], 
   TraditionalForm]],
  CellChangeTimes->{3.5006541640755157`*^9}],
 ", ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"cos", "(", "\[Theta]", ")"}], "\[TildeEqual]", "1"}], 
   TraditionalForm]],
  CellChangeTimes->{3.5006541640755157`*^9}],
 ".  Then equation (1) becomes"
}], "Text",
 CellChangeTimes->{{3.5006942579307632`*^9, 3.5006942936508207`*^9}, {
  3.500694484634474*^9, 3.5006945349799643`*^9}, {3.500694601701939*^9, 
  3.500694628738739*^9}}],

Cell[BoxData[{
 FormBox[
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{"-", "g"}], " ", "\[ScriptL]", " ", "m", " ", "\[Theta]"}], "+", 
     RowBox[{"m", " ", 
      SuperscriptBox["\[ScriptL]", "2"], " ", "\[Theta]", " ", 
      SuperscriptBox["\[CapitalOmega]", "2"]}]}], "\[TildeEqual]", 
    RowBox[{"m", " ", 
     SuperscriptBox["\[ScriptL]", "2"], 
     OverscriptBox["\[Theta]", "\[DoubleDot]"]}]}], " "}], 
  TraditionalForm], "\[IndentingNewLine]", 
 FormBox[
  RowBox[{
   RowBox[{
    OverscriptBox["\[Theta]", "\[DoubleDot]"], " ", "+", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{
       FractionBox["g", "\[ScriptL]"], "-", " ", 
       SuperscriptBox["\[CapitalOmega]", "2"]}], ")"}], "\[Theta]"}]}], 
   "\[TildeEqual]", "0"}], TraditionalForm], "\[IndentingNewLine]", 
 FormBox[
  RowBox[{"\[Omega]", "=", 
   SqrtBox[
    RowBox[{
     FractionBox["g", "\[ScriptL]"], "-", 
     SuperscriptBox["\[CapitalOmega]", "2"]}]]}], 
  TraditionalForm]}], "DisplayFormula",
 CellChangeTimes->CompressedData["
1:eJxTTMoPSmViYGAQAWIQHb0sPpZR9JXjMYYOMH1EWjsNRFvNTQHT0wTsCkB0
4d+uGhC9+MHPVhB9VV2uF0T3nSmbB6KfC/xYAKLNLootBdEqAkqrQfThTwvs
WIA0f1isM4gWOfjdE0SbaDP4gWiLmb+DQHRMbXMoiP630ZaZE2TOs1pBEO0j
LSIHog9PbtAE0QXuhbogeo7mVz0QPfNBjzGIFhHXNwHzD34PANEhBzXDQfQr
tbZUEP118VQw/UGfbQ8XkJ6wxO4giGZIenwNRHMwTr4OomfxHUnjBtI1bxTS
QbRc28EiEC1ySbECRNc6mPaBaKu9V2eDaABdZ30l
  "],
 TextAlignment->Center],

Cell[TextData[{
 "If ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SuperscriptBox["\[CapitalOmega]", "2"], ">", 
    FractionBox["g", "\[ScriptL]"]}], TraditionalForm]],
  CellChangeTimes->{3.5006541640755157`*^9}],
 ", the motion is no longer harmonic."
}], "Text",
 CellChangeTimes->{{3.5006942579307632`*^9, 3.5006942936508207`*^9}, {
  3.500694484634474*^9, 3.5006945349799643`*^9}, {3.500694601701939*^9, 
  3.500694628738739*^9}, {3.500694762784707*^9, 3.5006947870534253`*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell["Solution by least action", "Subsection",
 CellChangeTimes->{{3.5006542826410246`*^9, 3.5006542901622477`*^9}, {
  3.500693921408803*^9, 3.500693934647195*^9}},
 TextJustification->1.],

Cell["\<\
The general Lagrangian for the object in Cartesian coordinates is\
\>", "Text",
 CellChangeTimes->{{3.5006539390118537`*^9, 3.500653953225274*^9}, {
   3.500654074195855*^9, 3.500654177844923*^9}, {3.500673523587734*^9, 
   3.500673606105177*^9}, {3.5006736562106595`*^9, 3.5006736664479628`*^9}, {
   3.500673712551327*^9, 3.5006737482723846`*^9}, {3.500673856771596*^9, 
   3.5006739189354362`*^9}, {3.500678901671921*^9, 3.5006789082621155`*^9}, {
   3.500679072494977*^9, 3.500679092694575*^9}, {3.500679205896926*^9, 
   3.500679247173147*^9}, {3.5006793994226537`*^9, 3.500679418269212*^9}, {
   3.5006918350820494`*^9, 3.500691853840605*^9}, 3.50069538283306*^9},
 TextJustification->1.],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Clear", "[", 
   RowBox[{"x", ",", "y", ",", "z", ",", "t"}], "]"}], ";", 
  RowBox[{
   RowBox[{"(", 
    RowBox[{"L", "=", 
     RowBox[{
      RowBox[{
       FractionBox["1", "2"], "m", 
       RowBox[{"(", 
        RowBox[{
         SuperscriptBox[
          RowBox[{
           RowBox[{"x", "'"}], "[", "t", "]"}], "2"], "+", 
         SuperscriptBox[
          RowBox[{
           RowBox[{"y", "'"}], "[", "t", "]"}], "2"], "+", 
         SuperscriptBox[
          RowBox[{
           RowBox[{"z", "'"}], "[", "t", "]"}], "2"]}], ")"}]}], "-", 
      RowBox[{"m", " ", "g", " ", 
       RowBox[{"z", "[", "t", "]"}]}]}]}], ")"}], "//", 
   "TraditionalForm"}]}]], "Input",
 CellChangeTimes->{{3.500691859015758*^9, 3.500691909160242*^9}}],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    FractionBox["1", "2"], " ", "m", " ", 
    RowBox[{"(", 
     RowBox[{
      SuperscriptBox[
       RowBox[{
        SuperscriptBox["x", "\[Prime]",
         MultilineFunction->None], "(", "t", ")"}], "2"], "+", 
      SuperscriptBox[
       RowBox[{
        SuperscriptBox["y", "\[Prime]",
         MultilineFunction->None], "(", "t", ")"}], "2"], "+", 
      SuperscriptBox[
       RowBox[{
        SuperscriptBox["z", "\[Prime]",
         MultilineFunction->None], "(", "t", ")"}], "2"]}], ")"}]}], "-", 
   RowBox[{"g", " ", "m", " ", 
    RowBox[{"z", "(", "t", ")"}]}]}], TraditionalForm]], "Output",
 CellChangeTimes->{{3.500691902896057*^9, 3.5006919094612513`*^9}, 
   3.5006950636946135`*^9}]
}, Open  ]],

Cell[TextData[{
 "Converting to polar coordinates, and using the constraints that ",
 Cell[BoxData[
  FormBox[
   RowBox[{"\[Phi]", "=", 
    RowBox[{"\[CapitalOmega]", " ", "t"}]}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 " and ",
 Cell[BoxData[
  FormBox[
   RowBox[{"r", "=", "\[ScriptL]"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 ", using the conversion"
}], "Text",
 CellChangeTimes->{{3.5006539390118537`*^9, 3.500653953225274*^9}, {
  3.500654074195855*^9, 3.500654177844923*^9}, {3.500673523587734*^9, 
  3.500673606105177*^9}, {3.5006736562106595`*^9, 3.5006736664479628`*^9}, {
  3.500673712551327*^9, 3.5006737482723846`*^9}, {3.500673856771596*^9, 
  3.5006739189354362`*^9}, {3.500678901671921*^9, 3.5006789082621155`*^9}, {
  3.500679072494977*^9, 3.500679092694575*^9}, {3.500679205896926*^9, 
  3.500679247173147*^9}, {3.5006793994226537`*^9, 3.500679418269212*^9}, {
  3.5006918350820494`*^9, 3.500691853840605*^9}, {3.5006919376930866`*^9, 
  3.500691943819268*^9}, {3.500691991665684*^9, 3.500692024772664*^9}, {
  3.5006929315445037`*^9, 3.5006929383637056`*^9}, {3.500692972372712*^9, 
  3.5006929752367973`*^9}, {3.5006950074249477`*^9, 3.500695017060233*^9}},
 TextJustification->1.],

Cell[BoxData[{
 FormBox[
  RowBox[{"x", "=", 
   RowBox[{"\[ScriptL]", " ", 
    RowBox[{"sin", "(", "\[Theta]", ")"}], " ", 
    RowBox[{"cos", "(", 
     RowBox[{"\[CapitalOmega]", " ", "t"}], ")"}]}]}], 
  TraditionalForm], "\[IndentingNewLine]", 
 FormBox[
  RowBox[{"y", "=", 
   RowBox[{"\[ScriptL]", " ", 
    RowBox[{"sin", "(", "\[Theta]", ")"}], " ", 
    RowBox[{"sin", "(", 
     RowBox[{"\[CapitalOmega]", " ", "t"}], ")"}]}]}], 
  TraditionalForm], "\[IndentingNewLine]", 
 FormBox[
  RowBox[{"z", "=", 
   RowBox[{"\[ScriptL]", "-", 
    RowBox[{"\[ScriptL]", " ", 
     RowBox[{"cos", "(", "\[Theta]", ")"}]}]}]}], 
  TraditionalForm]}], "DisplayFormula",
 CellChangeTimes->{{3.500673770989057*^9, 3.5006737722500944`*^9}, {
  3.5006738413471394`*^9, 3.5006738431441927`*^9}, {3.5006739219395247`*^9, 
  3.5006740203434377`*^9}, {3.5006740958086715`*^9, 3.5006741529423623`*^9}, {
  3.50067429171247*^9, 3.5006743117520633`*^9}, {3.5006743447130384`*^9, 
  3.5006743930644703`*^9}, {3.500679669029634*^9, 3.500679706916755*^9}, {
  3.500679759742319*^9, 3.500679792005274*^9}, {3.5006798318624535`*^9, 
  3.5006798521090527`*^9}, {3.5006894339279776`*^9, 3.500689547934352*^9}, {
  3.500689648628332*^9, 3.5006897400180373`*^9}, {3.5006897715399704`*^9, 
  3.5006897836613293`*^9}, {3.5006898204024167`*^9, 3.500689825471567*^9}, {
  3.5006900557423825`*^9, 3.5006901053048496`*^9}, {3.5006902201922503`*^9, 
  3.5006902206762643`*^9}, {3.5006929601933517`*^9, 3.500693001957588*^9}, {
  3.5006950191392946`*^9, 3.5006950472721276`*^9}},
 TextAlignment->Center],

Cell["gives", "Text",
 CellChangeTimes->{{3.5006930062387147`*^9, 3.500693011595873*^9}}],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"Clear", "[", 
   RowBox[{"\[ScriptL]", ",", "\[Theta]", ",", "\[Phi]"}], "]"}], ";", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{"Defer", "[", "L", "]"}], "\[Equal]", 
      RowBox[{"(", 
       RowBox[{"Lpolar", "=", 
        RowBox[{"Expand", "[", 
         RowBox[{"FullSimplify", "[", 
          RowBox[{"L", "/.", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"x", "\[Rule]", 
              RowBox[{"Function", "[", 
               RowBox[{"t", ",", 
                RowBox[{"\[ScriptL]", " ", 
                 RowBox[{"Cos", "[", 
                  RowBox[{"\[CapitalOmega]", " ", "t"}], "]"}], 
                 RowBox[{"Sin", "[", 
                  RowBox[{"\[Theta]", "[", "t", "]"}], "]"}]}]}], "]"}]}], 
             ",", 
             RowBox[{"y", "\[Rule]", 
              RowBox[{"Function", "[", 
               RowBox[{"t", ",", 
                RowBox[{"\[ScriptL]", " ", 
                 RowBox[{"Sin", "[", 
                  RowBox[{"\[CapitalOmega]", " ", "t"}], "]"}], 
                 RowBox[{"Sin", "[", 
                  RowBox[{"\[Theta]", "[", "t", "]"}], "]"}]}]}], "]"}]}], 
             ",", 
             RowBox[{"z", "\[Rule]", 
              RowBox[{"Function", "[", 
               RowBox[{"t", ",", 
                RowBox[{"\[ScriptL]", "-", 
                 RowBox[{"\[ScriptL]", " ", 
                  RowBox[{"Cos", "[", 
                   RowBox[{"\[Theta]", "[", "t", "]"}], "]"}]}]}]}], 
               "]"}]}]}], "}"}]}], "]"}], "]"}]}], ")"}]}], "/.", 
     RowBox[{
      RowBox[{
       RowBox[{"\[Theta]", "'"}], "[", "t", "]"}], "\[Rule]", 
      OverscriptBox["\[Theta]", "."]}]}], "/.", 
    RowBox[{
     RowBox[{"\[Theta]", "[", "t", "]"}], "\[Rule]", "\[Theta]"}]}], "//", 
   "TraditionalForm"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"0", "\[Equal]", 
    RowBox[{"Defer", "[", 
     RowBox[{
      RowBox[{
       SubscriptBox["\[PartialD]", "\[Theta]"], "L"}], "-", 
      RowBox[{
       RowBox[{"Dt", "[", 
        RowBox[{"\"\<\>\"", ",", "t"}], "]"}], 
       RowBox[{
        SubscriptBox["\[PartialD]", 
         OverscriptBox["\[Theta]", "."]], "L"}]}]}], "]"}], "\[Equal]", 
    RowBox[{"(", 
     RowBox[{"EL", "=", 
      RowBox[{"Expand", "[", 
       RowBox[{"FullSimplify", "[", 
        RowBox[{
         RowBox[{
          SubscriptBox["\[PartialD]", 
           RowBox[{"\[Theta]", "[", "t", "]"}]], "Lpolar"}], "-", 
         RowBox[{
          SubscriptBox["\[PartialD]", "t"], 
          RowBox[{
           SubscriptBox["\[PartialD]", 
            RowBox[{
             RowBox[{"\[Theta]", "'"}], "[", "t", "]"}]], "Lpolar"}]}]}], 
        "]"}], "]"}]}], ")"}]}], "/.", 
   RowBox[{
    RowBox[{"\[Theta]", "[", "t", "]"}], "\[Rule]", "\[Theta]"}]}], "//", 
  "TraditionalForm"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"\[Theta]", "''"}], "[", "t", "]"}], "\[Equal]", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      RowBox[{"\[Theta]", "''"}], "[", "t", "]"}], "/.", 
     RowBox[{
      RowBox[{"Solve", "[", 
       RowBox[{
        RowBox[{"EL", "\[Equal]", "0"}], ",", 
        RowBox[{
         RowBox[{"\[Theta]", "''"}], "[", "t", "]"}]}], "]"}], 
      "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}]}], ")"}]}], "//",
   "TraditionalForm"}]}], "Input",
 CellChangeTimes->{{3.5006919489974213`*^9, 3.5006919864995313`*^9}, {
  3.500692027841755*^9, 3.5006923957756453`*^9}, {3.50069302231219*^9, 
  3.5006930229562097`*^9}, {3.500695051988267*^9, 3.50069508115213*^9}}],

Cell[BoxData[
 FormBox[
  RowBox[{"L", "\[LongEqual]", 
   RowBox[{
    RowBox[{"g", " ", "m", " ", "\[ScriptL]", " ", 
     RowBox[{"cos", "(", "\[Theta]", ")"}]}], "-", 
    RowBox[{"g", " ", "m", " ", "\[ScriptL]"}], "-", 
    RowBox[{
     FractionBox["1", "4"], " ", "m", " ", 
     SuperscriptBox["\[CapitalOmega]", "2"], " ", 
     SuperscriptBox["\[ScriptL]", "2"], " ", 
     RowBox[{"cos", "(", 
      RowBox[{"2", " ", "\[Theta]"}], ")"}]}], "+", 
    RowBox[{
     FractionBox["1", "2"], " ", 
     SuperscriptBox[
      OverscriptBox["\[Theta]", "."], "2"], " ", "m", " ", 
     SuperscriptBox["\[ScriptL]", "2"]}], "+", 
    RowBox[{
     FractionBox["1", "4"], " ", "m", " ", 
     SuperscriptBox["\[CapitalOmega]", "2"], " ", 
     SuperscriptBox["\[ScriptL]", "2"]}]}]}], TraditionalForm]], "Output",
 CellChangeTimes->{{3.5006920745171366`*^9, 3.500692083102391*^9}, {
   3.5006921208835087`*^9, 3.5006921302717867`*^9}, 3.5006921668208685`*^9, {
   3.5006922491843066`*^9, 3.5006922538044434`*^9}, {3.500692312705187*^9, 
   3.500692329575686*^9}, {3.5006923669277916`*^9, 3.500692395971651*^9}, 
   3.5006930238682365`*^9, 3.5006950864542875`*^9}],

Cell[BoxData[
 FormBox[
  RowBox[{"0", "\[LongEqual]", 
   RowBox[{
    FractionBox[
     RowBox[{"\[PartialD]", "L"}], 
     RowBox[{"\[PartialD]", "\[Theta]"}],
     MultilineFunction->None], "-", 
    RowBox[{
     FractionBox[
      RowBox[{"\[DifferentialD]", "\<\"\"\>"}], 
      RowBox[{"\[DifferentialD]", "t"}],
      MultilineFunction->None], " ", 
     FractionBox[
      RowBox[{"\[PartialD]", "L"}], 
      RowBox[{"\[PartialD]", 
       OverscriptBox["\[Theta]", "."]}],
      MultilineFunction->None]}]}], "\[LongEqual]", 
   RowBox[{
    RowBox[{"-", 
     RowBox[{"g", " ", "m", " ", "\[ScriptL]", " ", 
      RowBox[{"sin", "(", "\[Theta]", ")"}]}]}], "-", 
    RowBox[{"m", " ", 
     SuperscriptBox["\[ScriptL]", "2"], " ", 
     RowBox[{
      SuperscriptBox["\[Theta]", "\[Prime]\[Prime]",
       MultilineFunction->None], "(", "t", ")"}]}], "+", 
    RowBox[{"m", " ", 
     SuperscriptBox["\[CapitalOmega]", "2"], " ", 
     SuperscriptBox["\[ScriptL]", "2"], " ", 
     RowBox[{"sin", "(", "\[Theta]", ")"}], " ", 
     RowBox[{"cos", "(", "\[Theta]", ")"}]}]}]}], TraditionalForm]], "Output",
 CellChangeTimes->{{3.5006920745171366`*^9, 3.500692083102391*^9}, {
   3.5006921208835087`*^9, 3.5006921302717867`*^9}, 3.5006921668208685`*^9, {
   3.5006922491843066`*^9, 3.5006922538044434`*^9}, {3.500692312705187*^9, 
   3.500692329575686*^9}, {3.5006923669277916`*^9, 3.500692395971651*^9}, 
   3.5006930238682365`*^9, 3.5006950866652937`*^9}],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    SuperscriptBox["\[Theta]", "\[Prime]\[Prime]",
     MultilineFunction->None], "(", "t", ")"}], "\[LongEqual]", 
   FractionBox[
    RowBox[{
     RowBox[{
      SuperscriptBox["\[CapitalOmega]", "2"], " ", "\[ScriptL]", " ", 
      RowBox[{"sin", "(", 
       RowBox[{"\[Theta]", "(", "t", ")"}], ")"}], " ", 
      RowBox[{"cos", "(", 
       RowBox[{"\[Theta]", "(", "t", ")"}], ")"}]}], "-", 
     RowBox[{"g", " ", 
      RowBox[{"sin", "(", 
       RowBox[{"\[Theta]", "(", "t", ")"}], ")"}]}]}], "\[ScriptL]"]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{{3.5006920745171366`*^9, 3.500692083102391*^9}, {
   3.5006921208835087`*^9, 3.5006921302717867`*^9}, 3.5006921668208685`*^9, {
   3.5006922491843066`*^9, 3.5006922538044434`*^9}, {3.500692312705187*^9, 
   3.500692329575686*^9}, {3.5006923669277916`*^9, 3.500692395971651*^9}, 
   3.5006930238682365`*^9, 3.500695086686294*^9}]
}, Open  ]],

Cell[TextData[{
 "Note that this is, after minor changes of variable, the ",
 StyleBox["exact",
  FontSlant->"Italic"],
 " same equation that we found in the previous problem.  We should(\
\[CloseCurlyQuote]ve) expect(ed) this.\nMaking the first order approximation \
that ",
 Cell[BoxData[
  FormBox[
   RowBox[{"\[Theta]", "\[TildeTilde]", "0"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 " (Taylor expanding around ",
 Cell[BoxData[
  FormBox[
   RowBox[{"\[Theta]", "=", "0"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}}],
 " to the first order), we get "
}], "Text",
 CellChangeTimes->{{3.5006539390118537`*^9, 3.500653953225274*^9}, {
  3.500654074195855*^9, 3.500654177844923*^9}, {3.500673523587734*^9, 
  3.500673606105177*^9}, {3.5006736562106595`*^9, 3.5006736664479628`*^9}, {
  3.500673712551327*^9, 3.5006737482723846`*^9}, {3.500673856771596*^9, 
  3.5006739189354362`*^9}, {3.500678901671921*^9, 3.5006789082621155`*^9}, {
  3.500679072494977*^9, 3.500679092694575*^9}, {3.500679205896926*^9, 
  3.500679247173147*^9}, {3.5006793994226537`*^9, 3.500679418269212*^9}, {
  3.5006918350820494`*^9, 3.500691853840605*^9}, {3.5006919376930866`*^9, 
  3.500691943819268*^9}, {3.500691991665684*^9, 3.500692024772664*^9}, {
  3.5006924123371353`*^9, 3.5006924385769124`*^9}, {3.500695141747924*^9, 
  3.500695249345109*^9}},
 TextJustification->1.],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    SuperscriptBox["\[Theta]", "\[Prime]\[Prime]",
     MultilineFunction->None], "(", "t", ")"}], "\[LongEqual]", 
   RowBox[{
    RowBox[{"-", 
     RowBox[{"(", 
      RowBox[{
       FractionBox["g", "\[ScriptL]"], "-", 
       SuperscriptBox["\[CapitalOmega]", "2"]}], ")"}]}], 
    RowBox[{"\[Theta]", "(", "t", ")"}]}]}], 
  TraditionalForm]], "DisplayFormula",
 CellChangeTimes->CompressedData["
1:eJxTTMoPSmViYGAQBmIQHb0sPpZR9JXjMYYOMH1EWjsNRFvNTQHT0wTsCkB0
4d+uGhC9+MHPVhB9VV2uF0T3nSmbB6KfC/xYAKLNLootBdEqAkqrQfThTwvs
WIA0f1isM4gWOfjdE0SbaDP4gWiLmb+DQHRMbXMoiP630ZaZE2TOs1pBEO0j
LSIHog9PbtAE0QXuhbogeo7mVz0QPfNBjzGIFhHXNwHzD34PANEhBzXDQfQr
tbZUEP118VQw/UGfbQ8XkJ6wxO4giJYqTdnLDaRdt744AKIfrDx8G0QXeSTd
B9GxRSvegWiTrtD3IBoAC7x53w==
  "],
 TextAlignment->Center],

Cell["\<\
This is the differential equation for a harmonic oscillator, with \
\>", "Text",
 CellChangeTimes->{{3.5006539390118537`*^9, 3.500653953225274*^9}, {
  3.500654074195855*^9, 3.500654177844923*^9}, {3.500673523587734*^9, 
  3.500673606105177*^9}, {3.5006736562106595`*^9, 3.5006736664479628`*^9}, {
  3.500673712551327*^9, 3.5006737482723846`*^9}, {3.500673856771596*^9, 
  3.5006739189354362`*^9}, {3.500678901671921*^9, 3.5006789082621155`*^9}, {
  3.500679072494977*^9, 3.500679092694575*^9}, {3.500679205896926*^9, 
  3.500679247173147*^9}, {3.5006793994226537`*^9, 3.500679418269212*^9}, {
  3.5006918350820494`*^9, 3.500691853840605*^9}, {3.5006919376930866`*^9, 
  3.500691943819268*^9}, {3.500691991665684*^9, 3.500692024772664*^9}, {
  3.5006924123371353`*^9, 3.5006924385769124`*^9}, {3.500695141747924*^9, 
  3.500695249345109*^9}, {3.500695301778661*^9, 3.5006953192311773`*^9}, {
  3.500695387667203*^9, 3.5006953970844817`*^9}},
 TextJustification->1.],

Cell[BoxData[
 FormBox[
  RowBox[{"\[Omega]", "=", 
   SqrtBox[
    RowBox[{
     FractionBox["g", "\[ScriptL]"], "-", 
     SuperscriptBox["\[CapitalOmega]", "2"]}]]}], 
  TraditionalForm]], "DisplayFormula",
 CellChangeTimes->CompressedData["
1:eJxTTMoPSmViYGAQBWIQHb0sPpZR9JXjMYYOMH1EWjsNRFvNTQHT0wTsCkB0
4d+uGhC9+MHPVhB9VV2uF0T3nSmbB6KfC/xYAKLNLootBdEqAkqrQfThTwvs
WIA0f1isM4gWOfjdE0SbaDP4gWiLmb+DQHRMbXMoiP630ZaZE2TOs1pBEO0j
LSIHog9PbtAE0QXuhbogeo7mVz0QPfNBjzGIFhHXNwHzD34PANEhBzXDQfQr
tbZUEP118VQw/UGfbQ8XkJ6wxO4giGZIenwNRHMwTr4OomfxHUnjBtI1bxTS
QbRc28EiEC1ySbECRNc6mPaBaKu9V2eDaP1pcu9AtNoTAzANAGeFg7U=
  "],
 TextAlignment->Center],

Cell[TextData[{
 "If ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SuperscriptBox["\[CapitalOmega]", "2"], ">", 
    FractionBox["g", "\[ScriptL]"]}], TraditionalForm]],
  CellChangeTimes->{3.5006541640755157`*^9}],
 ", the motion is no longer harmonic."
}], "Text",
 CellChangeTimes->{{3.5006942579307632`*^9, 3.5006942936508207`*^9}, {
  3.500694484634474*^9, 3.5006945349799643`*^9}, {3.500694601701939*^9, 
  3.500694628738739*^9}, {3.500694762784707*^9, 3.5006947870534253`*^9}}],

Cell[BoxData[{
 RowBox[{
  RowBox[{"Options", "[", "EulerLagrangeEquation", "]"}], ":=", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{"Constants", "\[Rule]", 
     RowBox[{"OptionValue", "[", 
      RowBox[{"Dt", ",", "Constants"}], "]"}]}], ",", 
    RowBox[{"NonConstants", "\[Rule]", 
     RowBox[{"OptionValue", "[", 
      RowBox[{"D", ",", "NonConstants"}], "]"}]}]}], 
   "}"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"EulerLagrangeEquation", "[", 
   RowBox[{"L_", ",", "q_", ",", "dq_", ",", "t_", ",", 
    RowBox[{"OptionsPattern", "[", "]"}]}], "]"}], ":=", 
  RowBox[{
   RowBox[{
    RowBox[{"D", "[", 
     RowBox[{"L", ",", "q", ",", 
      RowBox[{"NonConstants", "\[Rule]", 
       RowBox[{"OptionValue", "[", "NonConstants", "]"}]}]}], "]"}], "-", 
    RowBox[{"Dt", "[", 
     RowBox[{
      RowBox[{"D", "[", 
       RowBox[{"L", ",", "dq", ",", 
        RowBox[{"NonConstants", "\[Rule]", 
         RowBox[{"OptionValue", "[", "NonConstants", "]"}]}]}], "]"}], ",", 
      "t", ",", 
      RowBox[{"Constants", "\[Rule]", 
       RowBox[{"OptionValue", "[", "Constants", "]"}]}]}], "]"}]}], 
   "\[Equal]", "0"}]}]}], "Input",
 CellChangeTimes->{{3.500756268962832*^9, 3.500756307435971*^9}, {
  3.500756506241855*^9, 3.5007565170001736`*^9}, {3.5007565544952836`*^9, 
  3.500756661383447*^9}, {3.500756811549892*^9, 3.500756815565011*^9}}]
}, Open  ]]
}, Open  ]]
}, Open  ]]
},
WindowSize->{782, 520},
WindowMargins->{{2, Automatic}, {Automatic, -56}},
DockedCells->FEPrivate`If[
  FEPrivate`SameQ[FEPrivate`$ProductIDName, "MathematicaPlayer"], 
  FEPrivate`Join[{
    Cell[
     BoxData[
      GraphicsBox[
       RasterBox[CompressedData["
1:eJztXXdYFNfaz3O/f+79vudek3vTLKBIEaQpTRC7BgtqLCTWGxNjYsFookE0
NoxRY6oFuyIiWJCO9N4WWHrZpSy7VKkiBo2iy+5+Z/fsHg4zO7NLUZJ4fs/I
Mztz5j3v+87u+zvnPe+Meuu3L1v/P6+99poJ+Gf+t9dek+8LBwiBIHvu/Byd
ManLXMoSE+ExkQoZX+8W641rHWPUaDZZav+BZOoa6ZRVkhkftXrdrC3lg60h
JuGh667nVjNkJjbd4ywfjhzbcP7iQFUiICAgIHiVkHfVO0dHL0tnDFd/XNGH
q/g3bgrz84VFRVmnznAMrGRjDCSjxz6xmCFx3iFZtl/ickC6ZK/U6YtnS7Y/
c/6s23Zpt8V73aaOz8wdn+pbto4yqI2NG2qDCAgICAj+HIBTHn5GRrGhMV9H
r0hXr1hnbKGuQaGlQ6G9U5TJTJ7ZFJneaNnoMd0GZl1rjos3X+7efEn8uafk
k1OSlUfFi78RO30htl/5fOK8p2ZTmnXHNxlbVWVzh9osAgICAoI/ByANVVVU
5DpMKRs1pnS0fumYcTwDywIjh6IJixMcVrWNt5HTkL5Bt/7YR9OXi9yv1+7y
urfLu/1rryfbLnR/7iledUQ8b7vYcUXn+Ol1uhZ1EycLCwuH2iwCAgICgj8B
0AIQ2C9Yv0E4ckyNvmmh8YSs2U6chUvTlq9JcFnDc5pR9t4M/rw5/IULeDMd
M9Z9lrTVLWXLDs7Wr3O3uhVt3sn79Ev+2k2lLmvy5r+fY2JXZjO9qrh4qC0j
ICAgIPijQ4RB/vGAR72OUaHlpIqzhxsCL9QHXq4N9q4L8mryP9d051xT4IWm
oEtNARca75yvC79eG+Fbd9e3/q5vQ4TvvfDrjaE+94KuNgRfFvmdips8jZ+W
wd51VXl5bkCgIENDMwICAgKCvyoA9VSroOShbw7UjbXJ/+KzxqCrLSHhTZFJ
dbEZnRFRv4eGPQqP7IyK64yN74yL7wwP74iOackrbCkobs0taOXmt3FyHyRx
QPv6oIi68IhSz3NRK9bnht2tEgjwHiv4/JykpOgTJyI/3cBdubru7Pnq0tIh
sp7g1YUgNFTg4zPUWhAQvLpA0x9IQDUKyJlIKCxfuqbOYm7RQbfG8KC2pLzG
tIKWhHTeuXPtsUlPsoseZxU+zsp/xC14lMF9lJjSmc7pKK1oLxO2lQjasoub
knKqYzKqIlOrEzOrwuJDxtpfe2fMRSs7/wWLvZe5/DR/wS7HyTuNx/365lvh
7wxvWLuuLi1tqD1B8CoCcBDvtdfAxtfRAfsvqJcMMs0n+OsiIiLC1dX12LFj
PB6vfxJwGgIEVKuAqKKi6OB3FaZzBDPW5Xnsro2+W59e0JKc2ZGUGjppcqrD
NN4V7/a84of5JR25RR25hR0cLjjVEZ/Qnpp2PzWtOT6pNjqxKiy2PCymMjaJ
Fxrx7bsjdg1745dhbx/4xz+//Pv/nvjXsKi33m4Zrts9fkLzZa/B9QkBQZ9Q
sXFj+cqVciYaNqwqOXnQ5efl5Z09e3bQxRIQ/EEARlmBgYF79uzx8tI2mPMz
OKnXrqVcv56flFReVARmPVUCQSWPV87llsbF8QKDC095Zi9akW04JcveJXOB
a46He/XdoObY5N/iku9ncFPmL7ynY1ww0iB5xWp+cFhTblFrTmEzh9uSmtma
kNwaGdUYGlIXHCgM8C+/daPI93pxSFDW7ZtfvPPumRHjfN/R8X9nROUYPamh
kUxPr9vSuj787gv1DwGBlgBkBJiozNFx0CUTGiJ4FeDn5weYSMvGIj6//nYQ
d8VHZ/QND41491drK087uyAb23Rru6yJtlwbB96kqeWWtgJzxxqrWS02Mwr3
bK2/49MWGduWlH4vIztunnOVgUW1qW2Fnmmq/vikbV/yI2JqOTm1yZy6+OS6
qJi64BBRQED5rZulfr55167mBfjzbt3Ot5xeZ+oonjhdamYvNZkg0x/XbTmh
PibmhbpF4OMzWDn/qvx8ubQXlrQhGHKAeRDMzg36OhGhIYJXAWBO5Orq2tf8
c11ymuiLr/JMLTMMxsUYjeNaTOh0mCab5CiznCgzMpTpj5YZjJWNG5/n7iq6
ff1eVEJdQpowNSNyrnOpkWWpmS3PzK7c1DZ/jEnkRLuUI9/zoxOq4lMFEdGV
AcEVN2+X+PkW+Hhnel3m3bnTGp0iXXdIsnibZOpKqe08qYmtxNT6XkiI9qoC
FoAhAmxgHx3nDxumNnTAkS3awEd0Cgx38UEv5SOA8pJdu9CRyiNHUEegJTiF
LoH7PNXbk4AaFH3o0nCxcjlmZnjX8ryQykCYKULKI6PAcRAzgQJgQ8wIdvg6
OmiNA16LhKMYW3n6NHIpaAPtApeUL1gAdYZaIT/TL4S9QK1AG+hAIAfYCCRA
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
jHv1XEF4pCghpTktozklpSk2tvJueEFQUHN6dktmXms6tz2n6GFWwf3/7nm8
dPvTmRu6HVaJrRdLzGdLLabLLGdKJ0xt3/xlDSeTST16YS0Kvzw886MqpcOv
VfsyH41JOYqEHk1UKzKMqioa4OvjkMKY2kOggjeKRUIsXNMnAjDA4sJ71b9t
3Ag1wSuK4doNntPDzdRsF94Xg11QDt4F/sgqTJohTdRm4egaMjXGQbmJFOqh
DwbotxId6aU83ck0R+GiKF8ABI00BDkIpwD2qNvXZkzBrX8YXN0Gt9NB7/fF
yVSLftNQv6GxYJsFg+sWxEQPP/28e7zVM3OHbus5YkeXZ4u2ta7en394T1PY
rYfR0Q/iE9tSUv3nOCVbTCj5fFXOmR/ygoOFsQn1iUnC2PjqmNjGmJjau3cr
Q0Jy7vjfi0u6l8Spi0tv4uS1cwoebvjuscuurtmfPrVdKLZ4T2LuJB0/VWZs
JzOeJH9SyXJK20cbqgODhBUVFN3QyBYdQUkh/CDLEjYFfaKhl4CelwaoFiPQ
KWQ7ngViB+XRKnqt9csHvZxMbcwfCChrVWi9RllF0PsZ25cPjTQERpj4VEio
9Q+c5YU5lC4IDQ0EWvp54Hj5NKTx8VUWvAhXV2zcLB5rLDaxemxo0TbOttl8
Vp3DysIFm7MPudcGXGsJCWoJC2uMiAxZOC/tm23ZftfKgsOEkVGCiKiy8IjS
sPDCkJDioKDSO3cKb91Mu36tKiRSEJtWGZVSk5zdmpLzdN13Txdu67JZJjZ9
76nt3IdrtzzYe7j1hGfLxSvNV661el7o2Pvtgx27m05Rf614il6lpzLm4JVa
9GZMUEtDlFK0lww8TUQZbOOntKESuEZPf6eExveevVAAAoLrWRSt2NOVfZJP
yf7hXw+1dX0vExppyJX2Ji7tf+DalCQNIQ3Ra9sG0qk20l7QzAX3M1q+H3S8
fBoSanqZj8YLB64AhIjHa3XdLh6l1zVKr11Hv1HXQDTWtGb8ZJ7V/Jx5GzkH
vxb4Xay+4Su6dav61i3Ozz8WXvctvu1f4u8vCAgUBAYW37qVfv168rVrYMu4
ejXzypXYC+dLfG/zwxL4QbG1iZltabnPluwQO6zsdNnUeupiTXYOoyqCKsoB
EGHQ0rayiSLPQzkIV8O1CWsUGkIpIxCmhmrADF/dqXyjWu8JgnyJSnWqf+/3
1vK9Zy8ZUKvBcjhcBcM3+GgtPEt5WevLh0YaokyFhIM9/B4SGqK/jLR/L71k
ksbk0peQQBsSGqK/mkDtwf6B5dWmLBhEVzf53nruOKtzlF7NOLOaibaVVrZC
m0k8Q9N8HeNsI/u0mavjN3/Gu+lVfsOv3P92xR1/fsCdquBgUWxcbSa3Pr+o
LqegIT2zNia+MiiIc8Mv9qpXrNeVqCuXMq/5VIbHC6OSH1TV1kXEPp+8+vfl
m0T8skHReSCAMR9P36F6hiEcML840O39IwAuu7yc/zgDkdRQ/T8dQ/4fPQxi
vBK+xAxV//AHV48dg3unXjQGxdWi4mKB5/nwj9cH7tmTHxhUmZMjKCkRlpYK
i4srk5MLz5xNfn9VmPX84ElTOD//IORmN1VWtolEbXX1bU3N91va2lsVW3PL
g8bmjsam+w2NrbUNzVXCmoqKSj6/qozfJqp+9OBhe01N8axlT0xmNt64Myi2
ExD8uTDkNERA8IdFVWlpEZdLP44qFspzc8Ns5/jpG9wwNoqYM6dw3cYS96NZ
e49x9hzJ3Hck99BxsHEPHM13P8jf8U32VveUDV8lfOYWu37nTecl+6c6Rs9b
kL9kdan17DaL6Y8MrOvDyH+0SvAqAtYGD7UWBAR/MiAmCpjl9Mub/z45YozA
dq5k44nn+7ybvrsuOOIjOHpN+IOv6Mfrwh98ag9d/H37MeHGw/lr92Ws+zZ9
1cGi5bt8jO02vvF6pZFZnfGEJkPz+7oGNX43h9osAgICAoI/E8rS0o6OHO7x
+ptn39HvmuwiWbZXsun0E7eLD/Z6tRz0bvDwrj10tcbjSsO+i+0bj7as+7Z6
xYHyNYf5y3bxnT6vmvxhpJ55/CjdyrGGVXpG9Tp6Fd8dHWqDCAgICAj+PBAI
kn788cib7+7/v9dTdMdJHN6XzNkgWbZb8slPkq1nn3198fHuK527L993v/Rg
57nfPj32ePV3vy37pn353ntzNtZMcqk0nV5mZJU1Wi911Oji0XplI3XLFi0V
VlEL4QgICAgICNSiSiDITUw8NFLH45+vPzOxlk6cKZm0WDJtjWzWZtnifdI1
30s2/Nq98WT3phPP133/fOWhrkV7njq5ds5c/8hycfPUJTV2s/ijDXOGj4ob
PjJ+pA5nhG6OoXGFuqUoAgICAgICtcgIDV3/93+kDB8pNZkgHW8nM50msXPu
ctny++aDzz50k87cIlm0W7LIXeK8s9tp29MpH/9us/ypyezWo7+IioqFYAsK
Llm5OmXM2MC33ol8e0TcuyNzvTW/QY6AgICAgADiyv59B//1L5m+vsxgnNTM
utP1q7pU5ZPLovKKhx4nZXYrpFP+K53yUbfd8qcWzl2G03775AuKEF5sbMJS
lytv/Mf/P29HOi8ieTkCAgICAm1QJRBstbYSDB8p09Pres+pITqG3qbzKw+Z
zWLpxLkSG+cnxtO6jB3r45PUSuNcunRGR/fCsDdq1ckhICAgICCgICs5+ei/
/y3T0ev48isRwzvuqotKxLOWyl+UbT7tmZH9o8WrhAIBk8Di5OTjxkZx06eT
CREBAQEBgUb8vGVz24jRTZ7n2Js13wyQjbeXmTmKDa3aftXw/kwel/uzpYXo
0uXBU5OAgICA4C+IHA7n0tvD205d0Kbx74s/lBlNkBpb18TFa2zMz8uLcd1a
nZM7YB0JCAgICP6yuPT1zta9h7Vs3HLJS2Zs02ntWFFYqE378sLCCkJDBAQE
BAQMyMrI4B//Rfv2osrKbodZ9xcseXEqERAQEBC8OqgoLu5rFcGTlRu4HwzZ
/25JQEBAQPBHw/8DCp03+A==
        "], {{0, 0}, {557, 41}}, {0, 255}, ColorFunction -> RGBColor], 
       ImageSize -> {557, 41}, PlotRange -> {{0, 557}, {0, 41}}]], 
     "DockedCell", Background -> GrayLevel[0.866682], 
     CellFrame -> {{0, 0}, {0, 4}}, CellFrameColor -> 
     RGBColor[0.690074, 0.12871, 0.194598], CellMargins -> {{0, 0}, {-3, 0}}, 
     CellFrameMargins -> 0, ContextMenu -> None, 
     ComponentwiseContextMenu -> {}], 
    Cell[
     BoxData[
      GridBox[{{
         GraphicsBox[
          RasterBox[CompressedData["
1:eJztWl1Ik1EYFrqNEoLMbHPmNkRrEhJERj93ra4cJvbDRIsyMk1pc03tTL1w
aD+LfkQIJBkR/dBFdtHFDLywCykqoqgLIYRu6jbb8me933e+HT/P2fZN+sZ0
vg9n43zfec973nPe57zvOWNFDS2OhnU5OTlG+LyBj1S/ikAgEAgEAoFAIBAI
xEpFMBh8jUgPYG0z7d7MAOYedm/Bko4Ca5tp92YGSCokle5AUiGpdAeSCkml
O0RS/R1tjEajUIHvyIhdehPyLNZjrVSAgT5CK1Tmf32e+/qcdYEy+/4+vKTd
oQJN89PjojbaHcrCzE8qn0RGfIxrEjcF0SomD49hYqDDUUSGKtUKWRMYz42L
pFJDg1RPamGdlRWGuuDi2Yl+WHkoiy72W6jjgFeSm/wWKEAScCvtCxWpSzxt
1FPU9dJ76Lt8UnEmcVMQrWImUQE6nKJB7sgUKpb4LcpEtHiFpEpEKim2TI8n
IhXv4pAHXCAJEAPIq7d5JFAOYYEGKHEstTbQAJKSx+XH5ZKKE+CmIFq1ZC/E
SBVXoboJyMliKZKKgyapwLlK1ohHKgpYYfGRbnNpg4c8dP3prtckFQ0gUm5K
miKpVZxnRZP4KcSziiU1bjhOobpJ2TtIqnhITipYZ7byydJfoDzMpT9ZWMo1
EHbgBBLyhOWzlmakUtKQnB/VuUYkFbWNjZXIJHEKnFVL0t+IXSQVU4iRKkUk
JxVzhJI7hirpDpXOGzJ5eFLFvMNORxAlaJZhmtmZStQGAvSQA/FECSksH/kt
VLMyokw5qHDOFU3ipiBaxZmtTSo8U2lBI1LF/BWNXZ0Y1LckLo9IqQdYIWdA
9T0uvPT2J2qjrUr2lGMRSzrq4eiIVIxFGC5bMZO4KYhWcWYnSn8gv3j7k+vJ
GbVaSNXt9fo6O/XVib9Tpa+sClLdvtB0q+WSvjqRVGucVA/q6p9V1+irE0m1
xkk1cuLk2O49+upEUq1xUg1X14yZraSrS0ed+H+q9GFV/J+qx25/u9U40Nqa
aUMQ2YMrFRWf8g0vDh9JvUvgYjPR+8KIyA5AyiNeb1Pe5ql840xxSV97eyq9
Hp1y3nE602waYoXC19GRqInIGHC57lY53Lm53/O2RQ3Fr6qqNXUG609/LLX1
ulOiHyL74D/XeLPxvPiexHDtsuulyexbv2GqwLRgNP8xl/W7XAQE1IUQ1nHw
zNl5o2XYoc09RLbC5/E8te26V9+gfskY5SPkuss1abLc2Ljpm9E8Z7FFt++c
POroJoQWn1wotQAPj9XMFZp/m6y9bndGpoNYCZBikbNuoqBwsPY4IxIrQJu+
trYf5pLRfOOXotJw6d7Zsv0LtkOPzzb1ENKjolagueVD5YGodUfEZH2372Cm
p4X4X/wDFcRtOg==
           "], {{0, 0}, {199, 30}}, {0, 255}, ColorFunction -> RGBColor], 
          ImageSize -> {199, 30}, PlotRange -> {{0, 199}, {0, 30}}], 
         ButtonBox[
          GraphicsBox[
           RasterBox[CompressedData["
1:eJztlDFuhFAMRJHS5w45Re6RI+wFcoOUtNtR0lJSUlNSUtNS0m9JXjTKaPQh
UfpgCeT1n2+Px15ebu9vt6eqqp55Xnm+/I/L/p+1bbtt277vvJumIcKbnwWs
73vBsHVdE1bXNQ55Ho8HMOEd3L9tWRZ+6tRBrrjEMAwigHO/37M6SII40zRB
Q7QLkpQWjKOu63RqGHHVIoOYYAR16oucinYGxUo2jqMIzPNMnpQRPF2nMkeS
cCBDXsm7ZNZp6oZRS3wsIBFNIYM2iY8gYmJA8imqawHcOAKqio4KSp4O7Qjp
K1nOUygasaG2hoKSaud3krkArggZzyhhTohP3Uz7E0mNu9g98oj26exOSTon
fRUtn8IUJL+W80gyuz6OW3mgrSXXEv5dSaRTaRz9KQpY/knxtVomKdFQxvFT
JZFR6pFBJWT5tbEvR9+H3F6S+GOSMC+DTHtrHYyh32Qu855cdhn2CUundjY=

            "], {{0, 0}, {55, 14}}, {0, 255}, ColorFunction -> RGBColor], 
           ImageSize -> {55, 14}, PlotRange -> {{0, 55}, {0, 14}}], 
          ButtonData -> {
            URL["http://store.wolfram.com/view/app/playerpro/"], None}, 
          ButtonNote -> "http://store.wolfram.com/view/app/playerpro/"], 
         GraphicsBox[
          
          RasterBox[{{{132, 132, 132}, {156, 155, 155}}, {{138, 137, 137}, {
           171, 169, 169}}, {{138, 137, 137}, {171, 169, 169}}, {{138, 137, 
           137}, {171, 169, 169}}, {{138, 137, 137}, {171, 169, 169}}, {{138, 
           137, 137}, {171, 169, 169}}, {{138, 137, 137}, {171, 169, 169}}, {{
           138, 137, 137}, {171, 169, 169}}, {{138, 137, 137}, {171, 169, 
           169}}, {{138, 137, 137}, {171, 169, 169}}, {{138, 137, 137}, {171, 
           169, 169}}, {{138, 137, 137}, {171, 169, 169}}, {{138, 137, 137}, {
           171, 169, 169}}, {{135, 135, 135}, {167, 166, 166}}}, {{0, 0}, {2, 
           14}}, {0, 255}, ColorFunction -> RGBColor], ImageSize -> {2, 14}, 
          PlotRange -> {{0, 2}, {0, 14}}], 
         ButtonBox[
          GraphicsBox[
           RasterBox[CompressedData["
1:eJztlSGSg2AMhTuzfu+wB1qzR+gF9gbIWhwSW4lEV1ZWYyvxSPZb3vAmDdDq
zpCZdvKH5CUvfwhfx9+f48fhcPjk983vXy922eU9paqqcRx9HGcZhiE+PZ1O
KHVd24KOgt0WFKLQ27ZdJrper0JGcS5CVqs6n89yRpGl73tZBK6kkvv97kCe
ChOlLEvbVW2kiYPoxKcYRdwWld00jS2EcFSFMYXCqbOcBJzL5aJcxK7SFEFB
GQFn8AWupPUkMRfIJEK53W5d1z2hGVP7yohVbfanWoxAJQTfeywbT1+xK9mi
GQGTj8FT0uRAN3Tdjl3SlNANP5WoabIIRP+x52ojLEgXs8fxs7+R1cCXNFH6
SVJhKZwx0+BxBZ7nraGNpBSrEFlA1khgRDcCRg1navIWTeVKPVmliaeaL+c4
tCmcknRHfjtWaS6HNtYmC1wYjGJ+6eKjJcficWgVssz1nGbabFtD682gZaIO
MHXqkq/vyW3GFaQXliNuOhbz9lOHU3a6SrhWkCmnXC9pUoPBt1aQpquYrtJt
0f6Pazkd497W1MkSlxierkrrN254iz8oHqS0ByzxGzfOHx2yq9plYSl8l13e
Xf4ArlmHrg==
            "], {{0, 0}, {77, 14}}, {0, 255}, ColorFunction -> RGBColor], 
           ImageSize -> {77, 14}, PlotRange -> {{0, 77}, {0, 14}}], 
          ButtonData -> {
            URL[
            "http://www.wolfram.com/solutions/interactivedeployment/\
licensingterms.html"], None}, ButtonNote -> 
          "http://www.wolfram.com/solutions/interactivedeployment/\
licensingterms.html"]}}, ColumnsEqual -> False, 
       GridBoxAlignment -> {"Columns" -> {{Center}}, "Rows" -> {{Center}}}]], 
     "DockedCell", Background -> GrayLevel[0.494118], 
     CellFrame -> {{0, 0}, {4, 0}}, CellFrameColor -> 
     RGBColor[0.690074, 0.12871, 0.194598], CellMargins -> 0, 
     CellFrameMargins -> {{0, 0}, {0, -1}}, ContextMenu -> None, 
     ComponentwiseContextMenu -> {}, 
     ButtonBoxOptions -> {ButtonFunction :> (FrontEndExecute[{
          NotebookLocate[#2]}]& ), Appearance -> None, ButtonFrame -> None, 
       Evaluator -> None, Method -> "Queued"}]}, 
   FEPrivate`If[
    FEPrivate`SameQ[
     FrontEnd`CurrentValue[
      FrontEnd`EvaluationNotebook[], ScreenStyleEnvironment], "SlideShow"], {
    Inherited}, {}]], Inherited],
PrintingCopies->1,
PrintingPageRange->{Automatic, Automatic},
FrontEndVersion->"7.0 for Microsoft Windows (32-bit) (November 10, 2008)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[579, 22, 189, 3, 83, "Title"],
Cell[771, 27, 132, 2, 35, "Subtitle"],
Cell[CellGroupData[{
Cell[928, 33, 99, 1, 71, "Section"],
Cell[1030, 36, 600, 16, 47, "Text"],
Cell[1633, 54, 657, 20, 41, "DisplayFormula"],
Cell[2293, 76, 257, 5, 47, "Text"],
Cell[2553, 83, 533, 18, 44, "DisplayFormula"],
Cell[3089, 103, 207, 4, 29, "Text"],
Cell[CellGroupData[{
Cell[3321, 111, 102, 1, 36, "Subsection"],
Cell[3426, 114, 268, 5, 29, "Text"],
Cell[3697, 121, 1524, 38, 29, "Text"],
Cell[5224, 161, 712, 20, 41, "DisplayFormula"],
Cell[5939, 183, 2175, 53, 29, "Text"],
Cell[8117, 238, 1278, 30, 29, "Text"],
Cell[9398, 270, 582, 14, 23, "DisplayFormula"],
Cell[9983, 286, 2306, 57, 29, "Text"],
Cell[12292, 345, 1188, 25, 29, "Text"],
Cell[13483, 372, 705, 14, 29, "Text"],
Cell[14191, 388, 872, 24, 41, "DisplayFormula"],
Cell[15066, 414, 1395, 32, 29, "Text"],
Cell[16464, 448, 1004, 23, 39, "Text"],
Cell[17471, 473, 2951, 86, 121, "DisplayFormula"],
Cell[20425, 561, 289, 4, 29, "Text"],
Cell[20717, 567, 1495, 40, 45, "DisplayFormula"],
Cell[22215, 609, 389, 7, 29, "Text"],
Cell[22607, 618, 2032, 56, 46, "DisplayFormula"],
Cell[24642, 676, 1009, 23, 29, "Text"],
Cell[25654, 701, 1497, 39, 45, "DisplayFormula"],
Cell[27154, 742, 1009, 20, 29, "Text"],
Cell[28166, 764, 1156, 28, 41, "DisplayFormula"],
Cell[29325, 794, 471, 8, 29, "Text"]
}, Closed]]
}, Open  ]],
Cell[CellGroupData[{
Cell[29845, 808, 365, 10, 71, "Section"],
Cell[30213, 820, 782, 22, 57, "Text"],
Cell[CellGroupData[{
Cell[31020, 846, 891, 27, 88, "Input"],
Cell[31914, 875, 421, 13, 30, "Output"]
}, Open  ]],
Cell[32350, 891, 205, 3, 29, "Text"],
Cell[32558, 896, 560, 17, 63, "DisplayFormula"]
}, Open  ]],
Cell[CellGroupData[{
Cell[33155, 918, 168, 2, 71, "Section"],
Cell[33326, 922, 580, 16, 29, "Text"],
Cell[33909, 940, 707, 21, 44, "DisplayFormula"],
Cell[34619, 963, 456, 15, 39, "Text"],
Cell[35078, 980, 819, 23, 81, "DisplayFormula"],
Cell[35900, 1005, 129, 3, 29, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[36066, 1013, 240, 5, 71, "Section"],
Cell[36309, 1020, 846, 22, 57, "Text"],
Cell[37158, 1044, 1157, 37, 103, "DisplayFormula"],
Cell[38318, 1083, 226, 5, 29, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[38581, 1093, 267, 3, 71, "Section"],
Cell[38851, 1098, 297, 5, 29, "Text"],
Cell[39151, 1105, 552, 18, 44, "DisplayFormula"],
Cell[39706, 1125, 1715, 51, 59, "Text"],
Cell[CellGroupData[{
Cell[41446, 1180, 105, 1, 36, "Subsection"],
Cell[41554, 1183, 2443, 75, 87, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[44034, 1263, 159, 2, 36, "Subsection"],
Cell[44196, 1267, 305, 6, 29, "Text"],
Cell[CellGroupData[{
Cell[44526, 1277, 1060, 30, 87, "Input"],
Cell[45589, 1309, 664, 19, 48, "Output"]
}, Open  ]],
Cell[46268, 1331, 110, 1, 29, "Text"],
Cell[CellGroupData[{
Cell[46403, 1336, 418, 12, 31, "Input"],
Cell[46824, 1350, 478, 13, 51, "Output"]
}, Open  ]],
Cell[47317, 1366, 1799, 48, 57, "Text"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[49165, 1420, 218, 5, 71, "Section"],
Cell[CellGroupData[{
Cell[49408, 1429, 121, 2, 36, "Subsection"],
Cell[49532, 1433, 1282, 36, 53, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[50851, 1474, 124, 2, 36, "Subsection"],
Cell[CellGroupData[{
Cell[51000, 1480, 95, 1, 27, "Subsubsection"],
Cell[51098, 1483, 894, 25, 32, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[52029, 1513, 107, 1, 27, "Subsubsection"],
Cell[52139, 1516, 783, 19, 29, "Text"],
Cell[52925, 1537, 2217, 74, 170, "DisplayFormula"],
Cell[55145, 1613, 1234, 35, 52, "Text"],
Cell[56382, 1650, 2308, 75, 185, "DisplayFormula"],
Cell[58693, 1727, 533, 9, 29, "Text"],
Cell[59229, 1738, 2271, 70, 148, "DisplayFormula"],
Cell[61503, 1810, 544, 10, 29, "Text"],
Cell[62050, 1822, 847, 19, 23, "DisplayFormula"],
Cell[CellGroupData[{
Cell[62922, 1845, 431, 12, 33, "Input"],
Cell[63356, 1859, 255, 6, 30, "Output"]
}, Open  ]],
Cell[63626, 1868, 1797, 48, 89, "DisplayFormula"],
Cell[65426, 1918, 663, 11, 29, "Text"],
Cell[66092, 1931, 1059, 23, 54, "DisplayFormula"],
Cell[67154, 1956, 733, 12, 29, "Text"],
Cell[CellGroupData[{
Cell[67912, 1972, 7344, 188, 352, "Input"],
Cell[75259, 2162, 4099, 76, 338, "Output"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[79431, 2246, 186, 2, 71, "Section"],
Cell[CellGroupData[{
Cell[79642, 2252, 121, 2, 36, "Subsection"],
Cell[79766, 2256, 1358, 36, 50, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[81161, 2297, 124, 2, 36, "Subsection"],
Cell[CellGroupData[{
Cell[81310, 2303, 95, 1, 27, "Subsubsection"],
Cell[81408, 2306, 739, 14, 29, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[82184, 2325, 107, 1, 27, "Subsubsection"],
Cell[82294, 2328, 1081, 24, 29, "Text"],
Cell[83378, 2354, 2154, 64, 121, "DisplayFormula"],
Cell[85535, 2420, 546, 17, 29, "Text"],
Cell[86084, 2439, 1585, 39, 36, "Text"],
Cell[87672, 2480, 1718, 49, 134, "DisplayFormula"],
Cell[89393, 2531, 2088, 58, 55, "Text"],
Cell[91484, 2591, 1013, 24, 51, "DisplayFormula"],
Cell[92500, 2617, 155, 2, 29, "Text"],
Cell[92658, 2621, 1194, 27, 55, "DisplayFormula"],
Cell[93855, 2650, 397, 11, 29, "Text"],
Cell[94255, 2663, 1163, 23, 38, "DisplayFormula"],
Cell[95421, 2688, 289, 8, 29, "Text"],
Cell[95713, 2698, 531, 16, 29, "Text"],
Cell[CellGroupData[{
Cell[96269, 2718, 1837, 53, 121, "Input"],
Cell[98109, 2773, 2963, 57, 400, "Output"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[101145, 2838, 238, 3, 71, "Section"],
Cell[101386, 2843, 104, 1, 29, "Text"],
Cell[CellGroupData[{
Cell[101515, 2848, 121, 2, 36, "Subsection"],
Cell[101639, 2852, 9413, 159, 424, "Input"],
Cell[111055, 3013, 3240, 81, 108, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[114332, 3099, 124, 2, 36, "Subsection"],
Cell[114459, 3103, 707, 11, 29, "Text"],
Cell[CellGroupData[{
Cell[115191, 3118, 780, 24, 47, "Input"],
Cell[115974, 3144, 725, 21, 48, "Output"]
}, Open  ]],
Cell[116714, 3168, 1299, 27, 29, "Text"],
Cell[118016, 3197, 1474, 32, 62, "DisplayFormula"],
Cell[119493, 3231, 89, 1, 29, "Text"],
Cell[CellGroupData[{
Cell[119607, 3236, 3499, 98, 195, "Input"],
Cell[123109, 3336, 1084, 26, 48, "Output"],
Cell[124196, 3364, 1413, 37, 48, "Output"],
Cell[125612, 3403, 902, 22, 51, "Output"]
}, Open  ]],
Cell[126529, 3428, 996, 18, 29, "Text"],
Cell[CellGroupData[{
Cell[127550, 3450, 1846, 52, 72, "Input"],
Cell[129399, 3504, 589, 16, 51, "Output"],
Cell[129991, 3522, 326, 8, 48, "Output"]
}, Open  ]],
Cell[130332, 3533, 863, 14, 29, "Text"],
Cell[131198, 3549, 1046, 17, 47, "DisplayFormula"],
Cell[132247, 3568, 737, 23, 29, "Text"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[133033, 3597, 162, 2, 71, "Section"],
Cell[CellGroupData[{
Cell[133220, 3603, 121, 2, 36, "Subsection"],
Cell[133344, 3607, 956, 22, 65, "Text"],
Cell[134303, 3631, 12924, 219, 174, "Input"]
}, Open  ]],
Cell[CellGroupData[{
Cell[147264, 3855, 234, 4, 36, "Subsection"],
Cell[147501, 3861, 114, 1, 29, "Text"],
Cell[147618, 3864, 35772, 592, 303, "Input"],
Cell[183393, 4458, 129, 3, 29, "Text"],
Cell[183525, 4463, 1212, 21, 26, "DisplayFormula"],
Cell[184740, 4486, 920, 23, 33, "DisplayFormulaNumbered"],
Cell[185663, 4511, 177, 4, 29, "Text"],
Cell[185843, 4517, 687, 18, 25, "DisplayFormula"],
Cell[186533, 4537, 614, 19, 29, "Text"],
Cell[187150, 4558, 1418, 39, 112, "DisplayFormula"],
Cell[188571, 4599, 483, 12, 36, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[189091, 4616, 189, 3, 36, "Subsection"],
Cell[189283, 4621, 704, 11, 29, "Text"],
Cell[CellGroupData[{
Cell[190012, 4636, 780, 24, 47, "Input"],
Cell[190795, 4662, 753, 22, 48, "Output"]
}, Open  ]],
Cell[191563, 4687, 1363, 27, 29, "Text"],
Cell[192929, 4716, 1577, 33, 62, "DisplayFormula"],
Cell[194509, 4751, 89, 1, 29, "Text"],
Cell[CellGroupData[{
Cell[194623, 4756, 3603, 98, 195, "Input"],
Cell[198229, 4856, 1167, 26, 48, "Output"],
Cell[199399, 4884, 1468, 36, 48, "Output"],
Cell[200870, 4922, 949, 22, 51, "Output"]
}, Open  ]],
Cell[201834, 4947, 1505, 31, 65, "Text"],
Cell[203342, 4980, 816, 22, 38, "DisplayFormula"],
Cell[204161, 5004, 975, 15, 29, "Text"],
Cell[205139, 5021, 638, 16, 47, "DisplayFormula"],
Cell[205780, 5039, 483, 12, 36, "Text"],
Cell[206266, 5053, 1365, 34, 132, "Input"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)
(* NotebookSignature AuDsNk0LEYWpyBgMXQir5xYM *)
