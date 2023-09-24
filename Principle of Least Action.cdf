(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 13.3' *)

(***************************************************************************)
(*                                                                         *)
(*                                                                         *)
(*  Under the Wolfram FreeCDF terms of use, this file and its content are  *)
(*  bound by the Creative Commons BY-SA Attribution-ShareAlike license.    *)
(*                                                                         *)
(*        For additional information concerning CDF licensing, see:        *)
(*                                                                         *)
(*         www.wolfram.com/cdf/adopting-cdf/licensing-options.html         *)
(*                                                                         *)
(*                                                                         *)
(***************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1088,         20]
NotebookDataLength[    240831,       5589]
NotebookOptionsPosition[    224222,       5350]
NotebookOutlinePosition[    224791,       5370]
CellTagsIndexPosition[    224748,       5367]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["The Principle of Least Action", "Title",
 CellChangeTimes->{{3.5006705747374506`*^9, 3.500670584976754*^9}, {
  3.5006712637088437`*^9, 3.500671265205888*^9}},
 TextJustification->1.,ExpressionUUID->"f7a780ca-163c-4fe9-aaff-3c3b405559c4"],

Cell["\<\
Jason Gross, December 7, 2010
Last Updated September 23, 2023\
\>", "Subtitle",
 CellChangeTimes->{{3.5006712660239124`*^9, 3.500671284020445*^9}, {
  3.904524483379011*^9, 3.9045244984955463`*^9}},
 FontSize->10,ExpressionUUID->"436353ec-2c51-4913-b932-fc66e973b7dd"],

Cell[CellGroupData[{

Cell["Introduction", "Section",
 CellChangeTimes->{{3.5006711405361977`*^9, 
  3.500671150592496*^9}},ExpressionUUID->"24de4d76-dfde-4ed5-baea-\
9e84a9aadd2d"],

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
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"0bc852d9-9fd6-4b25-aab3-875e1d171edc"],
 ", at a point.  The action is then defined to be the integral of the \
Lagrangian along the path,"
}], "Text",
 CellChangeTimes->{{3.500670589548889*^9, 3.5006706389823523`*^9}, {
  3.5006706715093155`*^9, 3.500670767850167*^9}},
 TextJustification->1.,ExpressionUUID->"6aa5ef6b-1715-4031-b8c0-9bc49be59399"],

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
 TextJustification->1.,ExpressionUUID->"f1c3c26f-ee50-4f12-ab53-fbcf0b4389d8"],

Cell["\<\
It is (remarkably!) true that, in any physical system, the path an object \
actually takes minimizes the action.  It can be shown that the extrema of \
action occur at\
\>", "Text",
 CellChangeTimes->{{3.500670900769101*^9, 
  3.500670995401902*^9}},ExpressionUUID->"97330994-6404-4e12-ae53-\
140225c3e090"],

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
 TextAlignment->Center,ExpressionUUID->"d1384dfb-2b8f-46f0-a27b-84c1615ba123"],

Cell["\<\
This is called the Euler equation, or the Euler-Lagrange Equation.\
\>", "Text",
 CellChangeTimes->{{3.500670900769101*^9, 3.500670995401902*^9}, {
  3.500673679282343*^9, 
  3.5006736885386167`*^9}},ExpressionUUID->"acf85b22-f563-4424-86dc-\
9416d053d837"],

Cell[CellGroupData[{

Cell["Derivation", "Subsection",
 CellChangeTimes->{{3.5006763059450893`*^9, 
  3.5006763145333433`*^9}},ExpressionUUID->"1d071c4b-4b3a-432f-971c-\
9099fafd998c"],

Cell["\<\
Courtesy of Scott Hughes\[CloseCurlyQuote]s Lecture notes for 8.033.  (Most \
of this is copied almost verbatim from that.)\
\>", "Text",
 CellChangeTimes->{{3.5006717491212115`*^9, 3.5006717937725334`*^9}, {
  3.5006721187191515`*^9, 
  3.500672127592414*^9}},ExpressionUUID->"99db0ca5-4486-442e-a2dc-\
1a5b93980678"],

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
  TextJustification->1.,ExpressionUUID->
  "2705a01b-ce98-47e4-aca0-d316051012cb"],
 " of a variable ",
 Cell[BoxData[
  FormBox["x", TraditionalForm]],
  CellChangeTimes->{
   3.500670658189921*^9, {3.5006707933409214`*^9, 3.5006708043192463`*^9}, {
    3.500671040435235*^9, 3.5006710482484665`*^9}, 3.500671100846023*^9, {
    3.500671413501278*^9, 3.5006714205264854`*^9}},
  TextJustification->1.,ExpressionUUID->
  "fb1a35a5-8c3e-4108-bebe-8ae9756d1041"],
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
  TextJustification->1.,ExpressionUUID->
  "5524e2fb-08d2-4b2a-87e7-d4cedf3b5779"],
 ".  We want to find an extremum of "
}], "Text",
 CellChangeTimes->{{3.500671369759983*^9, 3.5006713850514355`*^9}, {
  3.500671426645666*^9, 3.500671496201725*^9}, {3.5006720301635303`*^9, 
  3.500672036211709*^9}, {3.5006721456619487`*^9, 
  3.5006721510251074`*^9}},ExpressionUUID->"ed45fb6a-a2ea-4427-91b6-\
96909d69eba4"],

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
 TextJustification->1.,ExpressionUUID->"eb99a6af-3eab-4e0b-be71-48385bae3578"],

Cell[TextData[{
 "Our goal is to compute ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "(", "t", ")"}], TraditionalForm]],
  CellChangeTimes->{
   3.500670658189921*^9, {3.5006707933409214`*^9, 3.5006708043192463`*^9}, {
    3.500671040435235*^9, 3.5006710482484665`*^9}, 3.500671100846023*^9, {
    3.500671413501278*^9, 3.5006714205264854`*^9}},
  TextJustification->1.,ExpressionUUID->
  "a458a6ed-2c0e-4726-a6b4-2411c4656f8f"],
 " such that ",
 Cell[BoxData[
  FormBox["J", TraditionalForm]],
  CellChangeTimes->{
   3.500670658189921*^9, {3.5006707933409214`*^9, 3.5006708043192463`*^9}, {
    3.500671040435235*^9, 3.5006710482484665`*^9}, 3.500671100846023*^9, {
    3.500671413501278*^9, 3.5006714205264854`*^9}},
  TextJustification->1.,ExpressionUUID->
  "93acc717-1a67-422a-ab8f-f91f1dcbb106"],
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
  TextJustification->1.,ExpressionUUID->
  "49c0780e-baf4-431f-a816-aac82b2a0c34"],
 " will be the same for any ",
 Cell[BoxData[
  FormBox["x", TraditionalForm]],
  CellChangeTimes->{
   3.500670658189921*^9, {3.5006707933409214`*^9, 3.5006708043192463`*^9}, {
    3.500671040435235*^9, 3.5006710482484665`*^9}, 3.500671100846023*^9, {
    3.500671413501278*^9, 3.5006714205264854`*^9}},
  TextJustification->1.,ExpressionUUID->
  "1ce2a1d9-ed2c-49a8-b95a-dd5940bd92dc"],
 " we care about, as will ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "(", 
    SubscriptBox["t", "2"], ")"}], TraditionalForm]],
  CellChangeTimes->{
   3.500670658189921*^9, {3.5006707933409214`*^9, 3.5006708043192463`*^9}, {
    3.500671040435235*^9, 3.5006710482484665`*^9}, 3.500671100846023*^9, {
    3.500671413501278*^9, 3.5006714205264854`*^9}},
  TextJustification->1.,ExpressionUUID->
  "ff07e9f2-2928-40f6-9e01-6262251a5d3c"],
 "."
}], "Text",
 CellChangeTimes->{{3.500671369759983*^9, 3.5006713850514355`*^9}, {
  3.500671426645666*^9, 3.500671496201725*^9}, {3.500671539809016*^9, 
  3.5006717309726744`*^9}, {3.5006717985466747`*^9, 3.5006718669707*^9}, {
  3.5006718976136065`*^9, 3.5006718986796384`*^9}, {3.50067215313717*^9, 
  3.500672154587213*^9}},ExpressionUUID->"38c8f30b-5009-4c16-9ba4-\
99675a4c06d9"],

Cell[TextData[{
 "Imagine we have some ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "(", "t", ")"}], TraditionalForm]],
  CellChangeTimes->{
   3.500670658189921*^9, {3.5006707933409214`*^9, 3.5006708043192463`*^9}, {
    3.500671040435235*^9, 3.5006710482484665`*^9}, 3.500671100846023*^9, {
    3.500671413501278*^9, 3.5006714205264854`*^9}},
  TextJustification->1.,ExpressionUUID->
  "a46b4a3f-9436-4ee5-9206-6317c729ab11"],
 " for which ",
 Cell[BoxData[
  FormBox["J", TraditionalForm]],
  CellChangeTimes->{
   3.500670658189921*^9, {3.5006707933409214`*^9, 3.5006708043192463`*^9}, {
    3.500671040435235*^9, 3.5006710482484665`*^9}, 3.500671100846023*^9, {
    3.500671413501278*^9, 3.5006714205264854`*^9}},
  TextJustification->1.,ExpressionUUID->
  "5b020675-4cdf-4cc5-8417-41248894b427"],
 " is at an extremum, and imagine that we have a function which parametrizes \
how far our current path is from our choice of ",
 Cell[BoxData[
  FormBox["x", TraditionalForm]],
  CellChangeTimes->{
   3.500670658189921*^9, {3.5006707933409214`*^9, 3.5006708043192463`*^9}, {
    3.500671040435235*^9, 3.5006710482484665`*^9}, 3.500671100846023*^9, {
    3.500671413501278*^9, 3.5006714205264854`*^9}},
  TextJustification->1.,ExpressionUUID->
  "ea04f1be-e9e3-424d-94bb-4d7da41d5baa"],
 ":"
}], "Text",
 CellChangeTimes->{{3.5006718997056684`*^9, 3.500671911209009*^9}, {
   3.5006721550152254`*^9, 3.5006721554812393`*^9}, 
   3.5006953333305945`*^9},ExpressionUUID->"0e889bd6-e5ab-47d8-aa8d-\
e770925cf40c"],

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
 TextJustification->1.,ExpressionUUID->"097a066e-6ab8-437b-a705-4493576fb356"],

Cell[TextData[{
 "The function ",
 Cell[BoxData[
  FormBox["A", TraditionalForm]],
  CellChangeTimes->{
   3.500670658189921*^9, {3.5006707933409214`*^9, 3.5006708043192463`*^9}, {
    3.500671040435235*^9, 3.5006710482484665`*^9}, 3.500671100846023*^9, {
    3.500671413501278*^9, 3.5006714205264854`*^9}},
  TextJustification->1.,ExpressionUUID->
  "1ec89490-d47a-4c8a-923e-59991646eb97"],
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
  TextJustification->1.,ExpressionUUID->
  "4676eb57-9e4d-4e22-96ce-b46f9cd28400"],
 ".  The parameter ",
 Cell[BoxData[
  FormBox["\[Alpha]", TraditionalForm]],
  CellChangeTimes->{
   3.500670658189921*^9, {3.5006707933409214`*^9, 3.5006708043192463`*^9}, {
    3.500671040435235*^9, 3.5006710482484665`*^9}, 3.500671100846023*^9, {
    3.500671413501278*^9, 3.5006714205264854`*^9}},
  TextJustification->1.,ExpressionUUID->
  "7331e353-0dc0-4470-ab5a-784bbbe5c6b1"],
 " allows us to control how the variation ",
 Cell[BoxData[
  FormBox[
   RowBox[{"A", "(", "t", ")"}], TraditionalForm]],
  CellChangeTimes->{
   3.500670658189921*^9, {3.5006707933409214`*^9, 3.5006708043192463`*^9}, {
    3.500671040435235*^9, 3.5006710482484665`*^9}, 3.500671100846023*^9, {
    3.500671413501278*^9, 3.5006714205264854`*^9}},
  TextJustification->1.,ExpressionUUID->
  "478e805f-8aef-41cc-b9e3-818f90438665"],
 " enters into our path ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "(", 
    RowBox[{"t", ";", "\[Alpha]"}], ")"}], TraditionalForm]],
  CellChangeTimes->{
   3.500670658189921*^9, {3.5006707933409214`*^9, 3.5006708043192463`*^9}, {
    3.500671040435235*^9, 3.5006710482484665`*^9}, 3.500671100846023*^9, {
    3.500671413501278*^9, 3.5006714205264854`*^9}},
  TextJustification->1.,ExpressionUUID->
  "f6594f4c-ba65-4157-ab0d-d035bbb5f864"],
 "."
}], "Text",
 CellChangeTimes->{{3.500671369759983*^9, 3.5006713850514355`*^9}, {
  3.500671426645666*^9, 3.500671496201725*^9}, {3.500671539809016*^9, 
  3.5006717309726744`*^9}, {3.5006717985466747`*^9, 3.5006718669707*^9}, {
  3.5006719158081455`*^9, 3.5006720457879925`*^9}, {3.5006721598763695`*^9, 
  3.5006721598763695`*^9}},ExpressionUUID->"1213ff0b-d8d4-4a93-8b0f-\
94bc517ae3ce"],

Cell[TextData[{
 "The \[OpenCurlyDoubleQuote]correct\[CloseCurlyDoubleQuote] path ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "(", "t", ")"}], TraditionalForm]],
  CellChangeTimes->{
   3.500670658189921*^9, {3.5006707933409214`*^9, 3.5006708043192463`*^9}, {
    3.500671040435235*^9, 3.5006710482484665`*^9}, 3.500671100846023*^9, {
    3.500671413501278*^9, 3.5006714205264854`*^9}},
  TextJustification->1.,ExpressionUUID->
  "de068e1c-725b-4ee5-8fb3-ea8a3f9eab86"],
 " is unknown; our goal is to figure out how to construct it, or to figure \
out how ",
 Cell[BoxData[
  FormBox["f", TraditionalForm]],
  CellChangeTimes->{
   3.500670658189921*^9, {3.5006707933409214`*^9, 3.5006708043192463`*^9}, {
    3.500671040435235*^9, 3.5006710482484665`*^9}, 3.500671100846023*^9, {
    3.500671413501278*^9, 3.5006714205264854`*^9}},
  TextJustification->1.,ExpressionUUID->
  "c5042562-571a-4d5e-b603-adf4611cd420"],
 " behaves when we are on it."
}], "Text",
 CellChangeTimes->{{3.500671369759983*^9, 3.5006713850514355`*^9}, {
   3.500671426645666*^9, 3.500671496201725*^9}, {3.500671539809016*^9, 
   3.5006717309726744`*^9}, {3.5006717985466747`*^9, 3.5006718669707*^9}, {
   3.5006719158081455`*^9, 3.500672116011071*^9}, {3.500672160462387*^9, 
   3.5006721698736653`*^9}, 
   3.5006953359166713`*^9},ExpressionUUID->"e4618deb-5a6c-4a64-969d-\
5d8c427a639c"],

Cell[TextData[{
 "Our basic idea is to ask how does the integral ",
 Cell[BoxData[
  FormBox["J", TraditionalForm]],
  CellChangeTimes->{
   3.500670658189921*^9, {3.5006707933409214`*^9, 3.5006708043192463`*^9}, {
    3.500671040435235*^9, 3.5006710482484665`*^9}, 3.500671100846023*^9, {
    3.500671413501278*^9, 3.5006714205264854`*^9}},
  TextJustification->1.,ExpressionUUID->
  "c8e5b177-c119-4bdd-b3b7-95e670585b9d"],
 " behave when we are in the vicinity of the extremum.  We know that ordinary \
functions are flat --- have zero first derivative --- when we are at an \
extremum.  So let us put"
}], "Text",
 CellChangeTimes->{{3.5006721716217175`*^9, 3.500672176736869*^9}, {
   3.5006722139379697`*^9, 3.5006722921302843`*^9}, 
   3.5006953383007417`*^9},ExpressionUUID->"6da9870b-b001-4e7f-8d11-\
b3331f2a7381"],

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
 TextJustification->1.,ExpressionUUID->"719ae998-781e-4b82-a83a-e6f2873d41ea"],

Cell[TextData[{
 "We know that ",
 Cell[BoxData[
  FormBox[
   RowBox[{"\[Alpha]", "=", "0"}], TraditionalForm]],
  CellChangeTimes->{
   3.500670658189921*^9, {3.5006707933409214`*^9, 3.5006708043192463`*^9}, {
    3.500671040435235*^9, 3.5006710482484665`*^9}, 3.500671100846023*^9, {
    3.500671413501278*^9, 3.5006714205264854`*^9}},
  TextJustification->1.,ExpressionUUID->
  "b864a66a-a26c-46e0-991b-9ae6fa33c798"],
 " corresponds to the extremum by definition of ",
 Cell[BoxData[
  FormBox["\[Alpha]", TraditionalForm]],
  CellChangeTimes->{
   3.500670658189921*^9, {3.5006707933409214`*^9, 3.5006708043192463`*^9}, {
    3.500671040435235*^9, 3.5006710482484665`*^9}, 3.500671100846023*^9, {
    3.500671413501278*^9, 3.5006714205264854`*^9}},
  TextJustification->1.,ExpressionUUID->
  "45db975b-52b9-4397-a375-d183e13b04f3"],
 ".  However, this doesn\[CloseCurlyQuote]t teach us anything useful, sine we \
don\[CloseCurlyQuote]t know the path ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "(", "t", ")"}], TraditionalForm]],
  CellChangeTimes->{
   3.500670658189921*^9, {3.5006707933409214`*^9, 3.5006708043192463`*^9}, {
    3.500671040435235*^9, 3.5006710482484665`*^9}, 3.500671100846023*^9, {
    3.500671413501278*^9, 3.5006714205264854`*^9}},
  TextJustification->1.,ExpressionUUID->
  "f718c977-6497-4a2a-9b4e-e1368a84961c"],
 " that corresponds to the extremum."
}], "Text",
 CellChangeTimes->{{3.5006721716217175`*^9, 3.500672176736869*^9}, {
  3.5006722139379697`*^9, 3.5006722921302843`*^9}, {3.5006723350535545`*^9, 
  3.5006723904011927`*^9}},ExpressionUUID->"e20f5d38-e649-4f2b-9129-\
6f5b653b774a"],

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
  TextJustification->1.,ExpressionUUID->
  "04e59d2d-a869-46d8-a551-87834e0fec5d"],
 " since it\[CloseCurlyQuote]s an extremum.  Using this fact,"
}], "Text",
 CellChangeTimes->{{3.5006721716217175`*^9, 3.500672176736869*^9}, {
  3.5006722139379697`*^9, 3.5006722921302843`*^9}, {3.5006723350535545`*^9, 
  3.5006724068646803`*^9}, {3.500672703510461*^9, 
  3.500672815073763*^9}},ExpressionUUID->"abd7a3bc-e9d9-4026-ae95-\
aeef6059bab4"],

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
 TextJustification->1.,ExpressionUUID->"38f4b549-b774-45b2-8f8c-c9c23fc80e57"],

Cell["So", "Text",
 CellChangeTimes->{{3.5006721716217175`*^9, 3.500672176736869*^9}, {
  3.5006722139379697`*^9, 3.5006722921302843`*^9}, {3.5006723350535545`*^9, 
  3.5006724068646803`*^9}, {3.500672703510461*^9, 3.500672815073763*^9}, {
  3.5006730263480167`*^9, 
  3.500673026637025*^9}},ExpressionUUID->"a9b441f9-583f-42fc-bcbe-\
bfed7a5cc863"],

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
 TextJustification->1.,ExpressionUUID->"44efb562-7b82-4913-b449-57e074169ea0"],

Cell["Integration by parts on the section term gives", "Text",
 CellChangeTimes->{{3.5006721716217175`*^9, 3.500672176736869*^9}, {
  3.5006722139379697`*^9, 3.5006722921302843`*^9}, {3.5006723350535545`*^9, 
  3.5006724068646803`*^9}, {3.500672703510461*^9, 3.500672815073763*^9}, {
  3.5006730263480167`*^9, 3.500673026637025*^9}, {3.50067306126505*^9, 
  3.500673068795273*^9}},ExpressionUUID->"7bb94feb-e3e3-4ee8-aa8b-\
3805758773f0"],

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
 TextJustification->1.,ExpressionUUID->"dfde4564-ce3c-4d85-af34-e6fe8d650d8c"],

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
  TextJustification->1.,ExpressionUUID->
  "eae1d35b-a5dc-45d3-9554-e2b0b3ab7b8b"],
 ", the first term dies, and we get "
}], "Text",
 CellChangeTimes->{{3.5006721716217175`*^9, 3.500672176736869*^9}, {
  3.5006722139379697`*^9, 3.5006722921302843`*^9}, {3.5006723350535545`*^9, 
  3.5006724068646803`*^9}, {3.500672703510461*^9, 3.500672815073763*^9}, {
  3.5006730263480167`*^9, 3.500673026637025*^9}, {3.50067306126505*^9, 
  3.500673068795273*^9}, {3.500673245903515*^9, 
  3.500673279390506*^9}},ExpressionUUID->"b62317da-d36b-44df-bdab-\
14ad6ee486a5"],

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
        MultilineFunction->None], " ", "-", 
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
   3.500673318489663*^9, 3.5006733275569315`*^9}, 3.904524524996048*^9},
 TextAlignment->Center,
 TextJustification->1.,ExpressionUUID->"5dabd31f-2b14-4731-97d0-48d331e27702"],

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
  TextJustification->1.,ExpressionUUID->
  "f912af70-d35d-4f53-a5d7-19d201189a03"],
 " is arbitrary except at the endpoints, we must have that the integrand is \
zero at all points:"
}], "Text",
 CellChangeTimes->{{3.5006721716217175`*^9, 3.500672176736869*^9}, {
  3.5006722139379697`*^9, 3.5006722921302843`*^9}, {3.5006723350535545`*^9, 
  3.5006724068646803`*^9}, {3.500672703510461*^9, 3.500672815073763*^9}, {
  3.5006730263480167`*^9, 3.500673026637025*^9}, {3.50067306126505*^9, 
  3.500673068795273*^9}, {3.500673245903515*^9, 3.500673279390506*^9}, {
  3.500673363503996*^9, 
  3.5006734024671493`*^9}},ExpressionUUID->"bac26b60-7b38-443c-9f7c-\
9b182034973b"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    FractionBox[
     RowBox[{"\[PartialD]", "f"}], 
     RowBox[{"\[PartialD]", "x"}],
     MultilineFunction->None], " ", "-", 
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
   3.500673412388443*^9}, 3.9045245275851955`*^9},
 TextAlignment->Center,
 TextJustification->1.,ExpressionUUID->"1feef19c-4bd0-4a67-b9dd-0dfd8106abe5"],

Cell["This is what was to be derived.", "Text",
 CellChangeTimes->{{3.5006721716217175`*^9, 3.500672176736869*^9}, {
  3.5006722139379697`*^9, 3.5006722921302843`*^9}, {3.5006723350535545`*^9, 
  3.5006724068646803`*^9}, {3.500672703510461*^9, 3.500672815073763*^9}, {
  3.5006730263480167`*^9, 3.500673026637025*^9}, {3.50067306126505*^9, 
  3.500673068795273*^9}, {3.500673245903515*^9, 3.500673279390506*^9}, {
  3.500673363503996*^9, 
  3.5006734330880556`*^9}},ExpressionUUID->"58c97dc8-60c4-43cc-a12f-\
5e4cfcf474d7"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[{
 "Least action: ",
 Cell[BoxData[
  FormBox[
   RowBox[{"F", "=", 
    RowBox[{"m", " ", "a"}]}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"3b8c2add-c9a1-4ff8-bfa7-c40aae91cb30"]
}], "Section",
 CellChangeTimes->{{3.5006734704251604`*^9, 3.500673531351964*^9}, {
  3.5006763289867716`*^9, 
  3.5006763727590675`*^9}},ExpressionUUID->"c7f1ed41-5afb-4698-a24f-\
06c933fcb6e1"],

Cell[TextData[{
 "Suppose we have the ",
 "Newtonian",
 " kinetic energy, ",
 Cell[BoxData[
  FormBox[
   RowBox[{"K", " ", "=", 
    RowBox[{
     FractionBox["1", "2"], "m", " ", 
     SuperscriptBox["v", "2"]}]}], TraditionalForm]],ExpressionUUID->
  "2577c104-e2fb-42f4-b9b9-9bc0abaaad92"],
 ", and a potential that depends only on position, ",
 Cell[BoxData[
  FormBox[
   RowBox[{"U", "=", 
    RowBox[{"U", "(", 
     OverscriptBox["r", "\[RightVector]"], ")"}]}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"2d6209b6-8a6e-4460-ad3b-b037babeaccc"],
 ".  Then the Euler-Lagrange equations tell us the following:"
}], "Text",
 CellChangeTimes->{{3.500676337562025*^9, 3.5006764013829145`*^9}, {
   3.5006764738990607`*^9, 3.500676536515914*^9}, 
   3.5006772365746355`*^9},ExpressionUUID->"a4c5e336-bcb1-42e3-a461-\
9bc6a26bfcb5"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"Clear", "[", 
  RowBox[{"U", ",", "m", ",", "r"}], "]"}], "\n", 
 RowBox[{
  RowBox[{"L", "=", 
   RowBox[{
    RowBox[{
     FractionBox["1", "2"], " ", "m", " ", 
     SuperscriptBox[
      RowBox[{
       SuperscriptBox["r", "\[Prime]",
        MultilineFunction->None], "[", "t", "]"}], "2"]}], "-", 
    RowBox[{"U", "[", 
     RowBox[{"r", "[", "t", "]"}], "]"}]}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{
    SubscriptBox["\[PartialD]", 
     RowBox[{"{", 
      RowBox[{"r", "[", "t", "]"}], "}"}]], "L"}], "-", 
   RowBox[{"Dt", "[", 
    RowBox[{
     RowBox[{
      SubscriptBox["\[PartialD]", 
       RowBox[{"{", 
        RowBox[{
         SuperscriptBox["r", "\[Prime]",
          MultilineFunction->None], "[", "t", "]"}], "}"}]], "L"}], ",", "t", 
     ",", 
     RowBox[{"Constants", "\[Rule]", "m"}]}], "]"}]}], "\[Equal]", 
  "0"}]}], "Input",
 CellChangeTimes->{{3.5006765401430216`*^9, 3.5006765645637445`*^9}, {
  3.5006766092710676`*^9, 3.5006768974745984`*^9}, {3.904524546300212*^9, 
  3.904524552374116*^9}},ExpressionUUID->"82a37c3d-d2c5-42f7-9b4c-\
53c33f1e0a39"],

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
 CellChangeTimes->{{3.500676812240075*^9, 
  3.500676897695605*^9}},ExpressionUUID->"3e7d1ad5-3a31-401f-8665-\
c1d14caff624"]
}, Open  ]],

Cell["Rearrangement gives", "Text",
 CellChangeTimes->{{3.500676337562025*^9, 3.5006764013829145`*^9}, {
  3.5006764738990607`*^9, 3.500676536515914*^9}, {3.5006769003376827`*^9, 
  3.500676906346861*^9}},ExpressionUUID->"65c62887-48b5-43c5-ba05-\
f78a6396623c"],

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
 TextAlignment->Center,ExpressionUUID->"f7943cbe-6b22-44a3-87f2-5fa541d3399c"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Least action with no potential", "Section",
 CellChangeTimes->{{3.5006734704251604`*^9, 3.500673531351964*^9}, {
  3.5006763289867716`*^9, 
  3.500676335469963*^9}},ExpressionUUID->"a7531bc8-5907-4e71-af10-\
676ca30e7b74"],

Cell[TextData[{
 "Suppose we have no potential, ",
 Cell[BoxData[
  FormBox[
   RowBox[{"U", "=", "0"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"bba44fe9-6d1f-4253-81af-15b900fdffc8"],
 ".  Then ",
 Cell[BoxData[
  FormBox[
   RowBox[{"L", "=", "K"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"7db6285e-c2c4-4f30-af2b-8fa1797473ca"],
 ", so the Euler-Lagrange equations become"
}], "Text",
 CellChangeTimes->{{3.500676337562025*^9, 3.5006763568505964`*^9}, {
  3.5006769999236307`*^9, 
  3.500677021808278*^9}},ExpressionUUID->"0df81ab8-2bce-4c43-8e95-\
48f654c15c22"],

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
 TextAlignment->Center,ExpressionUUID->"d19fcdf1-ec8c-43df-be50-b171c7ec6eb9"],

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
      OverscriptBox["x", "."], "2"]}]}], TraditionalForm]],ExpressionUUID->
  "df80b47d-11b3-48b0-b0cb-3d07a65cd591"],
 ", this is just"
}], "Text",
 CellChangeTimes->{{3.500676337562025*^9, 3.5006763568505964`*^9}, {
   3.5006769999236307`*^9, 3.5006771037877045`*^9}, 
   3.5006772329585285`*^9},ExpressionUUID->"8612d786-ec91-499c-8496-\
f9dc16b2982a"],

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
 TextAlignment->Center,ExpressionUUID->"2aa62279-28a1-4a00-9cf2-f80b013ed4b1"],

Cell["This is a straight line, as expected.", "Text",
 CellChangeTimes->{{3.5006771590423403`*^9, 
  3.500677172225731*^9}},ExpressionUUID->"730cf67c-b748-4c50-8345-\
d044a4663878"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Least action with gravitational potential", "Section",
 CellChangeTimes->{{3.5006734704251604`*^9, 3.500673531351964*^9}, {
  3.5006763289867716`*^9, 3.500676335469963*^9}, {3.5006771914673004`*^9, 
  3.5006771937063665`*^9}},ExpressionUUID->"389c1e61-4d40-4491-a2e6-\
b53de65454c6"],

Cell[TextData[{
 "Suppose we have gravitational potential close to the surface of the earth, ",
 Cell[BoxData[
  FormBox[
   RowBox[{"U", "=", 
    RowBox[{"m", " ", "g", " ", "y"}]}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"a0bc25d3-55ae-40b5-88df-bba97d766ead"],
 ", and Newtonian kinetic energy, ",
 Cell[BoxData[
  FormBox[
   RowBox[{"K", "=", 
    RowBox[{
     FractionBox["1", "2"], "m", " ", 
     SuperscriptBox[
      OverscriptBox["y", "."], "2"]}]}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"c83a2147-ddda-4401-9266-29d0935cb745"],
 ".  Then the Euler-Lagrange equations become"
}], "Text",
 CellChangeTimes->{{3.500676337562025*^9, 3.5006763568505964`*^9}, {
  3.5006769999236307`*^9, 3.500677021808278*^9}, {3.500677196639453*^9, 
  3.5006772720916862`*^9}},ExpressionUUID->"fd9e9f8e-e874-475d-88d6-\
b45a8f4c079f"],

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
 TextAlignment->Center,ExpressionUUID->"36906121-4d76-4564-8c5d-78be4aa330c9"],

Cell["This is a parabola, as expected.", "Text",
 CellChangeTimes->{{3.500676337562025*^9, 3.5006763568505964`*^9}, {
  3.5006769999236307`*^9, 3.5006771037877045`*^9}, {3.500677421269102*^9, 
  3.500677426802266*^9}},ExpressionUUID->"1523697e-863b-4147-b59f-\
186ea062ed2a"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Constants of motion: Momenta", "Section",
 CellChangeTimes->{{3.5006734704251604`*^9, 3.500673531351964*^9}, {
  3.5006763289867716`*^9, 3.500676335469963*^9}, {3.5006771914673004`*^9, 
  3.5006771937063665`*^9}, {3.500677438024598*^9, 
  3.5006774443417854`*^9}},ExpressionUUID->"55c6c85b-4333-43ff-8aa2-\
d392a434b7aa"],

Cell["We may rearrange the Euler-Lagrange equations to obtain", "Text",
 CellChangeTimes->{{3.500676337562025*^9, 3.5006763568505964`*^9}, {
  3.5006769999236307`*^9, 3.500677021808278*^9}, {3.500677196639453*^9, 
  3.5006772720916862`*^9}, {3.500677462161312*^9, 
  3.5006774728426285`*^9}},ExpressionUUID->"aa79b6a2-85f4-4b15-9ef0-\
e541d789708d"],

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
 TextAlignment->Center,ExpressionUUID->"5fa9a89d-5c39-49d4-b4e2-554e50c08bdb"],

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
  TextAlignment->Center,ExpressionUUID->
  "0612564a-3223-4306-bf23-0a1d62a442f5"],
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
  TextAlignment->Center,ExpressionUUID->
  "896e20aa-7e97-47d8-846f-c2ec451ed1ac"],
 " is also zero.  This means that ",
 Cell[BoxData[
  FormBox[
   FractionBox[
    RowBox[{"\[PartialD]", "L"}], 
    RowBox[{"\[PartialD]", 
     OverscriptBox["q", "."]}],
    MultilineFunction->None], TraditionalForm]],
  CellChangeTimes->{{3.500677476101725*^9, 3.5006774770927544`*^9}},
  TextAlignment->Center,ExpressionUUID->
  "a53ac795-ae24-46c4-9cd8-c324e1041611"],
 " is a constant (with respect to time).  We call ",
 Cell[BoxData[
  FormBox[
   FractionBox[
    RowBox[{"\[PartialD]", "L"}], 
    RowBox[{"\[PartialD]", 
     OverscriptBox["q", "."]}],
    MultilineFunction->None], TraditionalForm]],
  CellChangeTimes->{{3.500677476101725*^9, 3.5006774770927544`*^9}},
  TextAlignment->Center,ExpressionUUID->
  "45a4d34d-384b-4ed2-8447-6bae244db9f1"],
 " a (conserved) momentum of the system."
}], "Text",
 CellChangeTimes->{{3.500676337562025*^9, 3.5006763568505964`*^9}, {
  3.5006769999236307`*^9, 3.500677021808278*^9}, {3.500677196639453*^9, 
  3.5006772720916862`*^9}, {3.500677462161312*^9, 3.5006775482138596`*^9}, {
  3.5006781568528748`*^9, 
  3.500678166594163*^9}},ExpressionUUID->"159ee589-0643-4a9c-b063-\
fff6d8895734"],

Cell[CellGroupData[{

Cell["Linear Momentum", "Subsection",
 CellChangeTimes->{{3.500677552213978*^9, 
  3.5006775672014217`*^9}},ExpressionUUID->"13550842-1f5b-46b4-ad8a-\
5a824363f95e"],

Cell[TextData[{
 "By noting that Newtonian kinetic energy, ",
 Cell[BoxData[
  FormBox[
   RowBox[{"K", " ", "=", 
    RowBox[{
     FractionBox["1", "2"], "m", " ", 
     SuperscriptBox["v", "2"]}]}], TraditionalForm]],ExpressionUUID->
  "5f0bc9b7-9af4-45a1-8742-03e7e81da4ee"],
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
  TextAlignment->Center,ExpressionUUID->
  "0403dafd-3baa-45b8-9ef1-00b35d71b28e"],
 " (and, similarly, ",
 Cell[BoxData[
  FormBox[
   FractionBox[
    RowBox[{"\[PartialD]", "L"}], 
    RowBox[{"\[PartialD]", 
     OverscriptBox["y", "."]}],
    MultilineFunction->None], TraditionalForm]],
  CellChangeTimes->{{3.500677476101725*^9, 3.5006774770927544`*^9}},
  TextAlignment->Center,ExpressionUUID->
  "8a5729ce-54a7-4aa5-95db-398d49ee0ed7"],
 " and ",
 Cell[BoxData[
  FormBox[
   FractionBox[
    RowBox[{"\[PartialD]", "L"}], 
    RowBox[{"\[PartialD]", 
     OverscriptBox["z", "."]}],
    MultilineFunction->None], TraditionalForm]],
  CellChangeTimes->{{3.500677476101725*^9, 3.5006774770927544`*^9}},
  TextAlignment->Center,ExpressionUUID->
  "6b635be2-8020-41cf-8ed0-ff2a0e8297d1"],
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
  TextAlignment->Center,ExpressionUUID->
  "9b9b219a-86b5-42c6-9937-0dd7798317ae"],
 ".  This is just standard linear momentum, ",
 Cell[BoxData[
  FormBox[
   RowBox[{"m", " ", "v"}], TraditionalForm]],
  CellChangeTimes->{{3.500677476101725*^9, 3.5006774770927544`*^9}},
  TextAlignment->Center,ExpressionUUID->
  "dce8275e-9360-433a-a991-fe2aee109024"],
 "."
}], "Text",
 CellChangeTimes->{{3.500676337562025*^9, 3.5006764013829145`*^9}, {
   3.5006764738990607`*^9, 3.500676536515914*^9}, 3.5006772365746355`*^9, {
   3.500677580856826*^9, 3.500677737467461*^9}, {3.500678146481568*^9, 
   3.500678181126593*^9}},ExpressionUUID->"91af3e5d-8a8c-4030-abd7-\
66343f4a6fe0"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Angular Momentum", "Subsection",
 CellChangeTimes->{{3.500677552213978*^9, 3.5006775672014217`*^9}, {
  3.5006777482087793`*^9, 
  3.5006777493638134`*^9}},ExpressionUUID->"eb7853de-488c-4202-9c02-\
cdceb2773b2c"],

Cell["Let us change to polar coordinates.", "Text",
 CellChangeTimes->{{3.500676337562025*^9, 3.5006764013829145`*^9}, {
   3.5006764738990607`*^9, 3.500676536515914*^9}, 3.5006772365746355`*^9, {
   3.500677580856826*^9, 3.500677837358418*^9}, {3.500677999976231*^9, 
   3.5006780122675953`*^9}},ExpressionUUID->"88a3715f-bf54-48a3-b3c9-\
a98e9de1cbc3"],

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
  3.5006780228109074`*^9}, {3.50067832596188*^9, 
  3.500678342815379*^9}},ExpressionUUID->"74b3f084-ac13-4bc5-9433-\
ab1ad62d78a4"],

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
   3.5006780231569176`*^9, {3.5006783301880054`*^9, 
   3.500678343080387*^9}},ExpressionUUID->"83f527e4-7d67-45b4-8893-\
53f824482a22"]
}, Open  ]],

Cell["Using dot notation, this is", "Text",
 CellChangeTimes->{{3.50067788709089*^9, 
  3.5006779011143055`*^9}},ExpressionUUID->"73cab032-f3c0-433a-a9ba-\
8a08623c51f0"],

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
  3.500678328631959*^9, 
  3.5006783471025057`*^9}},ExpressionUUID->"972a9ab3-aba0-473a-bbc7-\
4766860b40c5"],

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
   3.500678025379983*^9, {3.5006783289579687`*^9, 
   3.5006783473155127`*^9}},ExpressionUUID->"8c247ea6-a3b6-4a6f-bf87-\
cce22a69a1bd"]
}, Open  ]],

Cell[TextData[{
 "Note that ",
 Cell[BoxData[
  FormBox["\[Theta]", TraditionalForm]],
  CellChangeTimes->{{3.500677476101725*^9, 3.5006774770927544`*^9}},
  TextAlignment->Center,ExpressionUUID->
  "895f514a-86e6-462b-9689-bb9bc55eec75"],
 " does not appear in this expression.  If potential energy is not a function \
of ",
 Cell[BoxData[
  FormBox["\[Theta]", TraditionalForm]],
  CellChangeTimes->{{3.500677476101725*^9, 3.5006774770927544`*^9}},
  TextAlignment->Center,ExpressionUUID->
  "b8bc5701-df0b-4fc2-ae01-fe7a2984af77"],
 " (is only a function of ",
 Cell[BoxData[
  FormBox["r", TraditionalForm]],
  CellChangeTimes->{{3.500677476101725*^9, 3.5006774770927544`*^9}},
  TextAlignment->Center,ExpressionUUID->
  "582bf620-111a-405f-ad1a-114b54d40afc"],
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
  TextAlignment->Center,ExpressionUUID->
  "7a86e6f9-fd4d-470c-b457-17c87c7af56d"],
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
  TextAlignment->Center,ExpressionUUID->
  "1371a3a4-6a0e-4a6e-91d1-4d8b649d1130"],
 "."
}], "Text",
 CellChangeTimes->{{3.500676337562025*^9, 3.5006764013829145`*^9}, {
   3.5006764738990607`*^9, 3.500676536515914*^9}, 3.5006772365746355`*^9, {
   3.500677580856826*^9, 3.500677837358418*^9}, {3.5006779653062053`*^9, 
   3.500677994667074*^9}, {3.5006780298741164`*^9, 3.500678122699864*^9}, {
   3.5006781970830655`*^9, 
   3.5006782787704835`*^9}},ExpressionUUID->"b599dac5-56d9-4f43-a196-\
89bf5479ac71"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Classic Problem: Brachistochrone (\[OpenCurlyDoubleQuote]shortest time\
\[CloseCurlyDoubleQuote])", "Section",
 CellChangeTimes->{{3.5006734704251604`*^9, 3.500673531351964*^9}, 
   3.500685825842284*^9},ExpressionUUID->"09b04eb7-0463-47e8-a753-\
9db06230f03f"],

Cell[CellGroupData[{

Cell["Problem", "Subsection",
 CellChangeTimes->{{3.500654268050593*^9, 3.5006542794169292`*^9}},
 TextJustification->1.,ExpressionUUID->"2242997e-2afd-40f2-8c8a-59427438fbf3"],

Cell[TextData[{
 "A bead starts at ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "=", "0"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"3966852c-9ad5-4d06-887c-451018240c7a"],
 ", ",
 Cell[BoxData[
  FormBox[
   RowBox[{"y", "=", "0"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"86dd545d-ccc1-4ff3-bad9-007c39492045"],
 ", and slides down a wire without friction, reaching a lower point ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{
     SubscriptBox["x", "f"], ",", 
     SubscriptBox["y", "f"]}], ")"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"a0f2d4aa-6b53-43e1-9259-acf86dbd2734"],
 ".  What shape should the wire be in order to have the bead reach ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{
     SubscriptBox["x", "f"], ",", 
     SubscriptBox["y", "f"]}], ")"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"3b4ebf44-93e3-49d4-8438-d6611f27acc1"],
 " in as little time as possible."
}], "Text",
 CellChangeTimes->{{3.5006539390118537`*^9, 3.500653953225274*^9}, {
   3.500654074195855*^9, 3.500654177844923*^9}, {3.500673523587734*^9, 
   3.500673606105177*^9}, 3.5006953591723595`*^9},
 TextJustification->1.,ExpressionUUID->"acf6c777-7810-47b6-a4f4-b31599409261"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Solution", "Subsection",
 CellChangeTimes->{{3.5006542826410246`*^9, 3.5006542901622477`*^9}},
 TextJustification->1.,ExpressionUUID->"0840fc51-5074-4773-ba7b-e9ff0ea2ac34"],

Cell[CellGroupData[{

Cell["Idea", "Subsubsection",
 CellChangeTimes->{{3.500673701961014*^9, 
  3.500673709627241*^9}},ExpressionUUID->"f2f10360-37be-4bb4-bc8a-\
de18329916ab"],

Cell[TextData[{
 "Use the Euler equation to minimize the time it takes to get from ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{
     SubscriptBox["x", "i"], ",", 
     SubscriptBox["y", "i"]}], ")"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"123ab64b-7ce3-425f-bffa-41bce90f5e2b"],
 " to ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{
     SubscriptBox["x", "f"], ",", 
     SubscriptBox["y", "f"]}], ")"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"988224bc-43c9-427f-8d0f-f2a960d48f42"],
 "."
}], "Text",
 CellChangeTimes->{{3.5006539390118537`*^9, 3.500653953225274*^9}, {
  3.500654074195855*^9, 3.500654177844923*^9}, {3.500673523587734*^9, 
  3.500673606105177*^9}, {3.5006736562106595`*^9, 3.5006736664479628`*^9}, {
  3.500673712551327*^9, 3.5006737482723846`*^9}},
 TextJustification->1.,ExpressionUUID->"1259c48d-bbb0-42ed-8938-3b472f3eaee3"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Implementation", "Subsubsection",
 CellChangeTimes->{{3.500673750651455*^9, 
  3.5006737608317566`*^9}},ExpressionUUID->"54839cd8-c9b2-4caf-a148-\
c3cbde6e36ff"],

Cell[TextData[{
 "Letting ",
 Cell[BoxData[
  FormBox[
   RowBox[{"\[DifferentialD]", "s"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"7f190395-c931-49cc-8a5c-3240073efe3b"],
 " be the infinitesimal distance element and ",
 Cell[BoxData[
  FormBox["v", TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"7ac56e39-5858-4eae-a1c9-b1271bf799e1"],
 " be the travel speed,"
}], "Text",
 CellChangeTimes->{{3.5006539390118537`*^9, 3.500653953225274*^9}, {
  3.500654074195855*^9, 3.500654177844923*^9}, {3.500673523587734*^9, 
  3.500673606105177*^9}, {3.5006736562106595`*^9, 3.5006736664479628`*^9}, {
  3.500673712551327*^9, 3.5006737482723846`*^9}, {3.500673856771596*^9, 
  3.5006739189354362`*^9}},
 TextJustification->1.,ExpressionUUID->"0630103e-ff68-4322-a972-43d103bb95fa"],

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
    InterpretationBox[Cell[
     "(Assumption: bead starts at rest)",ExpressionUUID->
      "2517157b-4568-4293-92f6-59807454fa74"],
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
 TextAlignment->Center,ExpressionUUID->"25656580-e71a-4f8c-9384-afde1a781201"],

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
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"7b4cfcf3-964a-4576-8c2b-1503c08d1c74"],
 " and change ",
 Cell[BoxData[
  FormBox[
   RowBox[{"t", "\[Rule]", "y"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"10b96dfc-76d4-471b-8860-b3f837fe1482"],
 ", ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    OverscriptBox["x", "."], "\[Rule]", 
    RowBox[{"x", "'"}]}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"98544ce4-0cdb-42a4-8ba9-f77a2bf41958"],
 "."
}], "Text",
 CellChangeTimes->{{3.5006539390118537`*^9, 3.500653953225274*^9}, {
  3.500654074195855*^9, 3.500654177844923*^9}, {3.500673523587734*^9, 
  3.500673606105177*^9}, {3.5006736562106595`*^9, 3.5006736664479628`*^9}, {
  3.500673712551327*^9, 3.5006737482723846`*^9}, {3.500673856771596*^9, 
  3.5006739189354362`*^9}, {3.500674161911628*^9, 3.500674241256976*^9}},
 TextJustification->1.,ExpressionUUID->"c699b0e9-e7e4-4238-9d42-5be8b251860f"],

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
 TextAlignment->Center,ExpressionUUID->"32bc5824-61ff-4202-8d2f-a7aaf46a9b10"],

Cell["\<\
Squaring both sides and making a special choice for the constant gives\
\>", "Text",
 CellChangeTimes->{{3.5006539390118537`*^9, 3.500653953225274*^9}, {
  3.500654074195855*^9, 3.500654177844923*^9}, {3.500673523587734*^9, 
  3.500673606105177*^9}, {3.5006736562106595`*^9, 3.5006736664479628`*^9}, {
  3.500673712551327*^9, 3.5006737482723846`*^9}, {3.500673856771596*^9, 
  3.5006739189354362`*^9}, {3.500674161911628*^9, 3.500674241256976*^9}, {
  3.500674406015853*^9, 3.5006744338366766`*^9}},
 TextJustification->1.,ExpressionUUID->"fc7a548a-cb5e-4ff2-aa77-95349e4c794f"],

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
 TextAlignment->Center,ExpressionUUID->"cf7f6d7f-e62c-4a7b-bae4-980d12be69d9"],

Cell["To solve this, change variables:", "Text",
 CellChangeTimes->{{3.5006539390118537`*^9, 3.500653953225274*^9}, {
  3.500654074195855*^9, 3.500654177844923*^9}, {3.500673523587734*^9, 
  3.500673606105177*^9}, {3.5006736562106595`*^9, 3.5006736664479628`*^9}, {
  3.500673712551327*^9, 3.5006737482723846`*^9}, {3.500673856771596*^9, 
  3.5006739189354362`*^9}, {3.500674161911628*^9, 3.500674241256976*^9}, {
  3.500674406015853*^9, 3.5006744338366766`*^9}, {3.500674665329529*^9, 
  3.500674670733689*^9}},
 TextJustification->1.,ExpressionUUID->"176d4f70-93ef-4afa-8306-f9c018c50531"],

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
 TextAlignment->Center,ExpressionUUID->"c7d212bd-076a-4da7-865f-c9e2eb8a0284"],

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
  3.5006755786585627`*^9, 
  3.500675615525654*^9}},ExpressionUUID->"dfd5eb75-7997-452f-a30d-\
37868fc5807d"],

Cell[BoxData[
 RowBox[{
  SuperscriptBox["A", "2"], " ", 
  SuperscriptBox[
   RowBox[{"Sin", "[", "\[Theta]", "]"}], "2"]}]], "Output",
 CellChangeTimes->{{3.5006747586552916`*^9, 3.500674762899417*^9}, {
  3.5006755792285795`*^9, 
  3.500675615902665*^9}},ExpressionUUID->"75619821-7e44-4c4a-b33b-\
caaf26d5a75d"]
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
 TextAlignment->Center,ExpressionUUID->"9d777384-63ac-4341-b741-093a39e50066"],

Cell["Full solution: The brachistochrone is described by", "Text",
 CellChangeTimes->{{3.5006539390118537`*^9, 3.500653953225274*^9}, {
  3.500654074195855*^9, 3.500654177844923*^9}, {3.500673523587734*^9, 
  3.500673606105177*^9}, {3.5006736562106595`*^9, 3.5006736664479628`*^9}, {
  3.500673712551327*^9, 3.5006737482723846`*^9}, {3.500673856771596*^9, 
  3.5006739189354362`*^9}, {3.500674161911628*^9, 3.500674241256976*^9}, {
  3.500674406015853*^9, 3.5006744338366766`*^9}, {3.500674665329529*^9, 
  3.500674670733689*^9}, {3.5006749363195496`*^9, 3.5006749694895315`*^9}, {
  3.500695368286629*^9, 3.5006953686346397`*^9}},
 TextJustification->1.,ExpressionUUID->"7e1bdf9b-38b7-43c1-bdc5-6254d796e14a"],

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
 TextAlignment->Center,ExpressionUUID->"061e495a-a707-4652-8e3d-44dd4b69e430"],

Cell["There\[CloseCurlyQuote]s no analytic solution, but we can compute \
them.", "Text",
 CellChangeTimes->{{3.5006539390118537`*^9, 3.500653953225274*^9}, {
  3.500654074195855*^9, 3.500654177844923*^9}, {3.500673523587734*^9, 
  3.500673606105177*^9}, {3.5006736562106595`*^9, 3.5006736664479628`*^9}, {
  3.500673712551327*^9, 3.5006737482723846`*^9}, {3.500673856771596*^9, 
  3.5006739189354362`*^9}, {3.500674161911628*^9, 3.500674241256976*^9}, {
  3.500674406015853*^9, 3.5006744338366766`*^9}, {3.500674665329529*^9, 
  3.500674670733689*^9}, {3.5006749363195496`*^9, 3.5006749694895315`*^9}, {
  3.500675157476096*^9, 3.500675195925234*^9}, {3.5006754443265867`*^9, 
  3.500675457648981*^9}},
 TextJustification->1.,ExpressionUUID->"2f49a99e-e112-4cf7-8181-9d306e7ab623"],

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
    RowBox[{"n_", ":", "3"}], ",", 
    RowBox[{"nMaxIterations_", ":", 
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
   3.5007592941583753`*^9, 
   3.5007593066627455`*^9}},ExpressionUUID->"11b10d04-ab34-4730-9d8f-\
d0e42a448ce6"],

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
    257., {50., 53.45976345423885}}, Typeset`update$$ = 0, Typeset`initDone$$,
     Typeset`skipInitDone$$ = True}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`xf$$ = 4, $CellContext`xmax$$ = 
        2 Pi, $CellContext`yf$$ = -2, $CellContext`ymax$$ = -2.5}, 
      "ControllerVariables" :> {}, 
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
     ImageSizeCache->{459., {72.93870856337249, 77.06129143662751}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{{3.5007583522064943`*^9, 3.5007583801443214`*^9}, 
   3.5007587379919133`*^9, 3.5007587975336757`*^9, 3.5007589743819103`*^9, 
   3.5007590080419064`*^9, 3.50075913078854*^9, {3.500759173787812*^9, 
   3.500759199545575*^9}, 3.5007592391627474`*^9, {3.5007592947863936`*^9, 
   3.500759307571772*^9}, 
   3.904524577488283*^9},ExpressionUUID->"74e0f096-4b5c-41b1-855d-\
d2a2b992c1fa"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Classic Problem: Catenary", "Section",
 CellChangeTimes->{{3.5006734704251604`*^9, 3.500673531351964*^9}, 
   3.500678571330143*^9, {3.5006786379991164`*^9, 
   3.500678639358156*^9}},ExpressionUUID->"b2dfaa61-8f5c-4c13-aff8-\
0341ea6dddc5"],

Cell[CellGroupData[{

Cell["Problem", "Subsection",
 CellChangeTimes->{{3.500654268050593*^9, 3.5006542794169292`*^9}},
 TextJustification->1.,ExpressionUUID->"62a37576-119d-4381-9196-d3cfcc1f34a5"],

Cell[TextData[{
 "Suppose we have a rope of length ",
 Cell[BoxData[
  FormBox["l", TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"71873aec-c59d-4779-93a6-60c6272bdab2"],
 " and linear mass density ",
 Cell[BoxData[
  FormBox["\[Lambda]", TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"e05929b1-f34e-4032-8aad-e35a37226712"],
 ".  Suppose we fix its ends at points ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{
     SubscriptBox["x", "0"], ",", 
     SubscriptBox["y", "0"]}], ")"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"aa8f4150-ffa1-4d83-89d1-7af8b20d02c1"],
 " and ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{
     SubscriptBox["x", "f"], ",", 
     SubscriptBox["y", "f"]}], ")"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"e66e99c0-bc53-45e7-9b10-9b7a5a883a01"],
 ".  What shape does the rope make, hanging under the influence of gravity?"
}], "Text",
 CellChangeTimes->{{3.5006539390118537`*^9, 3.500653953225274*^9}, {
  3.500654074195855*^9, 3.500654177844923*^9}, {3.500673523587734*^9, 
  3.500673606105177*^9}, {3.500678652082533*^9, 3.5006787373450565`*^9}, {
  3.500678802012971*^9, 3.5006788233496027`*^9}, {3.5006792647386675`*^9, 
  3.500679283283216*^9}},
 TextJustification->1.,ExpressionUUID->"a61824f2-f4d2-43ec-8c1c-a2014154e959"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Solution", "Subsection",
 CellChangeTimes->{{3.5006542826410246`*^9, 3.5006542901622477`*^9}},
 TextJustification->1.,ExpressionUUID->"e5d805ca-605d-4238-a32f-c6eca7f01761"],

Cell[CellGroupData[{

Cell["Idea", "Subsubsection",
 CellChangeTimes->{{3.500673701961014*^9, 
  3.500673709627241*^9}},ExpressionUUID->"4cc2859a-ebbc-461e-ba36-\
54e776f0e13d"],

Cell[TextData[{
 "Calculate the potential energy of the rope as a function of the curve, ",
 Cell[BoxData[
  FormBox[
   RowBox[{"y", "(", "x", ")"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"18f6cc49-ae5a-4e8b-a16a-3159b299729e"],
 ", and minimize this quantity using the Euler-Lagrange equations."
}], "Text",
 CellChangeTimes->{{3.5006539390118537`*^9, 3.500653953225274*^9}, {
  3.500654074195855*^9, 3.500654177844923*^9}, {3.500673523587734*^9, 
  3.500673606105177*^9}, {3.5006736562106595`*^9, 3.5006736664479628`*^9}, {
  3.500673712551327*^9, 3.5006737482723846`*^9}, {3.5006787458933096`*^9, 
  3.5006787553005886`*^9}, {3.500679156427461*^9, 3.5006792006107693`*^9}},
 TextJustification->1.,ExpressionUUID->"3d801e0b-7430-4f03-a59f-a57686d937c0"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Implementation", "Subsubsection",
 CellChangeTimes->{{3.500673750651455*^9, 
  3.5006737608317566`*^9}},ExpressionUUID->"2d2d8cf8-b26a-4297-b45b-\
606131fc470e"],

Cell[TextData[{
 "Suppose we have curve parameterized by ",
 Cell[BoxData[
  FormBox["t", TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"8d4168cc-0e25-430e-bd05-40c53f19fc43"],
 ", ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{
     RowBox[{"x", "(", "t", ")"}], ",", " ", 
     RowBox[{"y", "(", "t", ")"}]}], ")"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"6d2fc2a2-8321-4179-96d4-2aa9ad154a6c"],
 ".  The potential energy associated with this curve is"
}], "Text",
 CellChangeTimes->{{3.5006539390118537`*^9, 3.500653953225274*^9}, {
  3.500654074195855*^9, 3.500654177844923*^9}, {3.500673523587734*^9, 
  3.500673606105177*^9}, {3.5006736562106595`*^9, 3.5006736664479628`*^9}, {
  3.500673712551327*^9, 3.5006737482723846`*^9}, {3.500673856771596*^9, 
  3.5006739189354362`*^9}, {3.500678901671921*^9, 3.5006789082621155`*^9}, {
  3.500679072494977*^9, 3.500679092694575*^9}, {3.500679205896926*^9, 
  3.500679247173147*^9}, {3.5006793994226537`*^9, 3.500679418269212*^9}},
 TextJustification->1.,ExpressionUUID->"da90239c-48bd-43ab-af03-5ef050d97dda"],

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
 TextAlignment->Center,ExpressionUUID->"173db5e4-7525-4926-aef1-50f7d37bc9ef"],

Cell[TextData[{
 "Note that if we choose to factor ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    TagBox["\[DifferentialD]",
     Dt], "s"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"75fee7d6-9b63-422e-9bd1-69a224125db0"],
 " the other way (for ",
 Cell[BoxData[
  FormBox[
   RowBox[{"y", "'"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"bdd8e42b-007a-4a97-9604-faf282635f0c"],
 "), we get a mess."
}], "Text",
 CellChangeTimes->{{3.500690969301423*^9, 
  3.500691015743798*^9}},ExpressionUUID->"f566b8a9-7ff3-459e-9e60-\
98ad738c423e"],

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
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"bfa41a94-a55c-4100-b04f-53427dc79c76"],
 " and change ",
 Cell[BoxData[
  FormBox[
   RowBox[{"t", "\[Rule]", "y"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"1e242658-f968-4365-9aae-09b27fc0c4aa"],
 ", ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    OverscriptBox["x", "."], "\[Rule]", 
    RowBox[{"x", "'"}]}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"fcb9cbdb-7a50-4ef5-87e0-417389d4b71f"],
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
 TextJustification->1.,ExpressionUUID->"69e149b5-7592-41f5-b912-16c9e5d36b5d"],

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
 TextAlignment->Center,ExpressionUUID->"1e5e1e24-5444-45af-8b23-212acab37623"],

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
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"cfbf5325-afe0-4573-9b03-5b95de67df49"],
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
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"8c097db6-600e-4179-a31e-1a50f03829a1"],
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
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"cf885b18-8068-4c6a-a9d6-4c709aa1edac"],
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
 TextJustification->1.,ExpressionUUID->"eccff35e-d9b0-423b-8d64-a0fd80e2f8b0"],

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
 TextAlignment->Center,ExpressionUUID->"5026b29d-1feb-478f-8853-074f9226e06f"],

Cell["Using the fact that", "Text",
 CellChangeTimes->{{3.5006897256666126`*^9, 3.50068975260141*^9}, {
  3.5006898936845856`*^9, 
  3.5006899330597515`*^9}},ExpressionUUID->"3b46f2a4-c33e-40d6-901e-\
69676accdc6f"],

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
 TextAlignment->Center,ExpressionUUID->"06c29200-b4ef-4c21-9115-034d1a1a5c8e"],

Cell[TextData[{
 "integration of ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "'"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"b4bf86db-f349-48e8-b3d0-5d6866b09024"],
 " gives"
}], "Text",
 CellChangeTimes->{{3.5006899599395466`*^9, 3.5006899839962587`*^9}, {
  3.5006900396459064`*^9, 3.5006900399519153`*^9}, {3.5006968562886724`*^9, 
  3.500696856896691*^9}},ExpressionUUID->"6fe65f4e-a006-4f55-bdcf-\
a212ba9b3ecc"],

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
 TextAlignment->Center,ExpressionUUID->"78be5683-fedd-40ec-a683-c101d8623442"],

Cell[TextData[{
 "where ",
 Cell[BoxData[
  FormBox["b", TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"8e10dad9-2830-489c-bc00-63cc404f6d71"],
 " is a constant of integration."
}], "Text",
 CellChangeTimes->{{3.5006968582377305`*^9, 
  3.5006968748282213`*^9}},ExpressionUUID->"d31b788e-0dbe-46f5-81e6-\
b24a80f73eec"],

Cell[TextData[{
 "Plotting this for ",
 Cell[BoxData[
  FormBox[
   RowBox[{"a", "=", "1"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"ce1eff33-5de9-4359-b13e-93c129cc92e1"],
 ", ",
 Cell[BoxData[
  FormBox[
   RowBox[{"b", "=", "0"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"869df72e-7e9a-44e3-83fa-6986f82575d4"],
 " gives:"
}], "Text",
 CellChangeTimes->{{3.5006968582377305`*^9, 3.5006968748282213`*^9}, {
  3.500697094747731*^9, 
  3.5006971192614565`*^9}},ExpressionUUID->"e08f4dd9-326b-4ee1-9cc3-\
8d8a908aa2a9"],

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
  3.5007549828936844`*^9, 
  3.500754993720005*^9}},ExpressionUUID->"995b9b61-4015-4721-bb34-\
370fef95f3c7"],

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
    Typeset`size$$ = {257., {73., 76.28336006983773}}, Typeset`update$$ = 0, 
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
     ImageSizeCache->{459., {95.93870856337249, 100.06129143662751`}},
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
   3.50075497935958*^9, 
   3.500754994052015*^9}},ExpressionUUID->"aac11421-1d8c-4305-89d3-\
7d73d464380a"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Problem: Bead on a Ring", "Section",
 CellChangeTimes->{{3.5006734704251604`*^9, 3.500673531351964*^9}, 
   3.500678571330143*^9, {3.5006786379991164`*^9, 3.500678639358156*^9}, {
   3.5006910355213833`*^9, 
   3.5006910420225754`*^9}},ExpressionUUID->"f7ef916e-51e5-4112-8a87-\
84fbe91a1040"],

Cell["From 8.033 Quiz #2", "Text",
 CellChangeTimes->{{3.5006911555499363`*^9, 
  3.5006911653902273`*^9}},ExpressionUUID->"956d9009-6933-4a61-a9c7-\
1ac5db0c4af6"],

Cell[CellGroupData[{

Cell["Problem", "Subsection",
 CellChangeTimes->{{3.500654268050593*^9, 3.5006542794169292`*^9}},
 TextJustification->1.,ExpressionUUID->"8a8ec052-3ad2-4cfa-aa4e-96f3d1cc92a1"],

Cell[BoxData[
 GraphicsBox[
  TagBox[RasterBox[CompressedData["
1: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
J6pGPeV0+uJMzIg5kShU9w6yY2Jpp1ONvZV2SsjHO9jAzkpUDadqLy5hi6P/
f5T2EUa1FwdW24fHOpxq7q20U0UhzwANbM9KVM2xhOqeOMsShJxHBKr/uGSg
HZ1OtfZW2ikhn++OeHcnqtb4VKxlCULyrbeCcOE+r6vaMYk0Pb6WsWu/bfvz
4O75eF+319zVYayzE9fetz6zlXW83N7bc+pHO9ii/HT7l9b9S/v/zvR3Dn54
n7vmbNHXvSG92ms7WHsPb3zCf4/max/4ZpxqdTgyAm673+FUd6Jqj6O/FqP1
EzN46wR9we6aUwVddm8wQpPr7jlaf+chdt2RupdvvfNxPiLba7MzTse+s9q+
5t7uV2uFY4k/sXD6jx1zjqxtDwmfXePK7ZQLzO/aVA9e/Khd+8EKf/fpXYvM
2vTeUV/v6sEvHHWPvPGOAsgLGKHqbJe6ElVgvs9p/SIOKIi6g7LTPXWOsPr0
nwfH+0+t99ps5zXv67h/Pk4S6uFU174DnHrsoaP1E1u8CdDz2738PbE0MIp1
buPCBx/27HQtn1rl5s3qTvZ777njE2Ou+Oe3eWm/Nv4bk97+bFOMLtBQWALG
Cjud6kpUE0vZsoYQ7oDCtZGGw0Vdqehmnw32a9lgdGoHvNzlnom3Mcip7n37
OzXyuPse/t86tORN/4eeMj4zW/2s5RyQ87/v/LaAzuc2+u75302t3ue98xMx
1nwMi4D1w131c0ei8tajP9r42B9bydii3OHh3yEjZnFh3W2gRx78Qses5NSq
hjVOKnCzyiCnuvcd1PbVmy+76zUatHee2brQc6V+aHTsleYP/bdu/7Jr0aHR
5i+LK/tz/C8N6HIqkKha1834nyF3OJ1FWOxZETfZVz0YiKHHxNJGsBqpYJBT
3fuGcmpma48M03Lq+LJGi1h77ckljTwVzIHjjf1EUuK/hqq7n09+rV9B4MSM
0wJ1DnkcHmtaMz6nU937hnLq7JpBTp1d4znl9AzX/fNz/lDf+KibA5121qmn
ak8k4JSAxq/bKfKLksU1ffXqt766tnNJzuGxZuk87lWGg53q3DeUU836qIOA
U+6uR9Ze+2Kt+dbTe8fuPen0At0eYe2AuNq8Df+hnVnjkcSJSmDTVyvumXZK
quDSwalVzaiNexuD66nOfcPWUxsaEr/60+aeLaemVjlyHlvpdZgbb10/8fAD
rfGpQ6PNvvS7/0H0P2FuStx7frOcIk5UApcNH3NSVHUPuzwwL+yE3O+4Vnd6
w2uHx7xvJ29uOBVMMt37znbK37vDKUcLvxdYP/eNVspx+n3NHuSm6WYyajg1
eVtgRMbR2J+cr/2DwItAuE+/zp43oU1UaTGPS3U49Tk3Wq3RJZ9jK/3x/6lV
XjqZWOr0Y6vf/fydXpzPrnFefOtbtd77NpvAJs29p1b5Wcjvujnvt+Ceo/X6
O4+0U56TBr2/cH6bk4Ycp7xepPPXflI4Ut0ZPDq33+O2i9NPZwW2gXneH/PZ
TpEmKhFDbD4ntniD0U4IOy7Dt1aMfPlkfeIuPx+4o2yM3Tq51Zud8QYCAjHu
3PfEFtZIQT6NvV0PXGOmd/kD6U7Ocwnu6ji14N6T9TNfu9JNmRNLF+Wnz+z5
jDfwfm5j6xYUjkve9d3N8XZhcC9HeszvUiYqYUun3BkRp03yp+mCZdI7T68I
TMedfsSdhZvZeu1B9ycntng5pte+zfm+QPPn7d18A3+kxX31jLmCLbg7eI8S
p57a+90VbOQR72/XSmvdGb3Jm73l10fWNqXyGtjO2T9BGJyHqHo4RZioKkzM
XR/kolWj92Ay1/DnzNc2i+/z+fCu0nutQ6FLVKaaq4ZjMsCpU/e3mtrjX0zK
qXqa7/hOL6foElVK1hWeXOnvVHVn68Lb6jeS+39TSHFtbHuul6NKVEUx11LL
htND3N37OiOn6lv3bbcerxYfirMaOyY23896T6eoEhXnHCsp7lLrPguiaj9Y
0ajQW3PziWByTVS91/XSJKqiotf1xaNxUeT23pnqzLN3uQMJTx/t+aoo+Caq
3k7RJKr5maaUgGui6nP9AUWimp9pSg24JqqgU7WJ3R9Ztv2lmTpNokKakhie
iSrg1Pn8xZ8sTfzZoi+56SV+okKakhk7xW8itu3UzJ6RT/9vvX5u98hnzhAk
KhtpSmo4fuTbTv3rxZd6C29P3rBwVzV+ouLbXQWxyXCbim05dfpm9vvelR+1
/ewX34ydqCrzcwhdISxuyxOaTtXGRxbu9zdff9+FD87ETVRZ3MJTdrJpTi1J
06npu1nzmpOpVWzFyZiJypL1vhugBbfxhKZTjki/9GN/8731vl4xEpWdxgNm
5KfA6QrxplNv/UJr+dnMVjZysB4rUeVTGEdQAIPPzROaTr28OOjUgse9t4wq
Rpnh+TIqwKkj1XRqnLHfaZRs1ccbM6BRE5XNr5sKSOHT+gWcWrbxdp9fb86q
R0xUaPmUweDR9ws4FcR3KlqisublInQ1sVMcZjsCTjWXtboXHTVW/0RJVHYK
fT51KHFIAE2nWo8U9Wr05nrqKImKSzoFvMinyEuq3mMJrWu+h09UJp7VpxYZ
8hzQdOrkCraksYb6vRvZ4pcaPx46UZUwjKAYdoq6l9506vym4NzMB99uvj5k
oirzqPkAV8qMeClVaw75ABv5G3/zvy8N3BZpuERlZzIoppSjSFynt9a6vP2r
bP1Zd6O6hy0K3G9gqESVwaIpFcnTLntpOVXdv/CSF9yN46sv+OzZ9g7DJKoc
fR8CiIA2cO11nvZ97Ibj9fq5B9hHOy4+C5+oiHUH4jAopQpc43B6x8LVz75w
xwXrJjr2CJ2oqJtlIA47QyhV8Fqs6qs7PvTzW77zXtcuIRMVlFIZyt5ViGdW
hUtURYZRBJUhlCrMc9DCJCoopTqOVETLScI4FSJRQSn1IaupQj2vcc5EBaV0
gEqqUE7NlagKDBfz6YAjFcXlTuGeKzs4UeXQ49MFklCGc2pQorKzUEof8gQT
yiGff90/UZGOloHEKbJs3DGFkE71TVTlVAZKaUX8iIZ0ql+iKjIDKxE0o5KJ
+Yi/sE71TFR2jno5F5CBPMvFyRRhneqVqMqZFBYiaEkpVvsX2inrsafuv+X+
ZwL+FlJUg/lANipGjCHH0E7tXepdTHrNU43v7TjvCqTHZJFTVVinvri8cYXy
8i973xdTadxhSmvKmahJI6RT/7asddn7Zd/3UmMe/T3dMSPmjZBOXRO4l8Jv
Rn4zoBZO6shGKJnDOVVeHnDqV27C/V/nC6V0yhy6QQo539dx05f70d2bP5ip
1LBXlkdxCu3efMI2WXq4cfUITi3HBN/8opJzrBqiBQxZo18XcOqaaEcG1KWS
Sw1RV4V0Khdwam/UIwPqYpsplgtZ9IR0qnhFS6mbox8YUJlihmUKYZJVGKfK
+RR77Hf94YRlt2Gsc95SzqVYdu5lA3M6VSlkWNrV8/k7rlt93R2vkxwcUBS7
mGWpXGlwXhnslCtUKod+HmjjasWyhQFjlAOcsvKuUFghBbqxi04jmM4V+ySb
Pk5ZpsFYJo/RTdCHciGbYinDLM1OWLOdsopOfnItxAwMGEy5mHNSDzOyZsEK
5KzAPc0sy8wbaebJh84dCEm5ZOaMlDsmkDIccqbJTDPrbnoDBRkjX7CgE4hA
xbIKpunZxDyzTLNkoXYCNIRejw5ASOAUoAZOAWrgFKAGTgFq4BSgBk4BauAU
oAZOAWrgFKAGTgFq4BSgBk4BauAUoAZOAWrgFKAGTgFq4BSgBk4BauAUoAZO
AWrgFKAGTgFq4BSgBk4BauAUoAZOAWrgFKAGTgFq4BSgBk4BauAUoAZOAWrg
FKAGTgFq4BSgBk4BauAUoAZOAWrgFKAGTgFq4BSgBk4BauAUoAZOAWrgFKAG
TgFq4BSgBk4BauAUoAZOAWrgFKAGTgFq4BSgBk4BauAUoAZOAWrgFKAGTgFq
4BSgBk4BauAUoAZOAWrgFKAGTgFq4BSgBk4BauAUoAZOAWrgFKAGTgFq4BSg
Bk4BauAUoAZOAWrgFKAGTgEAAAAAAAAAAAAAAAAAAAAAAABa8P9YHNy0
    "], {{0, 415}, {596, 0}}, {0, 255},
    ColorFunction->GrayLevel],
   BoxForm`ImageTag["Byte", ColorSpace -> "Grayscale", Interleaving -> None],
   Selectable->False],
  BaseStyle->"ImageGraphics",
  ImageSizeRaw->{596, 415},
  PlotRange->{{0, 596}, {0, 415}}]], "Input",
 CellChangeTimes->{3.5006942344410686`*^9},
 TextAlignment->Center,ExpressionUUID->"fd38e15d-0fc2-4668-a7d7-3ef099426f3b"],

Cell[TextData[{
 "A bead of mass ",
 Cell[BoxData[
  FormBox["m", TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"a8f2f345-6336-457d-856d-d0f984cac8f4"],
 " slides without friction on a circular hoop of radius ",
 Cell[BoxData[
  FormBox["R", TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"38f62982-d56f-49c8-b2fd-88a9e3340f45"],
 ". The angle ",
 Cell[BoxData[
  FormBox["\[Theta]", TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"c478bf6e-8ec7-45bd-b63e-3e6ef98be494"],
 " is defined so that when the bead is at the bottom of the hoop, ",
 Cell[BoxData[
  FormBox[
   RowBox[{"\[Theta]", "=", "0"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"f039b606-4160-4072-b6e2-16fa28262540"],
 ". The hoop is spun about its vertical axis with angular velocity ",
 Cell[BoxData[
  FormBox["\[Omega]", TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"906391ac-6070-4ee8-97a5-712abaac55c5"],
 ". Gravity acts downward with acceleration ",
 Cell[BoxData[
  FormBox["g", TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"2d859711-ad5c-4886-a22a-649d54e25d76"],
 ".\nFind an equation describing how ",
 Cell[BoxData[
  FormBox["\[Theta]", TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"e8f6a34d-d247-4d48-8da9-fec163ebc3bb"],
 " evolves with time.\nFind the minimum value of ",
 Cell[BoxData[
  FormBox["\[Omega]", TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"e890ef96-921c-4e18-bc76-da0ebb4016f3"],
 " for the bead to be in equilibrium at some value of ",
 Cell[BoxData[
  FormBox["\[Theta]", TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"28d41b46-70e2-49eb-bad0-45dfc6487d4b"],
 " other than zero.\n(\[OpenCurlyDoubleQuote]equilibrium\
\[CloseCurlyDoubleQuote] means that ",
 Cell[BoxData[
  FormBox[
   OverscriptBox["\[Theta]", "."], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"073076ba-bd61-48c9-8520-ffe9454423ef"],
 " and ",
 Cell[BoxData[
  FormBox[
   OverscriptBox["\[Theta]", "\[DoubleDot]"], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"a8d2a49b-da94-4435-a84e-d6a6ca543954"],
 " are both zero.) How large must ",
 Cell[BoxData[
  FormBox["\[Omega]", TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"d8556c43-1d1e-4a91-9254-4996a53f73f1"],
 " be in order to make ",
 Cell[BoxData[
  FormBox[
   RowBox[{"\[Theta]", "=", 
    RowBox[{"\[Pi]", "/", "2"}]}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"82e81c87-4860-4f5e-aef6-d424f9c6d7e8"],
 "?"
}], "Text",
 CellChangeTimes->{{3.5006539390118537`*^9, 3.500653953225274*^9}, {
  3.500654074195855*^9, 3.500654177844923*^9}, {3.500673523587734*^9, 
  3.500673606105177*^9}, {3.500678652082533*^9, 3.5006787373450565`*^9}, {
  3.500678802012971*^9, 3.5006788233496027`*^9}, {3.5006792647386675`*^9, 
  3.500679283283216*^9}, {3.5006910450886664`*^9, 3.5006911121506515`*^9}, {
  3.500691176256549*^9, 3.500691321021834*^9}, {3.5006913880728188`*^9, 
  3.500691412359537*^9}},
 TextJustification->1.,ExpressionUUID->"6c60a9c1-cb67-429c-8b60-55c25f9e353e"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Solution", "Subsection",
 CellChangeTimes->{{3.5006542826410246`*^9, 3.5006542901622477`*^9}},
 TextJustification->1.,ExpressionUUID->"99a8b232-0715-4794-af61-e45e32ca8314"],

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
 TextJustification->1.,ExpressionUUID->"41437e2b-6bd6-42a3-94f0-dc7daa4d2307"],

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
 CellChangeTimes->{{3.500691859015758*^9, 
  3.500691909160242*^9}},ExpressionUUID->"80a8b578-8ce7-483c-95a5-\
c3efe0ac1c74"],

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
 CellChangeTimes->{{3.500691902896057*^9, 
  3.5006919094612513`*^9}},ExpressionUUID->"4913c9c0-5669-428e-a8fc-\
60cd1211c5d0"]
}, Open  ]],

Cell[TextData[{
 "Converting to polar coordinates, and using the constraints that ",
 Cell[BoxData[
  FormBox[
   RowBox[{"\[Phi]", "=", 
    RowBox[{"\[Omega]", " ", "t"}]}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"231c32a8-7d9e-4355-b5d2-2e94f93aa14f"],
 " and ",
 Cell[BoxData[
  FormBox[
   RowBox[{"r", "=", "R"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"c652bfc4-7b79-4400-bc9b-62bae77dd8bd"],
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
 TextJustification->1.,ExpressionUUID->"22a3e8be-fe1f-43e0-8355-b06deed88544"],

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
 TextAlignment->Center,ExpressionUUID->"1dac2f2f-1a26-4fc8-9a3d-e4ed0b809c10"],

Cell["gives", "Text",
 CellChangeTimes->{{3.5006930062387147`*^9, 
  3.500693011595873*^9}},ExpressionUUID->"d59b5221-29dc-46b1-a2c9-\
e726afeb1c78"],

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
  3.5006930229562097`*^9}},ExpressionUUID->"6671ee2d-9202-4131-b1cc-\
d6a45fbf4663"],

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
   3.5006930238682365`*^9},ExpressionUUID->"ee27ba31-c5cc-45ed-a739-\
81f65dc665d3"],

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
   3.5006930240352416`*^9},ExpressionUUID->"022b1236-2ae8-4bcc-96f6-\
13bbf3abb9c9"],

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
   3.5006930240622425`*^9},ExpressionUUID->"6f58ab8e-bd4a-4061-9809-\
78b06c1f7c6a"]
}, Open  ]],

Cell[TextData[{
 "Finding the minimum value of ",
 Cell[BoxData[
  FormBox["\[Omega]", TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"db48d33e-10e8-49bd-aff2-cff619890d5a"],
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
 TextJustification->1.,ExpressionUUID->"c43512bb-e304-4758-9c35-07869adf9bc7"],

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
  3.5006931330664687`*^9}},ExpressionUUID->"a1b6852b-8131-403d-9e93-\
2a612b970384"],

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
  3.500693050075012*^9, 
  3.5006931332614746`*^9}},ExpressionUUID->"7b833ce1-96ed-4da3-a24c-\
348eaf4365f1"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{"cos", "(", "\[Theta]", ")"}], "\[LongEqual]", 
   FractionBox["g", 
    RowBox[{"R", " ", 
     SuperscriptBox["\[Omega]", "2"]}]]}], TraditionalForm]], "Output",
 CellChangeTimes->{{3.500692817941141*^9, 3.5006928244373336`*^9}, {
  3.500693050075012*^9, 
  3.500693133288475*^9}},ExpressionUUID->"b11419db-322b-461f-b243-\
35119a743402"]
}, Open  ]],

Cell["In order for this to have a solution, we must have ", "Text",
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
 TextJustification->1.,ExpressionUUID->"06ff1aeb-9ff0-400f-8a49-7b442221d0f2"],

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
 TextAlignment->Center,ExpressionUUID->"af11b59e-8c71-4cbf-b981-5740071c4831"],

Cell[TextData[{
 "If ",
 Cell[BoxData[
  FormBox[
   RowBox[{"\[Theta]", "=", 
    RowBox[{"\[Pi]", "/", "2"}]}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"f25373ed-2853-4ad1-8aa6-ba39edaba99a"],
 ", then ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"cos", "(", "\[Theta]", ")"}], "=", "0"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"38a436d7-05e7-4e41-842a-9263ad23e2bf"],
 ", so ",
 Cell[BoxData[
  FormBox[
   RowBox[{"\[Omega]", "=", "\[Infinity]"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"d8473470-b030-4e68-966f-929d41f88a46"],
 "."
}], "Text",
 CellChangeTimes->{{3.5006931923172226`*^9, 
  3.5006932644393573`*^9}},ExpressionUUID->"d8d39078-ff1f-4a45-9b40-\
88ba8d0218b9"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Problem 11.8: K & K 8.12", "Section",
 CellChangeTimes->{{3.500672057391336*^9, 3.5006720648705573`*^9}, {
  3.500693517132837*^9, 
  3.5006935275611453`*^9}},ExpressionUUID->"21b9350f-4932-4e24-986a-\
148582c3b16d"],

Cell[CellGroupData[{

Cell["Problem", "Subsection",
 CellChangeTimes->{{3.500654268050593*^9, 3.5006542794169292`*^9}},
 TextJustification->1.,ExpressionUUID->"d3524eb6-f7f6-4457-b71a-1ec0e0cc39ea"],

Cell[TextData[{
 "A pendulum is rigidly fixed to an axle held by two supports so that it can \
only swing in a plane perpendicular to the axle. The pendulum consists of a \
mass ",
 Cell[BoxData[
  FormBox["m", TraditionalForm]],
  CellChangeTimes->{3.5006541640755157`*^9},ExpressionUUID->
  "4c9afb30-2e8e-42fb-81f2-bbab79416d14"],
 " attached to a massless rod of length ",
 Cell[BoxData[
  FormBox["l", TraditionalForm]],
  CellChangeTimes->{3.5006541640755157`*^9},ExpressionUUID->
  "9fe7a5e7-5be2-4fc2-b82e-09678442ff26"],
 ". The supports are mounted on a platform which rotates with constant \
angular velocity ",
 Cell[BoxData[
  FormBox["\[CapitalOmega]", TraditionalForm]],
  CellChangeTimes->{3.5006541640755157`*^9},ExpressionUUID->
  "798f70f9-9268-4e4a-bdc7-266c18a772da"],
 ". Find the pendulum\[CloseCurlyQuote]s frequency assuming the amplitude is \
small."
}], "Text",
 CellChangeTimes->{{3.5006539390118537`*^9, 3.500653953225274*^9}, {
  3.500654074195855*^9, 3.500654177844923*^9}, {3.5006935366904154`*^9, 
  3.5006935577760396`*^9}, {3.5006935961491756`*^9, 3.500693656514962*^9}},
 TextJustification->1.,ExpressionUUID->"b9b39d29-3c1d-424b-a425-007a728411dd"],

Cell[BoxData[
 GraphicsBox[
  TagBox[RasterBox[CompressedData["
1:eJztncuOJEtyWBPihkv9gv6CWy61pcAPIKHhQJshMBRAaKMf1keU7nRXZcbD
3cPMn2bm5yxuV1eGR9jrpEdm1q3+b//67//0b//l9Xr9x9//8Z9/+pf//Me/
/vVf/s//+K9//OWf//If/+vPf/nT//zvf/nff/rzn/76D//6t8P+7x//+X9/
93p9AcAf4ALADvyx/eE6QHxeuA6wA6gOsAWoDrAFqA6wBagOsAWoDrAHqA6w
A+zqAFuA6gB7MED114snEABrdJbydaTjeQGgjV5OvlJ0OC8AdKGPkknRUR3A
Do1K5gXHdQBLNGy/D1s5qgNYokp1yd06qgNYQqu69FU5N/AAppAo+Xlc+sYb
78sBGEOg5OcAneiYDmCHZycPRzw4LHwmAID5qFT/EmuO6AC20KmefRzJAYyT
kvP0PcUtO6ID2OVq59XZtMBIDuCVtLkJixOa4zmABwru3v+C4gDuSG3QZ4M/
f8VzAJ9IbsQzpk+PFQD05Pby8s+y4zmAK2SOHw+eGBwAtCLfyg8frKM6gCc0
O/npcVQH8IFyL78egekA5hE7njz2/e2JEQOACsVWXv7FzqgOYBf5Xv70/6UV
lwLAIhSOy3Z9VAewhvyGPXV06bAx8QKAkqb79bLLmA5ghJat/NFiNnWA5Qzc
y0/rOoYMAFoU7lZJ/lnZKWAA0KDan2s38+PyHkEDgI6mvbzuX2ZrjBgAFDQZ
XisspgNMReNuH8kPp6peDgBSNNtzr638csa2UwDAMxp3e92yX09ZcxIAELHo
fv3rdMvO3TvAWFQ34p1v2fmXVAHGo3G872aeO3GncwLAhybRx8TR8awAYGEv
T15kwLkB9iS1k096A+4xqkEnB9iMJscHi4jqAH1o83xKeMMvAhAZi/fr6UtP
uxhANFKaG/T8C9UBammRfGqgnxgWXBbANcnN3LLovC0HoMbHDXsympUBADgh
vZOL/xGlydEmI1odA4B5Gm7XjQhmJxIAi2j2cvGevwJTwQDYokXy2bE+YTEm
gMXktvKkLKb38g9GwwJYh8JdF5L/xnRwAFMJuJd/MB8gwCQa9vKpcVbiJU6A
USi2cn97+QdHoQL0Ryx58uCZkbbiLV6ALmi28p7/itI6/EUM0IxKXN+Gv3Ec
OoCS3FaeliDCVn7AdfAAClTmBnL8mwg5ABTROK7Y9Z0RIwuADEpxAyr+Q7B0
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
FGB6IVZJH6rjsejTmtV7iV1Wqf6wxw+96rCTQwttrUHvJw7b+uowplhP/81S
2xr2cRkH1RdXZk7H1ucJGfStwXANdlQ/MFB6U3nCEVVr2MrV/FTHWpFGddJa
nvBG1hr8rsao6m86K282T3hsDft4Iy+Dd/BnerbYcJq7U2oNjvfgp2T2S9dD
eSbELOnWsJX346duDuqXa7sibgdZ7kqiNSjeFUeqH6hV3leWW3FvDaJnaPj1
Esc/3VAlu7ss96Gg+pqAzFJbEreq/0YpvNMsdyB3A78kGNNUV+V7oeOqKmx3
nGV0aI2UVtXdlzq5v6f2iSXRwRO0Rkp9pYKo/osn2UMkGRNaI6VJ9TiuP9zN
x8gxJLRGCqofybkeKUfn8NqqFlS/kHQ9WI5OSb6PQmukNFQqpuq/YFe3R+Yt
U1ojpU11C7+KZhC8VrdD4Q1TWiOmpVKBt/ULG6Rol+ybpe9Hl4Tljg6qB93W
jzBPS3glSB2zIjZ/NKq+ybZ+yzB8xhZ41PznoNmB+QTVJVwzzE8e9OB5Mz8d
OjEyx6C6hLTq8fNehNjzrx2GrxdNldpW9S/pIIISjeXvBRPiCkCr6oE/bjtw
r5L8DhPkVBSV2ktpq9Qu23oiQcXLSRBRV00qL6VZ9S229WyV0L0XtXWk6lK6
qR663qX8kL2VpgJScymoLuExP2yvp612FFwKqkt4zo+tvYr2slFuKY2V+lkd
vN6yKqG7lg4Fo9RS2lXf4X05YZXOroeuSCvdKkWhpbRWao9tXVUldH+m33Mi
RRbTWChUTx+N7Fn6locSz+JwBx+44vrssD1H58pQ31mgemEJrl8YUBTKOwtU
f1qH729GlIPKTmOLF+v184Tr34wqxPaFnccW23pTcqe9LG6Niowrwb41nc8O
23rjPG3u+tDs9yzpGnbY1jvktq3tg5/ntqvnQlBdfo79XB+e9F7lXAuq686z
le7j092mlO102a6+/whb82657fSqfU6iGxSyE31ehZ7+DEjfedpD93mmBy5i
Tzq9Cj39GY/e8xTe9Wn5Ba5hb1BdwoB5imz7zNxCFnAInVQP/mp9RGZRXZ+c
V7j6DaO36jEHeFQ68ao1fQAC1W4wA1UP1IJhycQq1opsgpRuAl0qdXM81gQP
nqcwtVrS9QB1m8Rw1UP0YWweIWq1KgnnZZvIeNUjdGJ4Ft6Lta7bfms2mS7N
eTA9QCsmJOG5Witj91mxBfToT67RgWSfk4LXci2N21+5FtGhQaU+ex3eK5My
cFmutTF7q9Y62itVbrTL4b0zLwFvBVsdrqNSLaa5Us+N9jW6aSbG78p1A7E6
qZQBGisl6vTycWhmbvgGBBJhIs7V13dDY6eknV4/EW3Mjt6CQ4+YMB3VpbS1
St5pxUxYbN38eTJ/H28lwPUROKGpV5pOa58V8oevmK8F82RFpTR2gjMRhAem
qS4/+KB66fM7RZztLJknu7JbisxGFA5o6Zey2bp7+NzRa2ZszTxZMuqArajM
BGKdhpZp2605HtWPV7bj1d8wFpGdSIwzUXXNtR5VV1y2BwvnyZhZ5j4csBSL
bRpVH7MiP96LBm3tPBmyy1Ao39iKxjRNL9X1K+SfwqeOXTVpi+fJimBW4jhi
LZ6A1PS8VfVlN7PL58mEZCaCuGIuoHDUNb1N9fxuP5r187Res/URJDEYUjDq
ui5a9MopvbPqy9+fM2q6idbEZqzqybuG7FPAeGzM00rbjIpupTWRqauwZFxe
GdUXmm5mnlY+1VmpwQWjYQViierCM/THzDytcc6u6IZaE5YG1R/WHZR+3b69
8EdU5181yXzZDW/pX6ZaE5TKCler/lq5qduap8nmmRbdWGtCMkz1w+59OPJo
+u6qz7XPuOnWWhOQ+aonvjsNa/M0zz/rpptrjWEqCzVX9Reqn5n0+tn2y/Rf
GA/PELWVGqV6WuqfL1H9zQwJ7YtusjVGcaH6+6tVk2dxnsZ76MF0k62xSYvq
Iz5YT1n9/mrZ5Nmcp8EqehDdamss0qS6eqV4Uz8emvpqMkbnaeRLaRdb+pfZ
1hjEnuq3Q8+mo/qBca57Md1sa8xR3c95ql82+lUv1Y3O0yAl3ZiO6lIWqC58
/Kh60zXbsT32A6Ib+cKgN17iXI591Q8rVszf62V+7rvHZz3hE2sjdVao+p+h
0a5U3L8fHFun+ut1i8Jiazur6Un0pQ2xvwscaVRdufRpyd3r04LJZX2dOXxv
Xgwy+k6cyRSzLAo2MRvGaQhUn+TjipvXhkx/nb45LwwZHaMymV+eJdFeZ8ND
vear/vD45fTH4+fW9CZ4LiwbdIvKZHYFpod709xJwWaq/nh8SnXN+q6cLm9f
9V438TaTKzA53qToHgrWFKhy8fPhZdXnFvV8tfOXRpvbIzCzyWWZPxT+NP8b
bcHqVj8fXDZ7pepft8Asdrg9MLOp5ZkXsGfRvxrv11TZKjd1Y6oLH1pMa2R2
M8szJWLnlv+iLWZFzoIjL49fj1+hevJyhhvdFprhxPLMCDmA6J1UF5xActx9
E9eeoSfZ3Ey3uiU2y3nlWaL66AuOoDFwaeqyPb2k+vQip57JHTS7ITrTeWVZ
oProy42hNXRJ9ppjTi/WEw9bcX1aFGpq47OeV47Jqo++1Djaw38sgcr00qtj
O65PC6GGuhAdJJZmStg+Ol+mQ/hCS4UnebjE3GK70/wXNXF6ye3OnLi9VudI
hwxKGjgyJIVD0b+qvHWU3YVJcfssTncSPrhUJAzqmjtuktvAnZK600X0dWjL
7rhLfiN3CqLbQld5z21yHLpbEN0SmuK77pPn2N2C6JaQl993pwbE7rkcM0Fy
I4i74Ltd3YNnfsEZ4on1Pdido+d+FPwhnFjng903el56gkdEI+t9rruGz7tM
4BPJzHof647xR38/OWZW8DcEU+t+rvvFH9tz/0/qUOJxcv1Pdq8Egu/oX6ge
G1TXnMZ/MUrEzg4exjdA+7tkEH5H/wrRayiB6sJzRDc9Qq+hSKnDEbrfIYUt
TA/RbChRmuEIzW/PYQvRUX0D8mMcovnNOWxieoxuQ4nYqjfnsIvpIboNZXI9
DjHhrTlsYzqq70CmySF635jEPqbHaDc8kOxyjNZ3Ur1fQGbZJc+9QfXS6ghl
ELBNoluT6nKQzjelsZPpURoOZRJtDtL5Hqr3jMcw+2S6NfeRDjLjLa7uZTrs
wW2mowx5Qx5b3b7DLqB6ZmmIIgB8uE51lCmvzwPTISaXuY4y5agOcAbVEwtj
1ADgCKrf1wWpAcCJ02CHmfJG1bvHA7AcVL+tC1IDgBOn0Q4z5m2qdw8HwADH
4Q4z55XGsqlDZD7DHWfOm1TvHw6ABVC9fR2AA1D9vK57MAA2QPXTwt6hAFjh
owWqA0QG1QG24O1FHEHiZALQD1QH2AJUB9gCVAfYAlQH2AJUB9gCVAfYAlR/
rxkSDIARUP29JEb2AGlQ/WdFkOwB0ryHPM6wozrAHVR/L4mRPUCGnymPM+yo
DpAA1b9QHXYA1d9rYqQPkAbV32tipA+QBtXfa4LkD5DkpHqIWUd1gASo/lkU
I3+AJKj+WRSkAAAJXmfVI4x6XR5x8gdI8TPhgXa1JtUjFAAgAaqflsWoAMAd
VD+vC1EBgDtX1QNMeqPqASoAcAfVLwtDlADgxk11/4Nen0WYEgDcQPXb0gg1
ALiC6ve1EYoAcOaF6ve1IaoAcCKhuvspb0oiTBUAjrzOqsf4fehtOeA6RCSs
6i1J4DrE46Z6BNdRHeBKWnXnQ96cAqZDOO6qB9jW20X1XwOAE6+M6r7nvEMG
zisAcOYVV/XVMQBYIqm6f9fdJwDQmaPkqA4QlW8lrqq7V8V7/AB9OX+8dlXd
sSvOwwfozF316yNOcR4+QGfyqjuXpXf0vqsBcP507TzOrqe7c/DvDykAXPIq
qe76s+m+Yh4+kARwyGF632/EXx9eE1kzo1R3W5AteV1YHc86Lu+4X1X37Pqg
G3i/BdmRq+n7Nu9i+v3/VPdbnO59ZWCckdB83+YdE0+r7tf1/k3dflxcce3W
5s07pp1R3a3rQ3qK7V7INGnX3p1yzqnu9V34MR3FdR9kW7Rp7+6q3z5tux7l
h1ENPcvusDA7UGrPjp07J5xV3anr4/qJ7OYp9ma/vl0S/vlr7qZnamwdGNlP
ZDdOuTG7te2a7kH15LburTJDg7647q020Xnoym5Nu2ZbUN2l68NjRnarPPVk
s5bdkv35RrIIDmszPmJcN8pjS7Zq2T3Xo+q4rrqIv9rE5rEjW7XsnurxBj5R
BH/FmRMwptsD1Q8kMn1Q3Z/rs+J1V5jwoPqHVKLv7HNF8FaeaeH6KssGoPqb
ZKKPqntzfWm0jupkjteRmjYKVW+L0gXpRJ9Vd1ahd6wLnsM91ckarxzaU9Q/
HoVMnu/vFqrgqkTHfCbHXTWf8Jus6grxHw7ZpTOZPCWq+3D9ksd87Sr3IviF
UPViYctH7NKYXJoi1R1U6R3hXfVZcaumEi6geieyWZ5Ud+v6YQ7ecc5XTjmY
cKLd9Ich3qIhhSp9HigXwvLknubgnNBy1y3XzRYdTC/rvEMnSmW6mPF0kgHR
NXMeg1OUs02rn1GQuC47h/qhOJTKdHjkoRRWR/YyBucgVwTdNKsb0y76V0no
HcpfrJNcdaM/bHSdg3OEa0LG9Rp6mF5+U6pruAYpl+liiT/XLap+vDayS+kg
+ld2iHco/UOOV9W9u34Jb2nAuK6hj+mlnx/pGKxBHut0evixHhaH9TQO1+gs
xIvqAjqJ/pVxPX7hnwulU92k7IW5sBEsqj9Q9lxbsZzqvaI1iaBQ5wNcup4f
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
7fCb1YUA2JTf9r0+f5SFfD+EtXvw/wFsy4M5
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
 TextJustification->1.,ExpressionUUID->"a8b8c5ff-c06b-4eab-af14-402d170775c7"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Solution by torque", "Subsection",
 CellChangeTimes->{{3.5006542826410246`*^9, 3.5006542901622477`*^9}, {
  3.500693921408803*^9, 3.500693926751961*^9}, {3.500694269164096*^9, 
  3.5006942704991355`*^9}},
 TextJustification->1.,ExpressionUUID->"28a6b252-06b8-427c-9197-cf998f4bf31e"],

Cell["(From the problem set solutions)", "Text",
 CellChangeTimes->{{3.500694271794174*^9, 
  3.500694280417429*^9}},ExpressionUUID->"e2c006c6-1883-4076-8dbe-\
6792de5dc3c0"],

Cell[BoxData[
 GraphicsBox[
  TagBox[RasterBox[CompressedData["
1:eJzsved7VMe2/3lnXs3L+QPmzTwzz+/+5rnP/Z1gH9vHGJOjAZPBZJuck8nZ
NjmbjDE552SSscg5ChGFQAiUUOywQ+U1VbW7W61WBrW6Bft7jm1J3b337t6f
XrVW1aq1/u8fRrYf8L//x3/8x9j/Q/6r/fcTGowZ8/2kDv+n/KXTiLGDB47o
36/FiB/7D+w/5osf1NOW/W//8R9z5A/gypUrV65cuXLlypUrV65cuXLlypUr
V65cuXLlypUrV65cuXL1gUsUV5WeXIbKP3KlTvQ+T44Qp4RV7vWuYiaXQlex
l0uhq9jrA6Cw/KtxKawFcil0FXt9ABTygFwKa61cCl3FXi6FruJHlaKxcthV
7kWVOV8ZohgoBxL8zfBlZZsAhuaxxJEpwVQevmpncBUb1SYKgQNgn6TQf2vL
/LE/dO3QtXvPEfswY5LBEhy6FNYi1SoKbSpNIPe8uPJzl8Z1v/jXF/X/Xeff
Xc4gzEFw5lJYe1WrKFSOHv5zeaPmTYfN3nr44o1Lh88vaTDGsOXfOXUprL2q
VRTaYIpXAxqO33C2AKvf5Qi9s8Eil8Jar1pFYSFQSOn/7V2hALStfALJ37d4
7I7ItV61ikL19Pyt/e8AMbx6eH47t/UiNzqp/apNFGJAlEJyr5V5lGHAiFmb
6ozKJO5MTe1TpaioFEGVI6qMJ0X+SqiEjJZ1kYwJYDaXT8DUu7F3IqVYYGb8
0XnkJc4xptIcurawNik+KVS0FJZJIQ/+3QLsB+/YzYQiJoxtbQbkgw+YHpIj
5VIYz4pPCgmY4C/nRfzV7m1PufIFTYBfZ1vEMNGD7p0OcMCk9DU8l8J4VrxS
eDNTlPMifunbJgeompphnGwckM8IsJ1fz/VQf+C57ohcqxSfFALbfFoGGWW9
SLAn33XNZICxfArd1jlLDt4FY5ru59QEHSDLUdmlsBYpTikk25YKQGW+iOT8
2C9dYCTRAtjePh0sltim122CkJquZowS4lJYixSfFBJ+dpJVJoVMBsjTmm2S
6AExKWxolQYWudB8ggdMPU8jIcTYpfCDUTVg905ikDggH5WFLAGOTw9oekkw
22bgWdQrS75iw1dbwKMgZGD5ALKTORiM4+AxXAprr2JFIbCb/b2k7Dl0Cr61
X/a7KENkj3mj748+StHGOovky0xpPzEG74mfj6RheQDkUlj7FTMKya0Rajm4
jBMQweHl4saDTngAHv7cYbtAiJ1s2idRU0Y5OvHj92Mf2jKEJv6gf+hSWHsV
O1v4aBIrk0JsgN8CY0GzpiNWbhj8759eEIogbVKzQbuScrJSb+4Z2aTt8sdc
TWoXvQWXwtqrWFEoxJOxPrtMW6hmq+XQe3pm2y+/bDr+JmDpKrLsJU2+bNfr
27b16vY6mC5kvGIZAkRw3tClsPYqZraQPxic7S/bL1QY2uBNXD542OLrtgym
GeKQOOPbBvU/b/fd1D+y5QFMJii27WCeoUth7VXMKCRJYzxW2TEylYEHYAp2
gRp1kXzERgRe3Thx8nhiAeEImR4JqpBxijsi137FjEKcMkcavLJOQKXTJwMU
H1Y4YvCDAUIxBnpRTz6R6LU9+RxiuRR+oKoBCkXSARBFq3CgIhXOADNBSj63
MnIp/NAUfQoxf7DJKJovlG6e2tPO1CCs7VxlLsel8MNWDVDIilHIVAKD/DPB
qBSQXAo/SkWfQs4e7OJFyarSDOb6ODJyOcfE49pCV1AjfiG7vxdEKC8GmByG
8a1xsx6WBpJL4UepGqCQ390pihJVOfCczIQJnzS/IjEqUfXIpfCjVI1QuAkV
zdSYcL972y71uvZ+CgXIdEfkD04RBJX/axTk1VtHVEZWsbOIu9eIjoglN9Tk
/JdGnw/r1L3/c8glrIyrKv+7IRhl4FIYp4oxhZQCQRTLf0kQhV10WfduUhkp
g4xG1AzN0e+afbNvVqPej8EAy/suFAbqF7oUxqViTKEMPJQpVIsh4e6eEPfv
qRUQwSSJwno8s3WjKdlT6vT+M/mF5TffhUJGXArjVzGm0ALABRZYhjR7godt
QL7/UK/BKZmZAz9vPPQmGvJzj05DDxnYXyUKA6IYU3AVp4q1LRTw/KflPtCu
Yaguq/zznacKS/2LmTmr6diHcOnH3JPLNr5QHuQ7UIgRIq4hjFfFmELAIvm7
BnsvpNmAMAsNykLcfKZSEwIjsvfqY4Cf1xGGAYx8u0oUBqpdI9vGLoXxqhhT
aMiAZEPD8b/NOoOLnYZffQoYgtGJ/C+5PfKhAJ/FMaOlX1X5FNqW5VIYt4q1
LQQbTrRebN3J5kRwK/RXfvmpQBCcqaHcLtw52CJgyh8BvROFpulSGLeKMYUU
EE8f0vqOoASoCG0iBji2lwPTJxbS+Jn06qgTQlTqciIoVIvSlBAsR2Suy726
ij/FmEI9RXjz+563wERWEUEc9l9Ue0b0UyRErKDfNLBFpS7HpbD2KcYU8nzg
XnGm7dBXKoINpbVi2PUIWIhCgW+1OwZhKTblyaWw9inGFKq56nwwZjZbgv0Q
8vikS7gjM4xCjFassopKNZR/RJfC2qdYj8iqVxNid7+vl1JIiigksN0DPEQh
9fyYBzTMayz3kC6FtU4xphCp1RNE2OqvD8hQpSCIDocdJgURpBASpvCiq3Ep
/OAU6xFZAPMxRt7O7p9HjTDOdll2EYXpw7cxhF0KXVValWMloGAjT2x0m5HN
DMp1YXWpA9lqs6cpnUGKzfHdk1Wdrqqdv7gIspDbFPTj0TtRCPj4l+OzwCCq
ZqEPUTjkAYqkGSvIB2td12OU2KjCgxU/f3ExbGPm5tR8NHonCpGZN6fZj7c4
2HnKWWSw16NS+1XJo4z1/5pFVS5sJQkqnUJOdflhl8KPRFWiMPhkKhBf8UXz
yxYgP1UFrfcYihhfHlir2/Z5DlSCaVV8uPBDRohi4lL48eidKPRjGRKf7PDV
jMdCDscSlj2W0KHEq+VfDcgDU8YXVT1/hC0kyB2RPyJVicIi0XxgO+o3mvPM
VkMy3ZZvA/WBub1txz0GtxivrCksg0JsW7YbnXw8eicKscqztgouT2r+7chN
SR5hHiECfAWHBjQccE6oCUWJZiVnWUqn0DL8ppts/fHo3WwhEtTmDPzXlg1o
27rD2t+m3PjrxLzuDRr/mictI7eBVXKepiwK/V6vUelB3VVc6B1H1fc+IcMY
SNblXavn9Jw0ZMrc/VczsSC4avSUTiHFNlLlbqJ0/a6ioFhRqLs2qd/xEb+t
RmBOWFj3xaocKkLciZFd1SLFikL9I2WciX3yB8LIO5BTOoWCEeoawtqlmFEo
giUaNpvUoabKF+FS+KEoZhRyovrYIQt2AzV1VEurag7dEflDUSxHZNBzy9t0
A533OFQJU+jOWtc2xYpCdUKsSvbT5YYuWqMW80TVZptLp9CNkaOtiA884q/v
c8RqvMgqapWtSvmrZttVfWXpFAqK3MyuqOoDpJCvI1xvJXYprC36ACmkm4RK
7HIprD36ACkk2wFRl8LapA+Rwp2AuUthbdIHSCHdISgwl8JapA+QQr6NCLBd
CmuRPkAKxRYbwHAprEWqEjKlI1tjks4eU/PQgguu0mecqsGhy6CcEyxA2Ctt
gREhQi0sl6BH/hWTssrWlA6hyvh3V/CiqdpEoV6V45jZXP1kAFatY0Ob1QVg
VWUQA8yc88teAEuv4UUmuAYMpEthXKk2UchsoA5VvvQMUxJlcUZDC8ZM2T1G
Tfxn87mT+6zNZUI1e488BgeXwvhTbaJQIuTH8PbRurkd23Sc/GcBUEZRqKw6
V3bP4ih57FgTTrU5gcHHwS55EEEpRmW8BZfC2KhWUahqCOeu7t9q+JqDM75p
ehYJKuwiz4/7gVnwdvjsfQUWPjQlDRBAiZZj+omuLYwz1TIKGSQNqLf6TI79
dEHdqRmcQlhhdWFK42gfa3356Ik1j5O7JehqRyX2nRABftulML5UqygUcvh9
NPNnOQobkDKy9UNKgt119IPqx+xJm7J2/PjJvIkdd3iEWUqhLQvnJz3Mdil0
9a4SmABJu5ZjYy+3j3/xu9rtboQeBLXrc1O7C7Bjc+uDxrLvnoMflaieifzs
ToP6XS/bYBJdU4mHT+aUTqE7X+iqSJwhE1HjLcOWQPD438vU9pIiW6j64Vm/
/EjNfbe798mDH+cUgN9b0thfm16vR9fm8/KhQAJMVRI1C5X0cil0VZFsLpCl
qGHsxOLk1DpLLDVNE8JQzRbe6L0dMk4YW7/cBVu6JQpSwuWgsOd/NLmd+XOb
3teBKTuqZhzDeui5FLoqX2rahUkm/MzXrsHte19vY0AYDc1Lq1oy21vexs//
gNz+XVOzR9y0MBREUJiP33z96TXgJ9s1WZsNhEoTGtZA3qXQVUVyrB7xIP7o
X4tgZ4vLai0PhQDD0s1b0vYNPNwPbM+/7xl9LipfMYJCbsDs/5rjBUie9s+R
WdxHCKCiWkouha4qFpM0cEPAgSapvN/IdIHD99pRbpkzhxRCyiEmXjXYk9j7
NDJtFkEhgG/lf3Z+CuB5MPazxfJwmBOXQleVl/TgVKNi6f8tH5yyodsxbpEw
t1AlFeaMnYtJ6h8WkBk9Zg2/6aMlWtHKqHjyvxp2e6h+3NK3+105orOiOUWX
QlcVSXmAkkQE9Jff7nRelg+FqmpC0BgqB/HN4PXAHxyxASf37jzdDwRIBIW2
8LafuKPVrBRV9//J1EG3BBFFW95dCmufuJoz5jU4eU25DGeF4X/ww9iFNylS
1fdZUbNZSln2gKWI3j3Osd8//x+rDERRpC3E/EGTzXCq+ey3qBAM+iRTxjc8
cko6AkLO5KFr8n26qoJYzRoIAdIiMYQ8kPbDKwo5noc75u9ODzXAU6ldbHmj
LP+dU5xkj2/aq9kp8JaITojnfJvzAMc+XYXyGTHki0nJPvCRFKpqYO7iSfzJ
uTfyzpCaGKsUJtIi6Xk9gXKpMciyniZuXtin9YyHIQpNOcTCxWYHIf0oFB5o
N/X3xj+pNicRFJpG8oYMC9L7tX0J+eAt8MlXscjF5sgRWVLomsI4lLYPRA6R
tCb6V6tTcEoAI8ODwYarvUb2bNek/8q/7mXJmDdkCyWkhaM6njl7OvGn9iOf
p8/odF5NdBenkIG0pUzA/n+uh0I1511aNa4SjiEvMWi7igNpX0mAVdl2Nu8n
rrNjkO1VRsvOXNan4fD5Zx751C8iLApW6YQ3Jnfp1KbzwG0mwJX2k/yiZHN4
pyte1sgWl1TqF5Q21EYwqL5zrimMQ+n+cJlPKWGlJZJW+9kkAwzb8PpZ8tmF
/dq0Gj4TmMUF8plU8GB0osqoS6zyH+0cdjRDdd+xFndOKJHCxRimcnz1Q1LL
ISY3/BYDUVFqDZTyFFdxIEUhXj3fgsIaOZuiEFkbu/7t83rfjPnt0fOFFIEJ
qmg1DbU+BiIHWr90EG79DoibzICkjrNKSSQUptocQGFZy6Mm1WW9mEthbVDE
rcQ6V5TnNBnPfEBCczUl7nd1n//KsumbLr+hwA/uUElcpQCmiyRdPCf9Vaam
tDd3OC4DFB3TRB4yD3I6drewBJnTiny+kidyFQOVuA0UTAQX6w+0Ub4IeVZR
p9B69riAckFgzR7A/jIpvHBeUQiIwK3+M0CGzoSWcBsQeNnyltdAp69Wtl9t
tb8vV1VRKRQaImds2y//kL4+qTEKdfMcis30GfvAV7YtPHdRfjGYtHEIre54
CxBl3hIbQi3wwNPeU/2Eqokml8LaoIjbIP8rPbKDf/u9+9AMMHhgLi2K9ypw
ZCJjEbWQDC+ypWtXys52TaE4e1X9h4DIg+SRY01pB0tpQGbKJ+9odZSW3DZf
5uldCmOrSAqZvIlpferkb26+DSxOGQ97ThQpxPoLIKipiwWXZQvF6RtMqKU+
7qFwrutmSkrZfQI+iWbGkF55zgbSSp3epTC2irwNFLC5+stl4s3ovok2p1QZ
QxE5P1z959ehLah+Tkxvby+dQjhxW1UvBEqEH2B1m+syQCnRg4yDLeOS0w3/
wlxCXbnTuxTGViVvA7vRrcsrEx6Onp0hnX8FII8+hRD04AQp/aocCo/fIXoT
ikqogTfDJr01SjYFVdacg2fS1JfKtLp+YW1QxG2Qt5TubDwPSCY83mmY0sOv
GQr1pBAydEN4EcrZKkHhsbtYUigNoAk4B658fc0qKuAQLgv4hW+ucWGX+mjJ
07sUxlYRt4HJQPV5wgvAjnhAsb9XTox88B5QVddajeGU2Bt/sf1W5Lyz0L10
TGPylBxTVNS39sOlUJSuCh5+D1XHxYb+oBJpWGHgr3FGodh7X+WcOb4qpT6Y
cAg8KKKYIVO1XinB1lUfL9rSXOZhY/7OoqTaTKHa7YEoRxGPln+imriTzoi8
K1FVN9Sn4ox64XTnBNDfkrBnqu8MZwSDj1XE4EdIYfT1Phcb/J06myeL28AK
TvAep6/CdSoKtyUSHqgZJ1Tz7sJuw3Io4yXyYuSQjPwW9lbisDVw7TFRTQBX
qt7nYoO/S0dKED9ljiKeFfFaXlzv+HFV9jrVGTY9sEVwbZgz7oMDrVeqnfSR
JYaFpJDJYFrgCmYM3+eji2+VwQgv3b5Ug94Hg4jbwFSHL4Yh4oil3ysaUM1R
uCHJEjTw3VALO+T1qF5vqENhaOI9MF5jbgO2PtoYuTZTCL7CbC/YOOKvpd8r
ElDNUfhbkgFBCqWp4xYca/UzpcWMIXWyuYSMYiruHupSGFcUBoQ5mzbXR1W/
TUZomQuxuhqW4ZUjns7DUptASOj2v+vnVsF1qje4KoXaYdaNEKtg26dniMqr
qXCxzlW0JWRMiN4pMzqCQqCve4z3CKf3a5lizNS33X9v3/wfp61KKARs2qwG
KFyZwkgYhRQoT/yp5yMgJXY5uap5CZ2m/06vjKDQftRuurSBqpxgOWI0F5HX
e34ePGTczOmjv1uRKy0nqQEKf33ORVi5BWWS6ZOvFvjAp1JpXMVSwXH53V9b
NLiT592WAMNcrSDzMkdkCoXo5sQxmx4USuYs//KZCQYURJ9CviyFQ9geY6GG
Yjaj+SPIBVIzu7VclaV36IQUUqQthDfd5qoeOCqvoEy/UBmkJ9PHHMkAQF4L
4M6M5XfBjj6FeMlLDuH7UwWWMcjtFqukJ+GawhjrfTYzlqAwu/s07CS3lsM2
hgfLFr4EYVuEYyMVsvYuvVMD0YmxOI1CuM1T56Lm/G/+gvI9CFfRVzXaQspy
vp9OhckMs7xZDv+ruWtSwfADeAS/uzATfKdv1oAt9CxKJ2H7TJwzcUjsMSod
SA1sW3VVjhwj9u6vDbeF7O0P0+U4a756Y5Q9+4Hxb/M8kAWEJkzcdLTPD28p
L7BQ9CnMX5SBwygkOpKXo/HhFsuh4tU6V1FViVH1PV6LUnvNkfHmo457gZR4
NPSsp/1ug6Fqx3SfMKXx79nCNmQ4E30Ks38qDKtUHRIuHPXNPfARZrMK56nl
1em9zhxU/ZAKZ7VdVVnVQCEVqV0WcQvWTX7NCSqLQrb8OPP7E072+arh6GFt
thJiM9OsgfnCgoX+UmJhGcqnz+p3FwvMQVTkHlL5LGExDl6OeCmbVly9r6qB
QgFv2w1CkD72IXgZL4tCY1A++BL7tGnQpcH//KTDJiHD1ifpvAYo/BVxUsJN
sFSw1OlHLxiYVRikUDW9Y4Hv+iEVVLsLLtWv6hiRwfjhJ7g78GevtCqCReIX
UNIsaUROtGxU59su3do0GeGRA9vphyL6FKYvx6VUG5TDsB9t67BFUMRYKQN2
CVkgjjRsdC4KV+mqeihk3hlz9gzsfl+GnFyUZQv3bQXLnvH5Z0069RnetW6H
N5KDLTdrgMJnS0hpU5geadNyRrVJ0fP2FU1ec2W57w6ZNPEE6IJ0rqpZ1UEh
YVPrNemfyuXdpGVSOGMbIee6t/qyVYtm3To3bPKKAVp9vQbmC+8vKnUi3VQD
7V/tl2apC6gooRCED/xrej+/vYNw4Za0rn5VB4V+Y8C/F1+mWDAimF0GhWO3
UFjRfmS9+vVadmjSpOcbyu0VN2uAwtsLVeJtJDpqM6iXwsIWNxAt+WiEVDlO
SJ4wHWctdUOTeJWgaY2HpoJKUaGmiYGTkveKmH3PMntE33u969T7tlv9T6eb
gr1cnYl4ZMZztV6YojBxjgpsSxlGdbW7tiN9BKwKUgaZMp03W2yDlFWlNvqO
rSJtwscqM7H+ZA7JSDUE41h1wpaxb3H7QqzvE4h3aLt7vRs3bdrwH423Cy9c
WG7Q6FN4bw7HZVJIZjXOMopK3JRxJVwFJ+dbHoGXK0RFm5VrXi6FWpTndeh6
H9Tqifwn+blfT/AWSS/c2r3PYNj49cDRHVp89WXjSRnyvv6yDWqAwltzuQwt
SqFQV0FOaX1YPmaXfwvl3zEcbHMdUn4VpRW5ia1cCrUKGUz5YureLFV2I/vQ
tCfe4o6W/mAY/n4/hsKpX9X9pPmAeRtOSzN0ruc9INGn8Oo8FeCW4vnpivCw
ZZQcbVGFFFK+of1LeLAKSgU6pnIpdGTB8m8mdvi2/6gxg3oPGFcodOeTUCkY
4RRDn7ZY3u63J5Yv3feIqqowaNB8v2DRp/DCAlXcqzQK1cOkYFiKQKVUnSv2
TJAXuqRrPpz9HUoFOqZyKXSExbrxWVe2/zxq+JhFV3TSNQ+bgxNMV4s+NQyw
2nGODAmFTeB6x1fOvr0oU3h2oapdWBY6JixaqJboKqKQw5yefrFpL0Qrnn93
uRQ6ErC4J3bmcxkFGXnicN+J6/k6nts/HQoQJoTahkV4wZLdqrpX9Ck8vYiT
cnbE2Gd7na3QL1QU/vKDj/90Iv7cQpdCR8yGTf0MO7RMpmpWoiIQHQoFG7NL
hpeGKYD7DUySpGlkogZmak4uZuVQaFr5P3T3VuAXck1hPw8b9Se4MXKcygfe
4WO9JSqEBB4N/srnD/TAW0B+YG8teNP/d1URPbr7PjSFx5aolJoyC5UwsrDe
Jb2SYpd8DiNqx78MkDnwX7vkkW+vAqJxh6ErJYayD5wj1CqfQvtZ/0F7UwpN
ZnleX1nSf63XoICi+83VFB5ZJsqhkAPNXvHdVaYLY5ewc1SNv5pBQ+z7+tax
Ni+tuHMLXTlCenaQY1FcgUdDv1Jj1w/tOw8Z0L5l6y5rbF3CN8pb4DSFh1aq
lnllsmMi8IzrkgYmB5uWnIShurWoivhTeo7sMJP4wY47x9CVkiUdL+ItkVgY
eDRkC30ABbf2LF63Ze/lTAqGLqhaAxVCDqxWqbRljshImJDYaUEuhHfnDkp+
TXAW+ClgYhcu+1vjC9w1hfEsUXQHy6CQQaEnMOUr8bN0k9god1TWFO5bR1jZ
ERCXsZUNG76+AKUWLqSQfNADhPiEBec/HayNt8thXIo5Rs0f+LUsClUMLWNV
vwVgqxo1pOJU+/eUpnDPbzIWL2/bK8eQ2npBjirhWtI0s7vjzstLldEL39dk
ivz+CBxvayeuHMn7YhdNYZRBoZDjGmJCPREhosygHe2dRJrC3Rswg7IpVPnh
hrWgz59AeYkO4zJoSe3+q4eryabn/f/Z9y0nUQ7rXb2vgvRJf97vCcQsFZUH
jfIFSQq37lb1/Z29cyzAEJfmO90Er6V6pviwH952HZYhfAwiCw1LfDd8O/ih
H4zTvVtMb7IX25XaHhAdRXVu9YNRcGKQcxVVQpxQuHGP0HMtqqpd8HSc4XND
F2fr/fmqon8hHGy1SlXnjqAQSXudsqxfywH9WrUYchzmDPPYMXQLo/1xfRgK
gaU6DF99FCcUrt2vZ/z0YBs0Y5xBQstPh/yemF3op/dOXzUJTO+YCL5IW+h4
sI8Wzxk3btsrwZIHXInDtRNXxRQCiwB/O25lnFD462FJof5qqJkX3R1Nwobx
teU9P/mqbYdverev88XlAnjcZi6YkTXXKRN6CLd0gnU+HFoANnMdw7hWACxT
rYc9aLs4Tihc8ofKpVXlxNQeJ8GcxicIzKStw9s3btqk0VeffJ8PyJzV/TF4
I/1CRMDM9SiIkY8Dyp9WEG95Xa4iFABLhwCnO5yKFwrPCNUe2aJg2sD8VO/b
56ZqJi58r7KezPj3N1ewDJWf9hmRX3JExjqXwcYqI6MA8YM3Yjgi60rcMTt7
bVEILPlhre76Mk4oXHpOdRcjack+AG9BqFckUK9fQnZ1ZavGm8FnyGvd2WQV
jaDQr2bjnT8QNRuFM5/YvlK6K9eMECbUXT6sSEFbKCjGU7oWxAmFyy7KAJnY
07+beuLY/PWFmOhekdq5w48Pfv913zm2mlzKFTC90YVIW8jV0jK1ERWqZQo1
CBSSiptDRUmWjQj7mI0hdgr0yxuoln+dL6T+b6CAMKNEPcNJaZZ3OL9P/3xm
CLWsIrAq5a+iVDksqukbbDuvFjy6q2HC2XW16K48D7XGfzXt2Mb9T8HHuaXq
C8srzdrW87OBrwYlEFGAZHgMTwd09uLySi/URHeM4u+g2Fe1Rr65cSyVbCyw
xe8nXE31IiZhpESo3Z5ENX7C1MZMMIspJgURGJOMgRPzZTzKCcXyvqulOgsx
eJqYawnke/Xg7LXADqlozgCr+8WRsfCOotDe12HgnkQvpkLl/pjZt3ZP69N5
yIYbua+Hm1S+AyCY0+sdZ+Qj5TuWcUSXwpiKaptHrTWnfuq9Te9rItJf505t
DZYvjZu30PQ7PeKJZBKSu86VBEjiqKVS+JgqaS7M3xLlHcw9vGzr7NHHTP1h
RvWOyhtGTe/8O8ry4cItvb7otO3Gg5e5VtqlHb+2rfNFz/X3pWe4a6HAxAcM
qXBlx2fHSjTwLn7AGqXApbC49CSgffmoMalZ94PSAGLTGU3V2IY4oJMLD2WT
YGYUS3tyuss6iS2WViXzIQeTqYlj9upXL7w+vv3884L8/UMyKJTdDqCaLlpT
OPe2sokU/FfHfPVl3Xodu3dv+sUXXw/59bb8XlCR88Mm5TOoVAZskOzBY7wm
Z2XZQpfC2EonK3g2XT3dc8f01q9MOc5C6qmj2TKI5JLHv2aPn3PGq3w+eV+B
XR7QvPM/xq2/R6Q7iU6vyBEyAs2XlubSev/LnRsvSbfR+rVRGpFOY7SDE2C2
f7amkMtrsB8eXDilb4/uIxcdvmWqzAVlu/enaQfSlk+Vb+Vg22sqazeql1V5
uRQWEzdVa9eXSzOnTIc79U9Jy8YuzZsw9TySwadNfu8/5qIFwsek4++RI3Dm
saP723Zp0m4TAoskzk4XiNHzW/LYurX3Dx8rlKO3faL3tMKoF0UV2j8wf7nl
1PDmNlNJrdhT6ATvDKscLcMv/IYOnuRvNn8zb3bZuwNqXC6FEZI+uX3555xf
LsHjHnvAA/lrZ9+BPzLBB+LPHzdmArLkPeTUk1XIVQic1Gvbq5P9T2HGni5K
MWU8vKX1Le+YxUd2cZQFcGfgAL8TnURzTA7EyA6FKg7Cfi4tOpJfIYSJs2OQ
mTKi94ETM1OMIKPXq/ipXO1SGCnbhm170vtch2strlJun1hqAE9f9wZy2dJj
qtaCoLaMRN5ufCaDGAS3vj0CIjXZg0X+8M1geeF68yUpzcYe2MNNb+rSJmOf
ltcYpbqkK5Og6fecmv4BgQRQeQLSINpC+rWhG6snFxFMXuzEJ8JNqo43cTnO
UrHzwuNWd+HotzcACnZtlZ6VZ9YpEN4FFzEgnSsgY+Opl3QW1aNO++XI65Hx
Chk6h9sWJHX4KbHd1ptbDj45NLtb5y0FNZEpV4zCQAtxpnaXFHVLhggKOezq
lw8+ndjPox09uaqi1C6RwnXXbvQm6aOGegHSV1+SDr09brMJvoRxO1J0CpS0
JPd7HNY9htN77tSjrQRgwhBKCbweMuq3UT60sVvD1iPXXTXl8F1TFE67p81a
aLWGyZ8ptbmMQUwUSSHQp53XmtgjfyfMraMeZ1Kze55V146Ny1nRdrf041/M
ug0GQYMP+gVFu4e2H7fmzwdeYsC9tnvlvbPA8/1WtYSiKgf+2kOaSvAubzP0
GMCrm6fv5qilsMIaWJgPUHhfp38HxdUaGKcFarKJksgRmQu8uPEx+XY5lKzI
7irGIpIZ/7KT87rMG7RGTdq8GHOMIzu5wx390P2dv3Tp0nm6geBu2x3AhQ8K
em6WnhcjBLMj3bLBoiKhaW8f+KiKtw3LUjc56hg6FE4tTqHQs4EMyNNLr/PA
F0GhjJNf9uydJNR+fXc8jj8RMBYf/mHS6ddMbbbLmfWrF/imIXnSZcRADITy
prQplLFxv13yltvwstsepuprSBfsZq/LXI6/j9qOUuaFIpW9zE1TpylFeb4Q
FIVT7ovwSSGhtiMIZB/s9WnbWfmRIzIDA643/bFAuY7YDU/iS5hQG/CGu/P/
9OtlBsq3Db2admfMWVDdaBBgjF6PGS9H59z1CYoucr3vZUkhVxMkaQM32FS8
vb7zFuQbTLuK2MKUagqjep8dCiffl9Y5fHSVgKH8Jd0H/Typ3y2jxIhsAvzy
9RnlCaO4mbFxpUVlaAn+TakTXsq7I91CA043mrdm3CQARPwccAHA7e7LkGnC
/WfMh8F/ZmSqWoLgcmTzjfrZD+LBwdf5CgU9OFJK/QEMo3nVxSgsmmyTZ/Wn
D/pmU8be9mdL2EImA/rEenO9YDLijslxJi4sYL8fm+gH7hT2ME6N7DbiibaE
L7LyeOHGHot9gZQTGZV4kYdgtRFPUAxJ1yx4eiYpeL8pUC8n1C+IvOVRTFzW
2bZAfFOfFG+UQ+UXKWV00798kNI1AXRpmoIQo1R5DQVHP99DsCGIXcRo4KWc
6oCbOLMGRY8il9joSxoTxunxhRMs0GnKGBGOMEMCE2G+On/24LbjybpevxIp
lP4gYVjvu+SUEs5TrzwlIWNkI/zo9PHT53NoVFM2gxROeqiKzYaGZMk+3B3U
/RxiNH1pNqgG3lyEarkKyhCl+WvbbMon3CiZviAEZhwT+d6LZrwZeJV37O7N
i7ZUpwbEU0dNZOprL28aV1291P5wnW2nAg5khu0EfWHwYJksed+o7WEhy4Hz
4e2ODY+AXluXBflRvOYghRMfFC9xZNEnQ9vfQhaBxLHHb72xGZJ+bYhC6TGo
Ejpb//UzpVZJCsEyldVjWCX+Bim8PWQ3UyGZq2hLVcYgkyZzlX0ibGkQmJN8
7pRt4ZYlQpxROL0gTTpkAQr1Ci6EyujLAXHz3OfStBYsuQPRTJ4PUvhzcsRa
HF/RYLn6k3Vlzu516w5bNgstoQjHiSAE9f3mIVgigkIig3tMkw6lqgOGvnU0
qUnLP6kbytSAtOOzeArXqfrB9X7mlD9Fznxc0W1Y1vc5UBLw+XVQrHrCO7Lh
ypQEsD0WW3E0qlccpHDp62J+IRLePu2f8pSdG44eXXdka9s+qQJQmF8oLaF0
P+B448VAUASFSDXr9uz+/+bbcrTGIesOuzss9EX1vbjSUiEHhY1TWXBHmnQT
A63TufM3f5FdE1NH51pqX4kurEKJjVTiaPCO4mVz8kSuPMT8PVHtNRykcOFL
NUkd8gsNlNp8ErUzJ7ceMLpbv/4tGvwFrKj+LFE7RuVzPa+Hd0oqkdaKVTBj
H/30u2TdhyxE4c3vZ+n2jq6iKhXqgs13TdO3SKeBBhb7dYzJi/d+Te06WXqR
0qIwNTXtV8zaRvBG2wVzDwOxCGKzjtbIiDzjUfHwlSXVn484Wt29TbuOvbsM
b7kL/EVjr5qppqbgNuz/anoJv1B5fwSeT/jXNr08GXw0O3H4aOymPtSMuO29
p0xikZOlqmAJFa1Id53rutCmqsB74duNhHBiskDSPeJ6250em4U4MLfQtji2
MubejXImnzNfOPE2ZyIsq9u8+s0fBnBv3u1rr7MKjPlrwSrRYVFeuX9Oiz0y
UlGvK+ofpL5ZlCa3qnNFRvrMifEFeJ/P/oW4qQ81IBV8YMNS4SEN89ZVkWcv
UL/0DL2C2MosAhxpc0w9iPw56a8zsnN9edkS0zxqYuU/kmkznQrlp+eq7gBR
vmZJ4Y83RfFs2tP1LghL+q2GhS3xot8BQUtmfWMEr4Z0ua2u1yh6rdBNy6i5
+/PJPgF2kEI7Y/niqL4RV1pOLVSKgBcvDqCWZJlH7eq0qK7Oa0jjkb+v69qT
y3+Z1rV7r+8Hj508Yf7S9Xcwozq11AtvO61B+nVLL0OpTdyr8apBUTjmBhQP
ko81OgcWM/NltG6b+xvf5iWLflBANpz8dnKaDJqtsIvUFEqXeOyXx+V7CFDI
PBkrF5VWmd1V9Yo5la4YLb4xSI65qXsXLFh2ogAyC8HG8p75/5w2qO0/evf4
duj4DQcu3Xv2Ois/J+t5tnz91XW/5YHJDzV5DIYB4vg6VQ4hqlO9DoUTbkMx
CvHRJufBI8dZ7iuE7BHtcnnJdQ/5h3xmrqp3QI3G4RuQ9SofgVv/HCAsGrKF
/t2/uWlg0Vcw106ZPkpDN82A9P0b5i+fMWkjYQbFpg9lHRnZeHybVivW/H45
Kd0XfJHPB/5nGxYszpIO2P5GjwwTzMfT78qhPLpxZSDXOlGEcyZEwhc7pKmT
Rt1D4VqzBWpGvoQdU8384G7TkT75RStW+l+nwvp9PT55CL4AhQLRE7vc/Jvo
S293dz5nHOaFC+/O39MpSz8z8jCGlynEc23T6r3nXv044o3aAkU4w6qCNVJp
hbcWn/O9Vo7+/GbPAF7umHnSYpLoqA7JDoU/JckQPszmktRWnc+ruSf5cOLI
rnJAxiVqVTtpXdayukdUD+XiB5UcWvaOTydD0BZiH/3rgHDboERdejzWHzMP
T0E2d/1yCYMfCiZv8MLpTSg74cxrVaPm+zwJq4WxbclbTdRSrW/7onz4Kx2E
OWXAjSfH1m25K2y1b88T7atWudbSmQ2LkW26rmF/Va+BsAdTWq6xCKclHAP5
HTKlnX7Vt/fLyBZ6QhVopJlj65+E4IhM4G6CawtrRipVXkUpHIVm+XzfzweQ
5i5t6U3A545byLYles97jvHaDl5M5zUIApd/OS3stVel3Rzd9edt51NyZYxa
ig2qXoVmajgUUcgBvfnlq+brknypVyY3mX4P/ETQEgipUg3YhEufndCplcWO
KtQIfq5534LgiGzCnQRVocJVTPR4ZS5Y8oadmWND3uyr8nZZOQJe/zBK2p6i
ZVYMtr2n6wUQv14BljlotirPy6K/E1QfXw76Ex6y4nW4BE3bOuDrRt80q9th
U17pBZACUzKUre0HiOGIa5XDAUI7/3OlhFe6FDYV4t49EZaXUyIFwlU0tWUx
tRhHOcOXU3Sx+1Vi4/vnfDynzwQsoKjZK0G2WNfRS98OlxS+6DwfEd2nR0R5
40mQwsn3WXiPbqbLjRU8OLv7yJ1MRMui0MGQvx2xVW2FKs6UUEYwb26L66D7
kTMGqamqorxLYUy0b6Hu6rlk8H3guzqkWuDbfRFYdu+lRGXSBG2hummr216F
k51vADzstJEQZxKcsahiGKRwxs1iOd1qW4xtqW1YaonPKBMZPSeDYVer15Ab
UVtTRS4GPPt0FgGkljYJ+P0qycOlMCY6OywL2K2V7XdghLf0TPfBX4tTAL/s
vlPam6JsKWLacG3gwN+HbGKEPGlxQDlrhlVjFP50lTMIp9BZ/wZqhK8Fl/J6
bSIffTNN1ZQrhiEGtZXZP67lQ/klVE6nWk13KYyVnvZZenDp8NabMymHJd9m
w/MB86gydzJ8tHixVAB0ZFrP1V4Ze95vfl5VG1EeVQ3sOlEUzrnAi3UgU/Ey
tz1qJaf8Pk5CxWJ0Sf2twIpvGJTuhgy64HK9NV491KuWUcBcCmMktGtCm25r
H+q9oXvanMhYPvwveTfutUnQxchDd0OY0uoYWVR1CjnR8KLKwOHE0rMjUbxX
QQrnJfCSffCoqgMKUG6QrrwJBq/HfpdIWcSGQaH25/lm9DnHnOeFdte7FNa8
DLBeGAS8gE27YEjP/j2uqhL6d5snKG8/GDPK8ZcKotJvpOXBF5pdlQ69eWOb
XwNQAxQuOCvPG06hzox0Hix/dkVeu2XBraZLKS1mDOWbscE0+N3GS+VorXY7
I8RDg7tLYQ0rPMBkD9csvO4R2KK/T3sKVlGaSuiu2PJ/PKHxDaDZc9qstPVg
GOVt8cq3m5/Ay21MW56YsFDO2k9P5WMRlikrtKEHYQ1tm+sHr7TqiLg5rjFT
gEKmOh2C+fCJV6VE8aQ/8qR5LPKighQKFRyfa3ce3q7vvygV1RSF0ha++5wQ
lQHVyVajX4CX8dDoTXRzUcndb/VTFJkEFeqqxK5ioiJbyE2qu78yGwmRB+BH
JSi0OZM+/R8dEq/2HXIqD3Tb0JqgcNEpUbw2Q1Ukv1zwZskXe6UnWEQh0lmz
lgkp3/6penDYkGmDx90JGiOFeUDIwMK2MUFIL2VRHAo/gxQioqqt/9Vq5uAx
9+U9dTJVaoDCJUc5e+fixVx4AF517P8YnHKwjiy93YswtnA6IL/1V66M+V1b
GCsF+MKKKKaMoRp2Lb9TB5UVf5LQm0nhTN3vVuSBiZ1ksRrp/bRffiHeOXeH
Kpt9pOXPKkstZO3UD1kp0g151lOOxYdb7cHcjllHKFdBqUquwbwbRoq3MQmL
GW3ImNggAUnfsWZqNDudaXfx96g4o9vfiYmN19ngDx5Emj3qW9B0k/xWjT6A
/L07JfH8aJt1V5WQujHS+cKhrfBFw1eQNyqYnbm+RfcCtdtEcxjtml0OhSu3
cfzuFMoXkkK42b7tDbVH1JFXvcE/mvdM8sLmvm//+ucmeH6Pltetx1UNyFBU
SYed63UJ5tyP0AgVsnocW1d/7PvDQ4ospNZiefQLGGoKNzP8rnv9MHD5Pgr9
8MuXG3D4Tr0CgMWf/vzKl1Anc0GzG+zsU+qOyLVDlL+ceGlh5xxdTDX6Dde1
h0CZWL4Ci/c8mx8yhnd/Im0gUV8zpDomM8i72K7r9Yzu7VouA/++Oyx2IbI7
S14FcfFi6XU6brDJbcbK67xZTQpSuHoFFeQ9vTYfvB7e7aZgSK2UqHxf1SnA
erHy+607G7ZJ5KkJXrBjhoFLYRVkoQPHgM8cauicluh/aEEKf1/OeSnb7Koi
1Vv3Vc9OiSrsChRhEH6f9CtSvq3fqtszyLuSASJmtRlcCqsg5l9TKPIWzAJh
EVQDn1mQwk1L1NTle9leGww/nGgxPk8V6lJFKuQIr2p5W3B/3bZuZ3wkNS+6
bazKlUthVVT4u/DTn6ezdw8WqqQghZvncwzvufHZlFfsn/PJRWJJ2Jj8HjHN
tW1K4/jXY5+qKBq7xhQuhVVRXgL2wMSxflwz9ytkC39m9vtSaKio+EqDnzI5
2Co/jeuajPLbZBhQ6LQuKLmDqqbkUlgFGVkvqB/GzSQYqTqoUT9fkMKNM5n1
nhRa0vp5SOq4prdVhAzO7i2sa+bZ+YJgpw5UNV13lfXRUehsfeSB3mLh++PV
v2jgr5a6P3IQ45YISyMQb9I9ABNO+sCgUANVXYIUblmoCHwvCrn+f8HD+jMN
VXgxONEZuP289B1UNaaPlUK1JBzeRhjpjRe2IEIYWO34NXRxTV/4cjL4M9IY
fTX5LgGDQVTrqjsKUrh9cTW0wOUmAV6wpFGSqk3mUhhb6QwErtpOyPsaVlfh
3oZr4OzowHZ+FrI4USkNlq7yFXrt2+fArq/O0031aiCgDFK4a5l4/9FSl1wX
r9pslF821xbGWIEBOR9ocsorXzDHneSMV5VfpIWUgcejXZeeUvAydDUJY0rC
Rt78my8urNmmQK2RaY0ghXt/rZbTqVQu2DoCVDvT4hTWSGJGeVf2sVGoJBgl
cGfF77vyQu//VLtlKnGLgMlTVu0694hgzk+Pnv2chvvs+dbjhE0bHgIzcY10
Yw9SeGBZsfqz7yInFZLaIq2HwZ19oS6FsRWXED5dvGhdxzV2YCgSK3usf2oC
I4TSA9Mz8iRm5tbe44ceAQhLDTUYynyWBgKZtEZt4YFFBOj7DZdCbZ6Wx/Oy
wbsB8QgKq+Vq3+fq4uMyalac4oLdBzIL+gwNekQJI/u2ne4BH8fs9uLVp068
yYGbw9bmDD8Bth3GG9dtKhih774bqSoKUTjXAPae0ZADoRyN13d4pjF0KYyx
OMETJz4FWDAwK0Dh7O8mNlkMHnnffXMm7Pn7PARo8bA8T89bItzo6XZQTpWk
6JYtDChI4f5fPMDe0xg6ksF/Yp1FzKUw5lL8PGw1kgJb0zNXVfJjkNhz7owm
O8GQg69nzNRddeZjyBg8H/Z+mYHBJoGkqnfef/Q+0vHryXmEVlfeFTVmNj9l
6T0n4V+laBd+clVMQk8AJjeZ5qVsZd8siRZi9r6mvw794jhwxLh/UqdxXw4w
+aNGv93vtdqiQhXPcLanx47C+cx+3xE5IIr5w14tHwAzBBTrP/+RmaIYSxGF
4EmLjdLf+3k8ooyZgDd3PjS67U1pGSycN/VffSfVuwyFw3v3H1DIiUDEG6iJ
FIvb5FA4l5usesIhxiw423ZEDhhqrjSYOiuK/cdV1KWS6DBcanGIQ87QBapK
gQ+s/a1m9+ibKn0wy0IJ848l1puNIKHBt9eZ00iCshrY81nG5SoKz8yiVjVR
aNoU7I3/3En17mO3CWispDP1djQ8JeBm152q9YQFNKlrl0ZtLsi7ovq15jGr
b18DbjRofVUt0/m9GJMaWK4rXZrCv8ZbuJS+Ou8kwvP4q649b4DAYUVuVEco
1zGsQSkvn86tew7ogW73QN5dwQVNPrZr+CofQJqlytNkje7qTR7fs0fn89lg
3di1E5GYpd5pCs8P83JSTZAQGekb21vOyweLF323BEUxTOz6CKX2v9tj614D
Y1N/Zx3ZtAA8sLrPlu3L74BhmOCf0afw5Bc3/cvbDxw5a+nRLISrZZrkXaQp
vNi/oPqaTMlgG+X06nEbvKKoMo3AloVdCmtSDGj/L+8UHhh9BYKVnDEH3/k1
O+8haoKw6LKhFxuOxdiffutOVtH29xq/S8H5wjPDfNVnjNXyJU6ou8CvireG
qjB5kpjplqmpQQkiPL0an0tYuTiFhyoUEsryU9IJ5ir72J7ZY27nU7xQBpF+
tXwXawqvT7AYqa7TKwrJix69U1SqdZBCkXuP2W4bvBoUQyytS+/kxItPQ2Uy
JYVO4yNlG5HlH1u/2xJCPdJlpMjGJNYUJk5DjFYbhaoXFN1Yf6tq1hKkkKVf
i+wQ5SqaUt1Lkjp2y8U2A08QMN0cjyJT1cYiPH/wJ2MfgyWQqh+tOvXEmMI7
k8xqHJFVAwp407vXE13NWlMo2MtzDGK3++njk5D34HqHLm9VP9BQL4nA/mLu
VCV62r7dKZXeGprUjfWIPNZDqo9CFfAAHG42x0AhCnnyaepSWHMSQsa7f7Yd
62N6ziaCL12VyNxXZ3mhs2+XIspZzEfk62MLMa3eWhDEGt30EiJBCiH5OH7f
5DFXVRDHFPa3mIv9qmq6WTQiCz1WUekrvhzd8JraqUaCxQljTuEYDw0rB1wN
ohYcbTo1k4YoTDmKwjrtuYq2mI1gS8PlYHK1JzfIl9oHibRrRPDtZt1eIdUS
SvnrCtpYU3h5lBeqN63WBPv5gGa3QiMyvFAUVuMJXJUrbshP+9cGh9RGO1xi
aZhI4/h8+FdLfKr4eOzqthRJz1rfnooFr941X9sLl1oMV8dnaoWaZ+0vrLZ5
cVcVS5pAWNxMOeNq1jbyQQEPf23c5LAqLsTiwThoCi9PNCL6vb+vDGGjglnf
nFKVTlQdRsg75HXH45oTVSkLk1skCUY0kBGP8sxlLVv++lavL8cNhdenWERU
a+xAbYH5s5FNL3Ak4x75hfMdKaiRza2utDj4iW/JeN1jG0raQrSnR8dlKUQO
xiwuSt5rCp+NyGbVfDly+PXS5B6dktT3TW10OJr9HqWzXVVRXNUNenDH4FSt
RkSOQiJ1WMPxd8CUETONfq3WSkhTmNIjiVevYbYBC8Lxzr+tZVQZQ+o7nWtX
U+6Yq4pF1TYSAYjQUmsRXGrTYfMb1XOY8biYxNUUPu/9uJrnlC3VCY/jlx17
3VZBGmDrmoncXOuaExfcj02MKPCSuav82tgdXkDSLKjqC3GAoaYweeQbxKp3
lRdxTqhpLftqja3yfhF58N41i11VXqK4Ih6leW89OHbT1CWlKcyZ6av+raf6
yC/6tn5DZJAskNcQ0RiRy/+4g/VxKvVxV+6miPL1Xm+m+lT+VTGfT5UKjp9r
1qxkTvdGiUI42eA4gFcwZCKXwppTBRTqPp88fq5Zs5I2xVO9EzWhIwPMHkfk
+yV6SdmlsKZUAYV68wWLn2t2opNJhazad4XoI/sgpZMPAUc2FVEJx8r/uKuE
yMdEoc5qiJ9r1qw8mVRY/Smoji30+ns95JhjyyaMRWG+0KWwVJV/VVxiWDRC
xME1a1YeTfZKt7Car8ahkJC5E/M5Y1ah7z3ajpZ3lspA4FJYTNy5O/FzzQ6F
0/zk3Rskl3dkBHCu7n7BwMzIptEoyehSWKrKvypnK1C8+YWPppukmmozRBwZ
vJ6MrsPTJIWpacSl0JVSyc/KoXCCSaNiqVSXRrLvXzvAoC/fvqO1jbxm1evc
0D0Jsh7evXPhzoM0LwZKnar2lTskoWoVP1RwNnjg4penP5kiXzYs3JZ/pTxC
quTku7y7j1FlUJg4XEUnUVnJsQEetR9kAH/69h0XqiOu2S8AYfC9/Gvjj22b
N67/Rd3PWg7dlCGqRCF4TW4A5yX6/urJJO4WuYuuyqDwbs/X1byAFxITVOxq
tBvDUxtE1TgsY6xjgqcenjFq4MARi3bu2rb/2N4t3Rsd41WiULGWeysjgkLF
nuAUB8p/OnYvdBnhU49hNpAF5DxWpff30aosW9g7I0rF3OX9tiFvyrfX2Utv
VSuElE4hRyJlz69bH1lMF3xUVc/ub3sJVbOFhUIs6n+rpC0MnZoSoj+bIF9F
uKnLkv8JXhULYahfFweZAfGvsmxh/7wq2qlKSwY9lOz7cl5qjqXK9VRFxdc9
gtdMhffkSb/6SSCVEslssDFUzRaCBx6PPkcjKWRGQV6hEcyzFAHHkDgq7hcG
2eQ0IAdJGgd5y/GvMii8OshLo5R3JU2sJZ4Pb73pBRP+qtnb0inMF/AwURhv
KCbcyRRWK+BV8wuRIPNnOeVLwj8KOzf18YMHDzKzcgstyhHCRFW7Cx9yHZso
DSVBAVkBeQrz8wv9tkthJVQGhQmD/ciKEoWCewHO/r3naaOqg37pFIKH2dif
sDfwBPCpB4wqjshwt/ceKIikUIoi0/c8+cnDu7duJD18/CwlNe1NuqMXAaWk
pDxPTn72KKAHAT1/9uRZ6lvDLYLyDlJuDCZwZZRf7QcMpEMK4mQ2BB3uojsl
3SWmZzSoSooVnGDqePLONKh2/HhgF5WgVL/WYqxgWeuv/j74pBxCQ0Dx0ARI
cXD0tm0wPTIWznqRdO/MrVS9nU/lr4doZBZcmvUaFfp9V05eOHDg0NHDx64k
vyxeOLbEt62YKPz2eQoDbNv6konjv0bMvUjrlpOV/joty1FOQIUer8+0lSzL
NE0aofe8IR+lAhRemmg5qzrOzv1iT9FJCOp+hva0y9/DVoRV1rh8xEC2KQco
7sWMEyQfRrrHs4Lb3tVr0ODPvpjvKQ6HYE56UdGpJL/KvVdt5tPv/bVj48LJ
PadsvaWKP6o82eBrLR/Hm4eeOXX02O5JAwe3adfth759h0/ZlCFfW1QVrHwK
AZY0ehMMJChSbXNF0YxgyAZzSjCyA35hMArBmEi7Kxy3kTGXwvdXgMJzv9CS
G7UCEkzC4WSNS1dcDWHcoVJP3mIk75UaDQtZoBev+gcBVq0ZDY/JCoy3x9t3
v+bb/1XdP1VdTS3VrVH6dZrCsEERM2fGDsGLIZ/W++Jv/27TukXjJiPPYqA2
K5oxYZD4wydN/12nYZt23/UfO37K9InDBwyYfJuH73eugEJ7Qoc8UDPNobOz
EhRW7hNkEarcq1yFK0DhmUUifJsmc2a+gi6ZukEOhYQ4HU+1BdRIcvUvRpCk
JOPWo6cPkq8l3kdg6qKMaef+uLBn4+E9neptv8uf9frHtjA4QjdZF/gqkp4E
8cGbaX1X7b14O+3Z8cVD/9bmUPiIrPbXnl+wf+8fZ87ffFmA9HHs/OznoL3C
0md39JHDl+/f9ujj12+YK7fBMdo04rXSsKkPIjgXE3ZI9f0LWkKXwvdXgMIT
C4XaOo2w+tyZsxbFA5bKubkcikoO62k6ZwOhBFDlUAtskZzN7erU+bxu6yGr
M5klvXyCMh48K/D42YMOM5/l5ictWXrfLqIQY/UqcO5o2AVpbgwO2TngNIjk
rw/1aXvQLhqRORj2vhXYCXV4sCC4+i2sOFVpFPIiknhK8wGWDGhktKvsuK3P
i8t+bTHpkVoN0FT+B/N3sqCuwhWg8NhPirlinz0jRRtVnXkz0Ddd7+6STBS+
fpP27M7Fs6fzfYGh+M2Z09du3X2YLf04m+jd2Ew3PDnzzfaEdO+9CScgVKhR
2k7MJMGq7r8I80MdkytPLcd8v0dXOAMfHP9scHZRxR8ur3f3yJegRnWhTBmX
rhu2qG1S5jfDVzgiKFTGOzjJ97jhYBVW69Op4MeX5indIxGlcuX8VZtDl8L3
V4DCI+O1bVImzkZyZGK2aSFiYc0H59LSUdt49uj2hYTrLwqootDIOHPlwbOU
V9mFfj38gtdhSXfxk8Qi01LRtIyh+ZH+r3IvPktsOZnYVpGdsfPzECCiS4gG
r0YPaNRCYGekXNm/67cNv60/ZxH7ceMBuUZR3Sn5pAUNTkm7ysLvuROQl5Pi
rwxYCJVnLYb41BfPyM94dv3PpUuXbkgq8dloa0dDYUlxzAIBVlG+ckUW1FXZ
ClB4eISN9JCcn/E6I7fQk5/11oPEywzVOEfaENNjI3/+kWPHDh+7kmarAtjC
++pJus+21OSI0N6RjpwNZT/VGKeR1HfEggPfpULOPe+k8QVhsy3Ws7Mn7mRa
xbtP6FmTgozT5w6tWzq5W/OOndq2nCdH5kdfjZHABGvwyR/JlLpngEhaKaKG
LsrHbHVNby1aLoWh4RNethvqoeT5jSObVy+aNnrG7PUXfCKyNkUZSAXdxECA
7FJYHdKz1ttH6ckVQElrx46bu3T19o37PHhjozarD+zed/TUlWw5MorC1/lI
BrYsaG6IDk44c+p+lJW3K8fbvePUSM4GzSqKfzDguf/zv+t16jdw+LTlv29f
v3r5kqWrNmxZOGvcsP7d2v/jszr1mnYaMnnM1OnjzhqMb6j/uwyf7eAJ5Gi9
5NN5nuAATdQ0J7U45K3odF+O36aqDKn+zzCR1204oTfFlmBWxut8X2Zayt1r
G1p+t2J679a9fpy3/vDNl+GLcDUKUiTCHy3ImsJdExnCyvWzUx88z/Fb8mbm
z+40tdmax2lpb/KzGZemBqstrGq2LOhbOT4dw0LebrDK+gi5tXsOeP3izbcT
imbT5JieMHV4l3YNvv73J//4xz8/+6LO1/XqfV33s3990arf8NE7jlx8kFrA
9Rq0NMYvun//mNtF84XUhF3/3fGv4K/CSdXx7xrRuu5hJK9cRSq+vAyfht5p
rGb5pQG1sblp0dQhHVq3bdmg3Zd/79J//t2XXqfkfYkouMY+fJdCLU3hhumM
EIkUIRRZcpDELHHB4gd3Op9X/U31fIzywYTGjoZTyHSYSCgYZXyEiPETHa7K
0fJgh+2B+6xOakgbxn2+vJystJTnyU+TX6alvXqZkpb2Ostjq9hEz9iAJY+M
no3tcRGQWuZ2pH4433pEftAWggqOcw8P+n5uYpaXgokN+9XOYX0G9TuCbGqZ
0p+4u3xI97V+VUXXyHn1JPHxy1ev3myrf9WQroMaVUtM0dTkh+9SqKUpXDqP
OfXfsWrMIgdMX88tAk40SwRLhbpqTUPeMoJIYL1O337NJMEU1HpCmeny3M7o
NeTE6amffZcBJrBAREGFHCaxIJJhNeMmY2aEGcfStURE5yZgGdeo8jawv2HX
q2BLIkPnBVvkXX0QrAXO9CTNjvpDbgO8lazm/ZYAP9Zbm3qpz1Rl0iHdf2XE
xoyvBqdDcIKaEwL8abcTuWpDpPwjDUuicSmMjTSFS1ZKJnSynlPvHZ71fuxD
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
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
 TextAlignment->Center,ExpressionUUID->"5eb9d009-6880-4a56-8eed-4302fb634f2b"],

Cell["The torque about the pivot point is", "Text",
 CellChangeTimes->{{3.5006942579307632`*^9, 
  3.5006942936508207`*^9}},ExpressionUUID->"51402ef2-4f85-4c64-93d6-\
e06ebb3e7e85"],

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
 TextAlignment->Center,ExpressionUUID->"f25535b4-d566-4c41-9a46-b58db29222ba"],

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
     SubscriptBox["I", "p"]}]}]}], TraditionalForm]], "DisplayFormulaNumbered",\

 CellChangeTimes->CompressedData["
1:eJxTTMoPSmViYGAQBmIQHb0sPpZR9JXjMYYOMH1EWjsNRFvNTQHT0wTsCkB0
4d+uGhC9+MHPVhB9VV2uF0T3nSmbB6KfC/xYAKLNLootBdEqAkqrQfThTwvs
WIA0f1isM4gWOfjdE0SbaDP4gWiLmb+DQHRMbXMoiP630ZaZE2TOs1pBEO0j
LSIHog9PbtAE0QXuhbogeo7mVz0QPfNBjzGIFhHXNwHzD34PANEhBzXDQfQr
tbZUEP118VQw/UGfbQ8XkJ6wxO4giGZIenwNRHMwTr4OomfxHUnjBtI1bxTS
QbRc28EiEC1ySbECRAMAvTN2pw==
  "],
 TextAlignment->Center,ExpressionUUID->"975ca758-c74c-432e-b327-0dd5fb4c846c"],

Cell["The centrifugal effective force is", "Text",
 CellChangeTimes->{{3.5006942579307632`*^9, 3.5006942936508207`*^9}, {
  3.500694484634474*^9, 
  3.500694494064753*^9}},ExpressionUUID->"a57e96fb-707e-48a6-94f5-\
d75d0641c8ba"],

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
 TextAlignment->Center,ExpressionUUID->"8de4208e-99ce-497e-bc9f-64b2c829a266"],

Cell[TextData[{
 "For small angles, ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"sin", "(", "\[Theta]", ")"}], "\[TildeEqual]", "\[Theta]"}], 
   TraditionalForm]],
  CellChangeTimes->{3.5006541640755157`*^9},ExpressionUUID->
  "ee52d016-376f-48bb-a10c-b9c9a70729dc"],
 ", ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"cos", "(", "\[Theta]", ")"}], "\[TildeEqual]", "1"}], 
   TraditionalForm]],
  CellChangeTimes->{3.5006541640755157`*^9},ExpressionUUID->
  "7ea8173d-2d65-444e-b5b7-6364785309c3"],
 ".  Then equation (1) becomes"
}], "Text",
 CellChangeTimes->{{3.5006942579307632`*^9, 3.5006942936508207`*^9}, {
  3.500694484634474*^9, 3.5006945349799643`*^9}, {3.500694601701939*^9, 
  3.500694628738739*^9}},ExpressionUUID->"1be70cde-df6d-4e9b-9ad6-\
063d575ca4eb"],

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
 TextAlignment->Center,ExpressionUUID->"819234de-cd52-47ae-bf2d-1c6971d7602d"],

Cell[TextData[{
 "If ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SuperscriptBox["\[CapitalOmega]", "2"], ">", 
    FractionBox["g", "\[ScriptL]"]}], TraditionalForm]],
  CellChangeTimes->{3.5006541640755157`*^9},ExpressionUUID->
  "fa30d433-4416-47f4-a219-16ff1e7b6b8d"],
 ", the motion is no longer harmonic."
}], "Text",
 CellChangeTimes->{{3.5006942579307632`*^9, 3.5006942936508207`*^9}, {
  3.500694484634474*^9, 3.5006945349799643`*^9}, {3.500694601701939*^9, 
  3.500694628738739*^9}, {3.500694762784707*^9, 
  3.5006947870534253`*^9}},ExpressionUUID->"01c4f8e4-a42a-43b7-a85a-\
6eec6766fcc7"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Solution by least action", "Subsection",
 CellChangeTimes->{{3.5006542826410246`*^9, 3.5006542901622477`*^9}, {
  3.500693921408803*^9, 3.500693934647195*^9}},
 TextJustification->1.,ExpressionUUID->"fe9a7b24-7849-47b5-a20b-7d9cf11a2280"],

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
 TextJustification->1.,ExpressionUUID->"d098dac8-3e0d-468d-a201-5d08c601f809"],

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
 CellChangeTimes->{{3.500691859015758*^9, 
  3.500691909160242*^9}},ExpressionUUID->"1574ab95-a78a-4a30-b230-\
aab95fd04ff0"],

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
   3.5006950636946135`*^9},ExpressionUUID->"13bb93f0-07ee-40ca-9983-\
e0ba4c4835fe"]
}, Open  ]],

Cell[TextData[{
 "Converting to polar coordinates, and using the constraints that ",
 Cell[BoxData[
  FormBox[
   RowBox[{"\[Phi]", "=", 
    RowBox[{"\[CapitalOmega]", " ", "t"}]}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"2a24837b-a9ff-4dad-8539-7c93a6d024ae"],
 " and ",
 Cell[BoxData[
  FormBox[
   RowBox[{"r", "=", "\[ScriptL]"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"4330bfd6-f25f-4ee6-bf3b-9fa09d89f263"],
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
 TextJustification->1.,ExpressionUUID->"a9d8aa8e-b561-42e2-80f0-e4c347221936"],

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
 TextAlignment->Center,ExpressionUUID->"709a9d57-b84f-4a18-b5df-134b3603b493"],

Cell["gives", "Text",
 CellChangeTimes->{{3.5006930062387147`*^9, 
  3.500693011595873*^9}},ExpressionUUID->"5bc475c0-6e7b-4ba6-82b6-\
63e31215c4e9"],

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
  3.5006930229562097`*^9}, {3.500695051988267*^9, 
  3.50069508115213*^9}},ExpressionUUID->"146bbcb7-7300-47bf-9ac8-\
92b25eb6184a"],

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
   3.5006930238682365`*^9, 
   3.5006950864542875`*^9},ExpressionUUID->"08b67b75-09df-464d-af86-\
eba42395bf7e"],

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
     RowBox[{"cos", "(", "\[Theta]", ")"}]}]}]}], TraditionalForm]], "Output",\

 CellChangeTimes->{{3.5006920745171366`*^9, 3.500692083102391*^9}, {
   3.5006921208835087`*^9, 3.5006921302717867`*^9}, 3.5006921668208685`*^9, {
   3.5006922491843066`*^9, 3.5006922538044434`*^9}, {3.500692312705187*^9, 
   3.500692329575686*^9}, {3.5006923669277916`*^9, 3.500692395971651*^9}, 
   3.5006930238682365`*^9, 
   3.5006950866652937`*^9},ExpressionUUID->"da9a38c9-55f8-4c56-9241-\
08fd7a208734"],

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
   3.5006930238682365`*^9, 
   3.500695086686294*^9},ExpressionUUID->"e40e04b2-eeef-41a8-8154-\
c6b23f664885"]
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
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"979c4630-c20d-4364-872d-ed27ae862d7b"],
 " (Taylor expanding around ",
 Cell[BoxData[
  FormBox[
   RowBox[{"\[Theta]", "=", "0"}], TraditionalForm]],
  CellChangeTimes->{
   3.5006541640755157`*^9, {3.5006542325275416`*^9, 3.500654238071706*^9}},
  ExpressionUUID->"754250c6-63a3-4340-95a8-d96a0b8a682f"],
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
 TextJustification->1.,ExpressionUUID->"60069c70-e785-4394-9a79-9d88ae76cede"],

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
 TextAlignment->Center,ExpressionUUID->"2ad79ffc-8cb7-43b7-a30f-65163c91b21a"],

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
 TextJustification->1.,ExpressionUUID->"41d2723f-43ae-4ea3-9bfd-575fd3404cb2"],

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
 TextAlignment->Center,ExpressionUUID->"053ba6fc-11cc-4e4e-840b-0788e04d02dc"],

Cell[TextData[{
 "If ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SuperscriptBox["\[CapitalOmega]", "2"], ">", 
    FractionBox["g", "\[ScriptL]"]}], TraditionalForm]],
  CellChangeTimes->{3.5006541640755157`*^9},ExpressionUUID->
  "685ded6a-375b-43f4-bf18-ec499c3237af"],
 ", the motion is no longer harmonic."
}], "Text",
 CellChangeTimes->{{3.5006942579307632`*^9, 3.5006942936508207`*^9}, {
  3.500694484634474*^9, 3.5006945349799643`*^9}, {3.500694601701939*^9, 
  3.500694628738739*^9}, {3.500694762784707*^9, 
  3.5006947870534253`*^9}},ExpressionUUID->"5b8999fd-68b6-4219-a4f1-\
72ebb48f3afd"],

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
  3.500756661383447*^9}, {3.500756811549892*^9, 
  3.500756815565011*^9}},ExpressionUUID->"e85a764e-8fe4-4f7a-b843-\
58aff313382e"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
},
WindowSize->{960, 478},
WindowMargins->{{-5.5, Automatic}, {Automatic, -5.5}},
PrintingCopies->1,
PrintingPageRange->{Automatic, Automatic},
PrivateNotebookOptions->{"VersionedStylesheet"->{"Default.nb"[8.] -> False}},
CellLabelAutoDelete->True,
FrontEndVersion->"13.3 for Microsoft Windows (64-bit) (July 24, 2023)",
StyleDefinitions->"Default.nb",
ExpressionUUID->"e559c68b-d3bb-4c77-87a3-b10e8c05c5ec"
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
Cell[1510, 35, 244, 3, 98, "Title",ExpressionUUID->"f7a780ca-163c-4fe9-aaff-3c3b405559c4"],
Cell[1757, 40, 278, 6, 49, "Subtitle",ExpressionUUID->"436353ec-2c51-4913-b932-fc66e973b7dd"],
Cell[CellGroupData[{
Cell[2060, 50, 159, 3, 67, "Section",ExpressionUUID->"24de4d76-dfde-4ed5-baea-9e84a9aadd2d"],
Cell[2222, 55, 713, 17, 58, "Text",ExpressionUUID->"6aa5ef6b-1715-4031-b8c0-9bc49be59399"],
Cell[2938, 74, 712, 20, 42, "DisplayFormula",ExpressionUUID->"f1c3c26f-ee50-4f12-ab53-fbcf0b4389d8"],
Cell[3653, 96, 317, 7, 58, "Text",ExpressionUUID->"97330994-6404-4e12-ae53-140225c3e090"],
Cell[3973, 105, 588, 18, 44, "DisplayFormula",ExpressionUUID->"d1384dfb-2b8f-46f0-a27b-84c1615ba123"],
Cell[4564, 125, 267, 6, 35, "Text",ExpressionUUID->"acf85b22-f563-4424-86dc-9416d053d837"],
Cell[CellGroupData[{
Cell[4856, 135, 162, 3, 54, "Subsection",ExpressionUUID->"1d071c4b-4b3a-432f-971c-9099fafd998c"],
Cell[5021, 140, 328, 7, 35, "Text",ExpressionUUID->"99db0ca5-4486-442e-a2dc-1a5b93980678"],
Cell[5352, 149, 1758, 43, 35, "Text",ExpressionUUID->"ed45fb6a-a2ea-4427-91b6-96909d69eba4"],
Cell[7113, 194, 767, 20, 42, "DisplayFormula",ExpressionUUID->"eb99a6af-3eab-4e0b-be71-48385bae3578"],
Cell[7883, 216, 2522, 59, 58, "Text",ExpressionUUID->"38c8f30b-5009-4c16-9ba4-99675a4c06d9"],
Cell[10408, 277, 1513, 35, 58, "Text",ExpressionUUID->"0e889bd6-e5ab-47d8-aa8d-e770925cf40c"],
Cell[11924, 314, 637, 14, 25, "DisplayFormula",ExpressionUUID->"097a066e-6ab8-437b-a705-4493576fb356"],
Cell[12564, 330, 2653, 63, 58, "Text",ExpressionUUID->"1213ff0b-d8d4-4a93-8b0f-94bc517ae3ce"],
Cell[15220, 395, 1365, 29, 35, "Text",ExpressionUUID->"e4618deb-5a6c-4a64-969d-5d8c427a639c"],
Cell[16588, 426, 824, 17, 58, "Text",ExpressionUUID->"6da9870b-b001-4e7f-8d11-b3331f2a7381"],
Cell[17415, 445, 927, 24, 42, "DisplayFormula",ExpressionUUID->"719ae998-781e-4b82-a83a-e6f2873d41ea"],
Cell[18345, 471, 1626, 36, 58, "Text",ExpressionUUID->"e20f5d38-e649-4f2b-9129-6f5b653b774a"],
Cell[19974, 509, 1122, 26, 38, "Text",ExpressionUUID->"abd7a3bc-e9d9-4026-ae95-aeef6059bab4"],
Cell[21099, 537, 3006, 86, 125, "DisplayFormula",ExpressionUUID->"38f4b549-b774-45b2-8f8c-c9c23fc80e57"],
Cell[24108, 625, 349, 6, 35, "Text",ExpressionUUID->"a9b441f9-583f-42fc-bcbe-bfed7a5cc863"],
Cell[24460, 633, 1550, 40, 44, "DisplayFormula",ExpressionUUID->"44efb562-7b82-4913-b449-57e074169ea0"],
Cell[26013, 675, 438, 6, 35, "Text",ExpressionUUID->"7bb94feb-e3e3-4ee8-aa8b-3805758773f0"],
Cell[26454, 683, 2087, 56, 46, "DisplayFormula",ExpressionUUID->"dfde4564-ce3c-4d85-af34-e6fe8d650d8c"],
Cell[28544, 741, 1127, 26, 35, "Text",ExpressionUUID->"b62317da-d36b-44df-bdab-14ad6ee486a5"],
Cell[29674, 769, 1574, 39, 44, "DisplayFormula",ExpressionUUID->"5dabd31f-2b14-4731-97d0-48d331e27702"],
Cell[31251, 810, 1127, 23, 35, "Text",ExpressionUUID->"bac26b60-7b38-443c-9f7c-9b182034973b"],
Cell[32381, 835, 1235, 28, 42, "DisplayFormula",ExpressionUUID->"1feef19c-4bd0-4a67-b9dd-0dfd8106abe5"],
Cell[33619, 865, 523, 8, 35, "Text",ExpressionUUID->"58c97dc8-60c4-43cc-a12f-5e4cfcf474d7"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[34191, 879, 483, 13, 67, "Section",ExpressionUUID->"c7f1ed41-5afb-4698-a24f-06c933fcb6e1"],
Cell[34677, 894, 926, 25, 61, "Text",ExpressionUUID->"a4c5e336-bcb1-42e3-a461-9bc6a26bfcb5"],
Cell[CellGroupData[{
Cell[35628, 923, 1125, 34, 86, "Input",ExpressionUUID->"82a37c3d-d2c5-42f7-9b4c-53c33f1e0a39"],
Cell[36756, 959, 481, 15, 32, "Output",ExpressionUUID->"3e7d1ad5-3a31-401f-8665-c1d14caff624"]
}, Open  ]],
Cell[37252, 977, 262, 4, 35, "Text",ExpressionUUID->"65c62887-48b5-43c5-ba05-f78a6396623c"],
Cell[37517, 983, 615, 17, 65, "DisplayFormula",ExpressionUUID->"f7943cbe-6b22-44a3-87f2-5fa541d3399c"]
}, Open  ]],
Cell[CellGroupData[{
Cell[38169, 1005, 228, 4, 67, "Section",ExpressionUUID->"a7531bc8-5907-4e71-af10-676ca30e7b74"],
Cell[38400, 1011, 756, 20, 35, "Text",ExpressionUUID->"0df81ab8-2bce-4c43-8e95-48f654c15c22"],
Cell[39159, 1033, 762, 21, 44, "DisplayFormula",ExpressionUUID->"d19fcdf1-ec8c-43df-be50-b171c7ec6eb9"],
Cell[39924, 1056, 542, 17, 38, "Text",ExpressionUUID->"8612d786-ec91-499c-8496-f9dc16b2982a"],
Cell[40469, 1075, 874, 23, 87, "DisplayFormula",ExpressionUUID->"2aa62279-28a1-4a00-9cf2-f80b013ed4b1"],
Cell[41346, 1100, 181, 3, 35, "Text",ExpressionUUID->"730cf67c-b748-4c50-8345-d044a4663878"]
}, Open  ]],
Cell[CellGroupData[{
Cell[41564, 1108, 289, 4, 67, "Section",ExpressionUUID->"389c1e61-4d40-4491-a2e6-b53de65454c6"],
Cell[41856, 1114, 1019, 25, 61, "Text",ExpressionUUID->"fd9e9f8e-e874-475d-88d6-b45a8f4c079f"],
Cell[42878, 1141, 1212, 37, 102, "DisplayFormula",ExpressionUUID->"36906121-4d76-4564-8c5d-78be4aa330c9"],
Cell[44093, 1180, 275, 4, 35, "Text",ExpressionUUID->"1523697e-863b-4147-b59f-186ea062ed2a"]
}, Open  ]],
Cell[CellGroupData[{
Cell[44405, 1189, 327, 5, 67, "Section",ExpressionUUID->"55c6c85b-4333-43ff-8aa2-d392a434b7aa"],
Cell[44735, 1196, 349, 5, 35, "Text",ExpressionUUID->"aa79b6a2-85f4-4b15-9ef0-e541d789708d"],
Cell[45087, 1203, 607, 18, 44, "DisplayFormula",ExpressionUUID->"5fa9a89d-5c39-49d4-b4e2-554e50c08bdb"],
Cell[45697, 1223, 2007, 57, 63, "Text",ExpressionUUID->"159ee589-0643-4a9c-b063-fff6d8895734"],
Cell[CellGroupData[{
Cell[47729, 1284, 165, 3, 54, "Subsection",ExpressionUUID->"13550842-1f5b-46b4-ad8a-5a824363f95e"],
Cell[47897, 1289, 2815, 81, 90, "Text",ExpressionUUID->"91af3e5d-8a8c-4030-abd7-66343f4a6fe0"]
}, Open  ]],
Cell[CellGroupData[{
Cell[50749, 1375, 219, 4, 54, "Subsection",ExpressionUUID->"eb7853de-488c-4202-9c02-cdceb2773b2c"],
Cell[50971, 1381, 354, 5, 35, "Text",ExpressionUUID->"88a3715f-bf54-48a3-b3c9-a98e9de1cbc3"],
Cell[CellGroupData[{
Cell[51350, 1390, 1120, 32, 83, "Input",ExpressionUUID->"74b3f084-ac13-4bc5-9433-ab1ad62d78a4"],
Cell[52473, 1424, 725, 21, 48, "Output",ExpressionUUID->"83f527e4-7d67-45b4-8893-53f824482a22"]
}, Open  ]],
Cell[53213, 1448, 170, 3, 35, "Text",ExpressionUUID->"73cab032-f3c0-433a-a9ba-8a08623c51f0"],
Cell[CellGroupData[{
Cell[53408, 1455, 478, 14, 28, "Input",ExpressionUUID->"972a9ab3-aba0-473a-bbc7-4766860b40c5"],
Cell[53889, 1471, 539, 15, 50, "Output",ExpressionUUID->"8c247ea6-a3b6-4a6f-bf87-cce22a69a1bd"]
}, Open  ]],
Cell[54443, 1489, 2150, 55, 61, "Text",ExpressionUUID->"b599dac5-56d9-4f43-a196-89bf5479ac71"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[56642, 1550, 267, 4, 67, "Section",ExpressionUUID->"09b04eb7-0463-47e8-a753-9db06230f03f"],
Cell[CellGroupData[{
Cell[56934, 1558, 176, 2, 54, "Subsection",ExpressionUUID->"2242997e-2afd-40f2-8c8a-59427438fbf3"],
Cell[57113, 1562, 1569, 40, 58, "Text",ExpressionUUID->"acf6c777-7810-47b6-a4f4-b31599409261"]
}, Open  ]],
Cell[CellGroupData[{
Cell[58719, 1607, 179, 2, 54, "Subsection",ExpressionUUID->"0840fc51-5074-4773-ba7b-e9ff0ea2ac34"],
Cell[CellGroupData[{
Cell[58923, 1613, 155, 3, 45, "Subsubsection",ExpressionUUID->"f2f10360-37be-4bb4-bc8a-de18329916ab"],
Cell[59081, 1618, 1065, 27, 35, "Text",ExpressionUUID->"1259c48d-bbb0-42ed-8938-3b472f3eaee3"]
}, Open  ]],
Cell[CellGroupData[{
Cell[60183, 1650, 167, 3, 45, "Subsubsection",ExpressionUUID->"54839cd8-c9b2-4caf-a148-c3cbde6e36ff"],
Cell[60353, 1655, 954, 21, 35, "Text",ExpressionUUID->"0630103e-ff68-4322-a972-43d103bb95fa"],
Cell[61310, 1678, 2340, 76, 171, "DisplayFormula",ExpressionUUID->"25656580-e71a-4f8c-9384-afde1a781201"],
Cell[63653, 1756, 1463, 38, 55, "Text",ExpressionUUID->"c699b0e9-e7e4-4238-9d42-5be8b251860f"],
Cell[65119, 1796, 2363, 75, 190, "DisplayFormula",ExpressionUUID->"32bc5824-61ff-4202-8d2f-a7aaf46a9b10"],
Cell[67485, 1873, 588, 9, 35, "Text",ExpressionUUID->"fc7a548a-cb5e-4ff2-aa77-95349e4c794f"],
Cell[68076, 1884, 2326, 70, 148, "DisplayFormula",ExpressionUUID->"cf7f6d7f-e62c-4a7b-bae4-980d12be69d9"],
Cell[70405, 1956, 591, 8, 35, "Text",ExpressionUUID->"176d4f70-93ef-4afa-8306-f9c018c50531"],
Cell[70999, 1966, 902, 19, 25, "DisplayFormula",ExpressionUUID->"c7d212bd-076a-4da7-865f-c9e2eb8a0284"],
Cell[CellGroupData[{
Cell[71926, 1989, 491, 14, 31, "Input",ExpressionUUID->"dfd5eb75-7997-452f-a30d-37868fc5807d"],
Cell[72420, 2005, 315, 8, 32, "Output",ExpressionUUID->"75619821-7e44-4c4a-b33b-caaf26d5a75d"]
}, Open  ]],
Cell[72750, 2016, 1852, 48, 91, "DisplayFormula",ExpressionUUID->"9d777384-63ac-4341-b741-093a39e50066"],
Cell[74605, 2066, 710, 9, 35, "Text",ExpressionUUID->"7e1bdf9b-38b7-43c1-bdc5-6254d796e14a"],
Cell[75318, 2077, 1114, 23, 60, "DisplayFormula",ExpressionUUID->"061e495a-a707-4652-8e3d-44dd4b69e430"],
Cell[76435, 2102, 782, 11, 35, "Text",ExpressionUUID->"2f49a99e-e112-4cf7-8181-9d306e7ab623"],
Cell[CellGroupData[{
Cell[77242, 2117, 7413, 190, 257, "Input",ExpressionUUID->"11b10d04-ab34-4730-9d8f-d0e42a448ce6"],
Cell[84658, 2309, 3906, 73, 335, "Output",ExpressionUUID->"74e0f096-4b5c-41b1-855d-d2a2b992c1fa"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[88637, 2390, 247, 4, 67, "Section",ExpressionUUID->"b2dfaa61-8f5c-4c13-aff8-0341ea6dddc5"],
Cell[CellGroupData[{
Cell[88909, 2398, 176, 2, 54, "Subsection",ExpressionUUID->"62a37576-119d-4381-9196-d3cfcc1f34a5"],
Cell[89088, 2402, 1645, 40, 58, "Text",ExpressionUUID->"a61824f2-f4d2-43ec-8c1c-a2014154e959"]
}, Open  ]],
Cell[CellGroupData[{
Cell[90770, 2447, 179, 2, 54, "Subsection",ExpressionUUID->"e5d805ca-605d-4238-a32f-c6eca7f01761"],
Cell[CellGroupData[{
Cell[90974, 2453, 155, 3, 45, "Subsubsection",ExpressionUUID->"4cc2859a-ebbc-461e-ba36-54e776f0e13d"],
Cell[91132, 2458, 852, 15, 58, "Text",ExpressionUUID->"3d801e0b-7430-4f03-a59f-a57686d937c0"]
}, Open  ]],
Cell[CellGroupData[{
Cell[92021, 2478, 167, 3, 45, "Subsubsection",ExpressionUUID->"2d2d8cf8-b26a-4297-b45b-606131fc470e"],
Cell[92191, 2483, 1252, 26, 35, "Text",ExpressionUUID->"da90239c-48bd-43ab-af03-5ef050d97dda"],
Cell[93446, 2511, 2209, 64, 123, "DisplayFormula",ExpressionUUID->"173db5e4-7525-4926-aef1-50f7d37bc9ef"],
Cell[95658, 2577, 722, 21, 35, "Text",ExpressionUUID->"f566b8a9-7ff3-459e-9e60-98ad738c423e"],
Cell[96383, 2600, 1814, 42, 39, "Text",ExpressionUUID->"69e149b5-7592-41f5-b912-16c9e5d36b5d"],
Cell[98200, 2644, 1773, 49, 137, "DisplayFormula",ExpressionUUID->"1e5e1e24-5444-45af-8b23-212acab37623"],
Cell[99976, 2695, 2317, 61, 45, "Text",ExpressionUUID->"eccff35e-d9b0-423b-8d64-a0fd80e2f8b0"],
Cell[102296, 2758, 1068, 24, 51, "DisplayFormula",ExpressionUUID->"5026b29d-1feb-478f-8853-074f9226e06f"],
Cell[103367, 2784, 215, 4, 35, "Text",ExpressionUUID->"3b46f2a4-c33e-40d6-901e-69676accdc6f"],
Cell[103585, 2790, 1249, 27, 55, "DisplayFormula",ExpressionUUID->"06c29200-b4ef-4c21-9115-034d1a1a5c8e"],
Cell[104837, 2819, 512, 13, 35, "Text",ExpressionUUID->"6fe65f4e-a006-4f55-bdcf-a212ba9b3ecc"],
Cell[105352, 2834, 1218, 23, 38, "DisplayFormula",ExpressionUUID->"78be5683-fedd-40ec-a683-c101d8623442"],
Cell[106573, 2859, 407, 11, 35, "Text",ExpressionUUID->"d31b788e-0dbe-46f5-81e6-b24a80f73eec"],
Cell[106983, 2872, 707, 20, 35, "Text",ExpressionUUID->"e08f4dd9-326b-4ee1-9cc3-8d8a908aa2a9"],
Cell[CellGroupData[{
Cell[107715, 2896, 1897, 55, 93, "Input",ExpressionUUID->"995b9b61-4015-4721-bb34-370fef95f3c7"],
Cell[109615, 2953, 3064, 59, 288, "Output",ExpressionUUID->"aac11421-1d8c-4305-89d3-7d73d464380a"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[112752, 3020, 299, 5, 67, "Section",ExpressionUUID->"f7ef916e-51e5-4112-8a87-84fbe91a1040"],
Cell[113054, 3027, 164, 3, 35, "Text",ExpressionUUID->"956d9009-6933-4a61-a9c7-1ac5db0c4af6"],
Cell[CellGroupData[{
Cell[113243, 3034, 176, 2, 54, "Subsection",ExpressionUUID->"8a8ec052-3ad2-4cfa-aa4e-96f3d1cc92a1"],
Cell[113422, 3038, 9488, 159, 428, "Input",ExpressionUUID->"fd38e15d-0fc2-4668-a7d7-3ef099426f3b"],
Cell[122913, 3199, 4049, 94, 127, "Text",ExpressionUUID->"6c60a9c1-cb67-429c-8b60-55c25f9e353e"]
}, Open  ]],
Cell[CellGroupData[{
Cell[126999, 3298, 179, 2, 54, "Subsection",ExpressionUUID->"99a8b232-0715-4794-af61-e45e32ca8314"],
Cell[127181, 3302, 762, 11, 35, "Text",ExpressionUUID->"41437e2b-6bd6-42a3-94f0-dc7daa4d2307"],
Cell[CellGroupData[{
Cell[127968, 3317, 840, 26, 45, "Input",ExpressionUUID->"80a8b578-8ce7-483c-95a5-c3efe0ac1c74"],
Cell[128811, 3345, 785, 23, 48, "Output",ExpressionUUID->"4913c9c0-5669-428e-a8fc-60cd1211c5d0"]
}, Open  ]],
Cell[129611, 3371, 1470, 29, 35, "Text",ExpressionUUID->"22a3e8be-fe1f-43e0-8355-b06deed88544"],
Cell[131084, 3402, 1529, 32, 70, "DisplayFormula",ExpressionUUID->"1dac2f2f-1a26-4fc8-9a3d-e4ed0b809c10"],
Cell[132616, 3436, 149, 3, 35, "Text",ExpressionUUID->"d59b5221-29dc-46b1-a2c9-e726afeb1c78"],
Cell[CellGroupData[{
Cell[132790, 3443, 3556, 99, 144, "Input",ExpressionUUID->"6671ee2d-9202-4131-b1cc-d6a45fbf4663"],
Cell[136349, 3544, 1141, 27, 48, "Output",ExpressionUUID->"ee27ba31-c5cc-45ed-a739-81f65dc665d3"],
Cell[137493, 3573, 1470, 38, 49, "Output",ExpressionUUID->"022b1236-2ae8-4bcc-96f6-13bbf3abb9c9"],
Cell[138966, 3613, 959, 23, 50, "Output",ExpressionUUID->"6f58ab8e-bd4a-4061-9809-78b06c1f7c6a"]
}, Open  ]],
Cell[139940, 3639, 1109, 19, 35, "Text",ExpressionUUID->"c43512bb-e304-4758-9c35-07869adf9bc7"],
Cell[CellGroupData[{
Cell[141074, 3662, 1907, 54, 67, "Input",ExpressionUUID->"a1b6852b-8131-403d-9e93-2a612b970384"],
Cell[142984, 3718, 649, 18, 50, "Output",ExpressionUUID->"7b833ce1-96ed-4da3-a24c-348eaf4365f1"],
Cell[143636, 3738, 386, 10, 46, "Output",ExpressionUUID->"b11419db-322b-461f-b243-35119a743402"]
}, Open  ]],
Cell[144037, 3751, 910, 12, 35, "Text",ExpressionUUID->"06ff1aeb-9ff0-400f-8a49-7b442221d0f2"],
Cell[144950, 3765, 1101, 17, 50, "DisplayFormula",ExpressionUUID->"af11b59e-8c71-4cbf-b981-5740071c4831"],
Cell[146054, 3784, 971, 28, 35, "Text",ExpressionUUID->"d8d39078-ff1f-4a45-9b40-88ba8d0218b9"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[147074, 3818, 222, 4, 67, "Section",ExpressionUUID->"21b9350f-4932-4e24-986a-148582c3b16d"],
Cell[CellGroupData[{
Cell[147321, 3826, 176, 2, 54, "Subsection",ExpressionUUID->"d3524eb6-f7f6-4457-b71a-1ec0e0cc39ea"],
Cell[147500, 3830, 1185, 25, 81, "Text",ExpressionUUID->"b9b39d29-3c1d-424b-a425-007a728411dd"],
Cell[148688, 3857, 13015, 219, 172, "Input",ExpressionUUID->"a8b8c5ff-c06b-4eab-af14-402d170775c7"]
}, Open  ]],
Cell[CellGroupData[{
Cell[161740, 4081, 289, 4, 54, "Subsection",ExpressionUUID->"28a6b252-06b8-427c-9197-cf998f4bf31e"],
Cell[162032, 4087, 174, 3, 35, "Text",ExpressionUUID->"e2c006c6-1883-4076-8dbe-6792de5dc3c0"],
Cell[162209, 4092, 35843, 592, 301, "Input",ExpressionUUID->"5eb9d009-6880-4a56-8eed-4302fb634f2b"],
Cell[198055, 4686, 181, 3, 35, "Text",ExpressionUUID->"51402ef2-4f85-4c64-93d6-e06ebb3e7e85"],
Cell[198239, 4691, 1267, 21, 27, "DisplayFormula",ExpressionUUID->"f25535b4-d566-4c41-9a46-b58db29222ba"],
Cell[199509, 4714, 977, 24, 29, "DisplayFormulaNumbered",ExpressionUUID->"975ca758-c74c-432e-b327-0dd5fb4c846c"],
Cell[200489, 4740, 229, 4, 35, "Text",ExpressionUUID->"a57e96fb-707e-48a6-94f5-d75d0641c8ba"],
Cell[200721, 4746, 742, 18, 25, "DisplayFormula",ExpressionUUID->"8de4208e-99ce-497e-bc9f-64b2c829a266"],
Cell[201466, 4766, 787, 22, 35, "Text",ExpressionUUID->"1be70cde-df6d-4e9b-9ad6-063d575ca4eb"],
Cell[202256, 4790, 1473, 39, 106, "DisplayFormula",ExpressionUUID->"819234de-cd52-47ae-bf2d-1c6971d7602d"],
Cell[203732, 4831, 601, 15, 38, "Text",ExpressionUUID->"01c4f8e4-a42a-43b7-a85a-6eec6766fcc7"]
}, Open  ]],
Cell[CellGroupData[{
Cell[204370, 4851, 244, 3, 54, "Subsection",ExpressionUUID->"fe9a7b24-7849-47b5-a20b-7d9cf11a2280"],
Cell[204617, 4856, 759, 11, 35, "Text",ExpressionUUID->"d098dac8-3e0d-468d-a201-5d08c601f809"],
Cell[CellGroupData[{
Cell[205401, 4871, 840, 26, 45, "Input",ExpressionUUID->"1574ab95-a78a-4a30-b230-aab95fd04ff0"],
Cell[206244, 4899, 810, 23, 48, "Output",ExpressionUUID->"13bb93f0-07ee-40ca-9983-e0ba4c4835fe"]
}, Open  ]],
Cell[207069, 4925, 1534, 29, 35, "Text",ExpressionUUID->"a9d8aa8e-b561-42e2-80f0-e4c347221936"],
Cell[208606, 4956, 1632, 33, 70, "DisplayFormula",ExpressionUUID->"709a9d57-b84f-4a18-b5df-134b3603b493"],
Cell[210241, 4991, 149, 3, 35, "Text",ExpressionUUID->"5bc475c0-6e7b-4ba6-82b6-63e31215c4e9"],
Cell[CellGroupData[{
Cell[210415, 4998, 3663, 100, 144, "Input",ExpressionUUID->"146bbcb7-7300-47bf-9ac8-92b25eb6184a"],
Cell[214081, 5100, 1228, 28, 48, "Output",ExpressionUUID->"08b67b75-09df-464d-af86-eba42395bf7e"],
Cell[215312, 5130, 1531, 39, 49, "Output",ExpressionUUID->"da9a38c9-55f8-4c56-9241-08fd7a208734"],
Cell[216846, 5171, 1010, 24, 50, "Output",ExpressionUUID->"e40e04b2-eeef-41a8-8154-c6b23f664885"]
}, Open  ]],
Cell[217871, 5198, 1676, 33, 81, "Text",ExpressionUUID->"60069c70-e785-4394-9a79-9d88ae76cede"],
Cell[219550, 5233, 871, 22, 39, "DisplayFormula",ExpressionUUID->"2ad79ffc-8cb7-43b7-a30f-65163c91b21a"],
Cell[220424, 5257, 1030, 15, 35, "Text",ExpressionUUID->"41d2723f-43ae-4ea3-9bfd-575fd3404cb2"],
Cell[221457, 5274, 693, 16, 46, "DisplayFormula",ExpressionUUID->"053ba6fc-11cc-4e4e-840b-0788e04d02dc"],
Cell[222153, 5292, 601, 15, 38, "Text",ExpressionUUID->"5b8999fd-68b6-4219-a4f1-72ebb48f3afd"],
Cell[222757, 5309, 1425, 36, 105, "Input",ExpressionUUID->"e85a764e-8fe4-4f7a-b843-58aff313382e"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature Bu0o0zn3710jVB1I#inQY9gV *)
