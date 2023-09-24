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
NotebookDataLength[      4554,        107]
NotebookOptionsPosition[      5048,        102]
NotebookOutlinePosition[      5530,        122]
CellTagsIndexPosition[      5487,        119]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
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
    360., {70., 75.16393977234443}}, Typeset`update$$ = 0, Typeset`initDone$$,
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
     ImageSizeCache->{642., {99.634033203125, 105.365966796875}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",ExpressionUUID->"66754a2f-\
3254-43ef-9a4b-84caa232c980"]
},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
ShowCellBracket->Automatic,
Deployed->True,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"13.3 for Microsoft Windows (64-bit) (July 24, 2023)",
StyleDefinitions->"Default.nb",
ExpressionUUID->"2739d4ba-98bb-46cb-ad1d-991fd0ace225"
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
Cell[1488, 33, 3556, 67, 32, "Output",ExpressionUUID->"66754a2f-3254-43ef-9a4b-84caa232c980"]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature iw0Enb2VZRETTAKBGoF4Khb9 *)
