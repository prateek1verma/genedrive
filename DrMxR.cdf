(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 12.0' *)

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
NotebookDataLength[     56212,       1328]
NotebookOptionsPosition[     55356,       1301]
NotebookOutlinePosition[     55694,       1316]
CellTagsIndexPosition[     55651,       1313]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["DrMxR  (Drive Mixer)", "Title",
 CellChangeTimes->{{3.791116520431237*^9, 3.79111656282701*^9}, {
  3.791117368249481*^9, 3.79111736916218*^9}, {3.791702163321794*^9, 
  3.7917021698942537`*^9}},ExpressionUUID->"dea076a2-ca19-42a0-91a6-\
e9053665d30d"],

Cell[TextData[{
 "Prateek ",
 Cell[BoxData[
  FormBox[
   SuperscriptBox["Verma", "1"], TraditionalForm]],
  FormatType->"TraditionalForm",ExpressionUUID->
  "1aba553f-c6de-45a1-bd68-170b3ad82845"],
 ", R. Guy ",
 Cell[BoxData[
  FormBox[
   SuperscriptBox["Reeves", "2"], TraditionalForm]],
  FormatType->"TraditionalForm",ExpressionUUID->
  "fc041c43-73d2-443c-b4cd-93ad17228671"],
 " and Chaitanya S. ",
 Cell[BoxData[
  FormBox[
   SuperscriptBox["Gokhale", "1"], TraditionalForm]],
  FormatType->"TraditionalForm",ExpressionUUID->
  "0ea1030b-b526-4cfa-b379-b48608a8a42e"],
 "\n",
 Cell[BoxData[
  FormBox[
   SuperscriptBox["", "1"], TraditionalForm]],
  FormatType->"TraditionalForm",ExpressionUUID->
  "5c26c8ab-e124-4bf6-83a0-a75dc615293e"],
 "Research Group for Theoretical Models of Eco-evolutionary Dynamics, \
Department of Evolutionary Theory, Max Planck Institute for Evolutionary \
Biology, Pl",
 Cell[BoxData[
  FormBox[
   OverscriptBox[
    StyleBox["o",
     FontSlant->"Plain"], ".."], TraditionalForm]],
  FormatType->"TraditionalForm",ExpressionUUID->
  "dde8cbff-01f0-4c79-a1d6-eb5099bd5a7c"],
 "n, Germany\n",
 Cell[BoxData[
  FormBox[
   SuperscriptBox["", "2"], TraditionalForm]],
  FormatType->"TraditionalForm",ExpressionUUID->
  "c598b162-b3e7-42d4-98f4-2b1f0396fb2a"],
 "Department of Evolutionary Genetics, Max Planck Institute for Evolutionary \
Biology, Pl",
 Cell[BoxData[
  FormBox[
   OverscriptBox[
    StyleBox["o",
     FontSlant->"Plain"], ".."], TraditionalForm]],ExpressionUUID->
  "35389d66-e64a-4d39-96aa-6c8c75ee382e"],
 "n, Germany"
}], "Author",
 CellChangeTimes->{{3.7911167575156918`*^9, 3.791116773962865*^9}, {
  3.79112140839957*^9, 3.791121413003335*^9}, {3.79170221740206*^9, 
  3.7917022578599663`*^9}, {3.7917023777821627`*^9, 3.791702473869383*^9}, {
  3.791702508454357*^9, 3.791702530114419*^9}, {3.791705652015541*^9, 
  3.791705679374729*^9}},ExpressionUUID->"1c29d2ba-8f74-49d2-b06e-\
f5b232ac5944"],

Cell["\<\
Synthetic gene drive technologies aim to spread transgenic constructs into \
wild populations even when they impose organismal fitness disadvantages. The \
properties of gene drive constructs are diverse and depend on their molecular \
construction, and differential selection pressured they impose in the varied \
ecological situations they encounter. The extraordinary diversity of \
conceivable drive mechanisms and the range of selective parameters they may \
encounter makes it very difficult to convey their relative predicted \
properties. The sheer number of published manuscripts in this field, \
experimental and theoretical, is a testament to the possibilities presented \
by this technology. We evaluate and condense the essential synthetic drive \
mechanisms from a variety of studies and present a unified mathematical \
paradigm (and a user - friendly tool DrMxR) describing the properties of a \
wide variety of single construct gene drives (non-suppression). Within this \
common framework, we have been able to recapitulate key published results \
derived using bespoke modelling frameworks. Because a unified framework is \
employed, it is also possible to seamlessly explore the consequences of \
combining multiple drive approaches within a single construct. We provide a \
method for analytically assessing the measure of invasiveness of a drive \
construct. As opposed to typical studies of synthetic drives, we explore the \
resilience of such drives in a spatially explicit manner advancing the \
connection between realistic spatial dynamics and typical well-mixed \
populations. Besides a scientific advance, our results and the tools provided \
an intuitive and objective way for regulators, scientists and NGOs to \
evaluate the properties and robustness of proposed and future gene drive \
approaches.\
\>", "Abstract",
 CellChangeTimes->{{3.791119314384894*^9, 3.79111934912035*^9}, {
   3.791119429761929*^9, 3.791119443901498*^9}, 3.7911209012562723`*^9},
 TextJustification->1.,ExpressionUUID->"4cf1338a-504d-4853-b06f-342749e74766"],

Cell[CellGroupData[{

Cell["DrMxR (Drive Mixer)", "Chapter",
 CellChangeTimes->{{3.791119216793105*^9, 3.791119235009972*^9}, {
  3.79170215610037*^9, 
  3.7917021600486927`*^9}},ExpressionUUID->"8c02ae75-3ef6-46e6-a2eb-\
f84f5cade347"],

Cell["\<\
Drive MixeR is  a tool which is able to mix and match a number of \
single-locus replacement gene drive scenarios. The user can control three \
different features of the drive - Fertility selection, Distortion and \
Viability selection. For a range of options, the user can observe the \
resulting dynamics of the wildtype WW, wildtype-drive heterozygote WD and the \
drive homozygote DD genotypes. Population consist of single genotype at the \
vertices of a triangle in de Finetti diagram. A point in the interior \
corresponds to the population composition where all three of the genotypes \
potentially exist. Their relative abundance is proportional to the distance \
from the vertices. The black parabola curve represents Hardy-Weinberg \
equilibrium. The white open point represent the position of the fixed points. \
Colours exhibit speed of the dynamics inside de Finetti plots. \
\>", "Text",
 CellChangeTimes->{{3.791121003365778*^9, 3.791121074835823*^9}, {
  3.791705349134706*^9, 3.791705409953493*^9}, {3.791706812752717*^9, 
  3.791706814311483*^9}},ExpressionUUID->"ee92aad3-ae63-4a5e-8c73-\
62f2a9c1c32a"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"\[IndentingNewLine]", 
  RowBox[{"Manipulate", "[", 
   RowBox[{
    RowBox[{"Show", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"StreamDensityPlot", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"xdotcart", "[", 
             RowBox[{
             "xcart", ",", "ycart", ",", "ffww", ",", "ffwd", ",", "ffdd", 
              ",", "p", ",", "d", ",", "\[Omega]", ",", "\[Nu]", ",", "e", 
              ",", "g"}], "]"}], ",", 
            RowBox[{"ydotcart", "[", 
             RowBox[{
             "xcart", ",", "ycart", ",", "ffww", ",", "ffwd", ",", "ffdd", 
              ",", "p", ",", "d", ",", "\[Omega]", ",", "\[Nu]", ",", "e", 
              ",", "g"}], "]"}]}], "}"}], ",", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"xcart", ",", "ycart"}], "}"}], "\[Element]", 
           "\[ScriptCapitalD]"}], ",", 
          RowBox[{"StreamStyle", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"Arrowheads", "[", "0.025", "]"}], ",", 
             RowBox[{"Darker", "[", "Gray", "]"}]}], "}"}]}], ",", " ", 
          RowBox[{"StreamPoints", "\[Rule]", "Automatic"}], ",", 
          RowBox[{"ColorFunction", "\[Rule]", "\"\<LightTemperatureMap\>\""}],
           ",", 
          RowBox[{"ColorFunctionScaling", "\[Rule]", "True"}], ",", 
          RowBox[{"PlotLegends", "\[Rule]", 
           RowBox[{"Placed", "[", 
            RowBox[{
             RowBox[{"BarLegend", "[", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"Automatic", ",", 
                 RowBox[{"{", 
                  RowBox[{"0", ",", "1"}], "}"}]}], "}"}], ",", 
               RowBox[{"LegendMarkerSize", "\[Rule]", "150"}], ",", 
               RowBox[{"LegendLabel", "\[Rule]", "\"\<Relative speed\>\""}]}],
               "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"0.85", ",", "0.7"}], "}"}]}], "]"}]}], ",", 
          RowBox[{"Mesh", "\[Rule]", "None"}], ",", 
          RowBox[{"Frame", "\[Rule]", "None"}], ",", 
          RowBox[{"PlotLabel", "\[Rule]", 
           RowBox[{"Style", "[", 
            RowBox[{"\"\<Gene Drive Dynamics\>\"", ",", "\"\<Subtitle\>\""}], 
            "]"}]}]}], "]"}], ",", "\[IndentingNewLine]", "leftri", ",", 
        "\[IndentingNewLine]", "rightri", ",", "\[IndentingNewLine]", "downl",
         ",", "Tri", ",", "HWparabola1", ",", 
        RowBox[{
         RowBox[{"sol1", " ", "=", " ", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"xcart", ",", "ycart"}], "}"}], "/.", 
           RowBox[{"Chop", "[", 
            RowBox[{"Quiet", "[", 
             RowBox[{"NSolve", "[", " ", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                 RowBox[{
                  RowBox[{"xdotcart", "[", 
                   RowBox[{
                   "xcart", ",", "ycart", ",", "ffww", ",", "ffwd", ",", 
                    "ffdd", ",", "p", ",", "d", ",", "\[Omega]", ",", "\[Nu]",
                     ",", "e", ",", "g"}], "]"}], "\[Equal]", "0"}], ",", 
                 RowBox[{
                  RowBox[{"ydotcart", "[", 
                   RowBox[{
                   "xcart", ",", "ycart", ",", "ffww", ",", "ffwd", ",", 
                    "ffdd", ",", "p", ",", "d", ",", "\[Omega]", ",", "\[Nu]",
                     ",", "e", ",", "g"}], "]"}], "\[Equal]", "0"}], ",", 
                 RowBox[{"xcart", "<", "0.999"}], ",", 
                 RowBox[{"xcart", ">", "0.0001"}], ",", 
                 RowBox[{"ycart", ">", "0.0001"}]}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"xcart", ",", "ycart"}], "}"}]}], "]"}], "]"}], 
            "]"}]}]}], ";", 
         RowBox[{"ListPlot", "[", 
          RowBox[{"sol1", ",", 
           RowBox[{"PlotMarkers", "\[Rule]", 
            RowBox[{"{", 
             RowBox[{"\"\<OpenMarkers\>\"", ",", "10"}], "}"}]}], ",", 
           RowBox[{"PlotStyle", "\[Rule]", "Black"}]}], "]"}]}]}], "}"}], ",",
       "\[IndentingNewLine]", 
      RowBox[{"AspectRatio", "\[Rule]", "Automatic"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"ImageSize", "\[Rule]", 
       RowBox[{"{", 
        RowBox[{"400", ",", "400"}], "}"}]}], ",", "\[IndentingNewLine]", 
      RowBox[{"Epilog", "\[Rule]", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Inset", "[", 
          RowBox[{
           RowBox[{"Style", "[", 
            RowBox[{"\"\<DD\>\"", ",", "18"}], "]"}], ",", 
           RowBox[{"{", 
            RowBox[{"1.", ",", 
             RowBox[{"-", "0.05"}]}], "}"}]}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Inset", "[", 
          RowBox[{
           RowBox[{"Style", "[", 
            RowBox[{"\"\<WW\>\"", ",", "18"}], "]"}], ",", 
           RowBox[{"{", 
            RowBox[{"0", ",", 
             RowBox[{"-", "0.05"}]}], "}"}]}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Inset", "[", 
          RowBox[{
           RowBox[{"Style", "[", 
            RowBox[{"\"\<WD\>\"", ",", "18"}], "]"}], ",", 
           RowBox[{"{", 
            RowBox[{"0.5", ",", "0.9"}], "}"}]}], "]"}]}], "}"}]}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"BaseStyle", "\[Rule]", 
       RowBox[{"{", 
        RowBox[{"10", ",", 
         RowBox[{"FontFamily", "\[Rule]", "\"\<Palatino-Roman\>\""}]}], 
        "}"}]}]}], "\[IndentingNewLine]", "]"}], ",", 
    RowBox[{"Style", "[", 
     RowBox[{"\"\<Fertility Selection\>\"", ",", "16", ",", "Bold"}], "]"}], 
    ",", "\[IndentingNewLine]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"ffww", ",", "1", ",", 
        RowBox[{"Style", "[", 
         RowBox[{
         "\"\<Fertility of WW, \!\(\*SubscriptBox[\(f\), \(WW\)]\)\>\"", ",", 
          "11"}], "]"}]}], "}"}], ",", "0", ",", "1"}], "}"}], ",", 
    "\[IndentingNewLine]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"ffwd", ",", "1", ",", 
        RowBox[{"Style", "[", 
         RowBox[{
         "\"\<Fertility of WD, \!\(\*SubscriptBox[\(f\), \(WD\)]\)\>\"", ",", 
          "11"}], "]"}]}], "}"}], ",", "0", ",", "1"}], "}"}], ",", 
    "\[IndentingNewLine]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"ffdd", ",", "1", ",", 
        RowBox[{"Style", "[", 
         RowBox[{
         "\"\<Fertility of DD, \!\(\*SubscriptBox[\(f\), \(DD\)]\)\>\"", ",", 
          "11"}], "]"}]}], "}"}], ",", "0", ",", "1"}], "}"}], ",", 
    "\[IndentingNewLine]", "\[IndentingNewLine]", "Delimiter", ",", 
    RowBox[{"Style", "[", 
     RowBox[{"\"\<Distortion\>\"", ",", "16", ",", "Bold"}], "]"}], ",", 
    "\[IndentingNewLine]", "\[IndentingNewLine]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"p", ",", "0.5", ",", 
        RowBox[{"Style", "[", 
         RowBox[{"\"\<Drive efficiency, p\>\"", ",", "11"}], "]"}]}], "}"}], 
      ",", "0.5", ",", "1"}], "}"}], ",", "\[IndentingNewLine]", 
    "\[IndentingNewLine]", "Delimiter", ",", 
    RowBox[{"Style", "[", 
     RowBox[{"\"\<Viability Selection\>\"", ",", "16", ",", "Bold"}], "]"}], 
    ",", "\[IndentingNewLine]", "\[IndentingNewLine]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"\[Omega]", ",", "1", ",", 
        RowBox[{"Style", "[", 
         RowBox[{"\"\<Viability of WD, \[Omega]\>\"", ",", "11"}], "]"}]}], 
       "}"}], ",", "0", ",", "1"}], "}"}], ",", "\[IndentingNewLine]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"\[Nu]", ",", "1", ",", 
        RowBox[{"Style", "[", 
         RowBox[{"\"\<Viability of DD, \[Nu]\>\"", ",", "11"}], "]"}]}], 
       "}"}], ",", "0", ",", "1"}], "}"}], ",", "\[IndentingNewLine]", 
    RowBox[{"Style", "[", 
     RowBox[{"\"\<Specific drive efficiencies\>\"", ",", "11", ",", "Bold"}], 
     "]"}], ",", "\[IndentingNewLine]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"d", ",", "0", ",", 
        RowBox[{"Style", "[", 
         RowBox[{
         "\"\<Medea, \!\(\*SubscriptBox[\(d\), \(m\)]\)\>\"", ",", "11"}], 
         "]"}]}], "}"}], ",", "0", ",", "1"}], "}"}], ",", 
    "\[IndentingNewLine]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"g", ",", "0", ",", 
        RowBox[{"Style", "[", 
         RowBox[{
         "\"\<Inverse Medea, \!\(\*SubscriptBox[\(d\), \(im\)]\)\>\"", ",", 
          "11"}], "]"}]}], "}"}], ",", "0", ",", "1"}], "}"}], ",", 
    "\[IndentingNewLine]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"e", ",", "0", ",", 
        RowBox[{"Style", "[", 
         RowBox[{
         "\"\<Semele, \!\(\*SubscriptBox[\(d\), \(s\)]\)\>\"", ",", "11"}], 
         "]"}]}], "}"}], ",", "0", ",", "1"}], "}"}], ",", 
    RowBox[{"Button", "[", 
     RowBox[{"\"\<Reset\>\"", ",", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"ffww", "=", "1"}], ",", 
        RowBox[{"ffwd", "=", "1"}], ",", 
        RowBox[{"ffdd", "=", "1"}], ",", 
        RowBox[{"p", "=", "0.5"}], ",", 
        RowBox[{"d", "=", "0"}], ",", 
        RowBox[{"\[Omega]", "=", "1"}], ",", 
        RowBox[{"\[Nu]", "=", "1"}], ",", 
        RowBox[{"e", "=", "0"}], ",", 
        RowBox[{"g", "=", "0"}]}], "}"}]}], "]"}], ",", 
    RowBox[{"Initialization", "\[RuleDelayed]", 
     RowBox[{"{", "\[IndentingNewLine]", "\n", 
      RowBox[{
       RowBox[{
        RowBox[{"xwd", "[", 
         RowBox[{"xww_", ",", "xdd_"}], "]"}], " ", ":=", " ", 
        RowBox[{"1", "-", "xww", "-", "xdd"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"fww", " ", "[", 
         RowBox[{
         "xww_", ",", "xdd_", ",", "ffww_", ",", "ffwd_", ",", "ffdd_", ",", 
          "p_", ",", "d_", ",", "e_"}], "]"}], ":=", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"ffww", "*", "ffww", " ", "xww", " ", "xww"}], " ", "+", 
          " ", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{"1", "-", "p"}], ")"}], 
           RowBox[{"(", 
            RowBox[{"1", "-", 
             RowBox[{"e", "/", "2"}]}], ")"}], "*", "ffww", "*", "ffwd", " ", 
           "xww", " ", 
           RowBox[{"xwd", "[", 
            RowBox[{"xww", ",", "xdd"}], "]"}]}], " ", "+", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{"1", "-", "d"}], ")"}], 
           RowBox[{"(", 
            RowBox[{"1", "-", 
             RowBox[{"e", "/", "2"}]}], ")"}], 
           RowBox[{"(", 
            RowBox[{"1", "-", "p"}], ")"}], "*", "ffww", "*", "ffwd", " ", 
           "xww", " ", 
           RowBox[{"xwd", "[", 
            RowBox[{"xww", ",", "xdd"}], "]"}]}], "+", " ", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{"1", "-", "d"}], ")"}], 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"1", "-", "p"}], ")"}], "^", "2"}], " ", "*", "ffwd", 
           "*", "ffwd", " ", 
           RowBox[{"xwd", "[", 
            RowBox[{"xww", ",", "xdd"}], "]"}], " ", 
           RowBox[{"xwd", "[", 
            RowBox[{"xww", ",", "xdd"}], "]"}]}]}], ")"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"fdd", "[", 
         RowBox[{
         "xww_", ",", "xdd_", ",", "ffww_", ",", "ffwd_", ",", "ffdd_", ",", 
          "p_", ",", "s_"}], "]"}], " ", ":=", " ", 
        RowBox[{"\[Nu]", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"ffdd", "*", "ffdd", " ", "xdd", " ", "xdd"}], "+", " ", 
           RowBox[{
           "2", " ", "p", " ", "*", "ffdd", "*", "ffwd", " ", "xdd", " ", 
            RowBox[{"xwd", "[", 
             RowBox[{"xww", ",", "xdd"}], "]"}]}], "+", " ", 
           RowBox[{
            RowBox[{"p", "^", "2"}], " ", "*", "ffwd", "*", "ffwd", " ", 
            RowBox[{"xwd", "[", 
             RowBox[{"xww", ",", "xdd"}], "]"}], 
            RowBox[{"xwd", "[", 
             RowBox[{"xww", ",", "xdd"}], "]"}]}]}], ")"}]}]}], ";", " ", 
       "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"fwd", "[", 
         RowBox[{
         "xww_", ",", "xdd_", ",", "ffww_", ",", "ffwd_", ",", "ffdd_", ",", 
          "p_", ",", "\[Omega]_", ",", "\[Nu]_", ",", "e_", ",", "g_"}], 
         "]"}], " ", ":=", " ", 
        RowBox[{"\[Omega]", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"2", " ", "p", " ", 
            RowBox[{"(", 
             RowBox[{"1", "-", "p"}], ")"}], "*", "ffwd", "*", "ffwd", " ", 
            RowBox[{"xwd", "[", 
             RowBox[{"xww", ",", "xdd"}], "]"}], "*", 
            RowBox[{"xwd", "[", 
             RowBox[{"xww", ",", "xdd"}], "]"}]}], "+", " ", 
           RowBox[{"2", 
            RowBox[{"(", 
             RowBox[{"1", "-", "p"}], ")"}], "*", "ffdd", "*", "ffwd", " ", 
            "xdd", " ", 
            RowBox[{"xwd", "[", 
             RowBox[{"xww", ",", "xdd"}], "]"}]}], "+", 
           RowBox[{"2", " ", 
            RowBox[{"(", 
             RowBox[{"1", "-", 
              RowBox[{"e", "/", "2"}]}], ")"}], 
            RowBox[{"(", 
             RowBox[{"1", "-", 
              RowBox[{"g", "/", "2"}]}], ")"}], "*", " ", "p", " ", "ffww", 
            "*", "ffwd", " ", "xww", " ", 
            RowBox[{"xwd", "[", 
             RowBox[{"xww", ",", "xdd"}], "]"}]}], "+", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{"2", "-", "e"}], ")"}], 
              RowBox[{
               RowBox[{"(", 
                RowBox[{"2", "-", "g"}], ")"}], "/", "2"}]}], ")"}], "*", 
            "ffdd", "*", "ffww", " ", "xdd", " ", "xww"}]}], ")"}]}]}], ";", 
       " ", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"ftot", "[", 
         RowBox[{
         "xww_", ",", "xdd_", ",", "ffww_", ",", "ffwd_", ",", "ffdd_", ",", 
          "p_", ",", "d_", ",", "\[Omega]_", ",", "\[Nu]_", ",", "e_", ",", 
          "g_"}], "]"}], ":=", " ", 
        RowBox[{
         RowBox[{"fww", "[", 
          RowBox[{
          "xww", ",", "xdd", ",", "ffww", ",", "ffwd", ",", "ffdd", ",", "p", 
           ",", "d", ",", "e"}], "]"}], "+", 
         RowBox[{"fwd", "[", 
          RowBox[{
          "xww", ",", "xdd", ",", "ffww", ",", "ffwd", ",", "ffdd", ",", "p", 
           ",", "\[Omega]", ",", "\[Nu]", ",", "e", ",", "g"}], "]"}], "+", 
         RowBox[{"fdd", "[", 
          RowBox[{
          "xww", ",", "xdd", ",", "ffww", ",", "ffwd", ",", "ffdd", ",", "p", 
           ",", "\[Nu]"}], "]"}]}]}], ";", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"xdot", "[", 
         RowBox[{
         "xww_", ",", "xdd_", ",", "ffww_", ",", "ffwd_", ",", "ffdd_", ",", 
          "p_", ",", "d_", ",", "\[Omega]_", ",", "\[Nu]_", ",", "e_", ",", 
          "g_"}], "]"}], " ", ":=", " ", 
        RowBox[{
         RowBox[{"fww", "[", 
          RowBox[{
          "xww", ",", "xdd", ",", "ffww", ",", "ffwd", ",", "ffdd", ",", "p", 
           ",", "d", ",", "e"}], "]"}], "-", 
         RowBox[{"xww", "*", 
          RowBox[{"ftot", "[", 
           RowBox[{
           "xww", ",", "xdd", ",", "ffww", ",", "ffwd", ",", "ffdd", ",", "p",
             ",", "d", ",", "\[Omega]", ",", "\[Nu]", ",", "e", ",", "g"}], 
           "]"}]}]}]}], ";", " ", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"ydot", "[", 
         RowBox[{
         "xww_", ",", "xdd_", ",", "ffww_", ",", "ffwd_", ",", "ffdd_", ",", 
          "p_", ",", "d_", ",", "\[Omega]_", ",", "\[Nu]_", ",", "e_", ",", 
          "g_"}], "]"}], " ", ":=", " ", 
        RowBox[{
         RowBox[{"fdd", "[", 
          RowBox[{
          "xww", ",", "xdd", ",", "ffww", ",", "ffwd", ",", "ffdd", ",", "p", 
           ",", "\[Nu]"}], "]"}], "-", 
         RowBox[{"xdd", "*", 
          RowBox[{"ftot", "[", 
           RowBox[{
           "xww", ",", "xdd", ",", "ffww", ",", "ffwd", ",", "ffdd", ",", "p",
             ",", "d", ",", "\[Omega]", ",", "\[Nu]", ",", "e", ",", "g"}], 
           "]"}]}]}]}], ";", " ", "\[IndentingNewLine]", 
       "\[IndentingNewLine]", 
       RowBox[{"(*", " ", 
        RowBox[{"Coordinates", " ", "of", " ", "S3", " ", "triangle"}], " ", 
        "*)"}], "\[IndentingNewLine]", 
       RowBox[{"x1", " ", "=", " ", "0"}], ";", " ", 
       RowBox[{"y1", " ", "=", " ", "0"}], ";", "\[IndentingNewLine]", 
       RowBox[{"x3", " ", "=", " ", "0.5"}], ";", " ", 
       RowBox[{"y3", " ", "=", " ", 
        RowBox[{
         RowBox[{"Sqrt", "[", "3", "]"}], "/", "2"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"x2", " ", "=", " ", "1"}], ";", " ", 
       RowBox[{"y2", " ", "=", " ", "0"}], ";", "\[IndentingNewLine]", 
       RowBox[{"(*", " ", 
        RowBox[{
        "Transforamtion", " ", "from", " ", "barycentric", " ", "to", " ", 
         "Cartesian"}], " ", "*)"}], "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"xncart", "[", 
         RowBox[{"x_", ",", "y_"}], "]"}], " ", ":=", " ", 
        RowBox[{
         RowBox[{"x1", " ", "x"}], "+", 
         RowBox[{"x2", " ", "y"}], " ", "+", " ", 
         RowBox[{"x3", " ", 
          RowBox[{"(", 
           RowBox[{"1", "-", "x", "-", "y"}], ")"}]}]}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"yncart", "[", 
         RowBox[{"x_", ",", "y_"}], "]"}], " ", ":=", " ", 
        RowBox[{
         RowBox[{"y1", " ", "x"}], "+", 
         RowBox[{"y2", " ", "y"}], " ", "+", " ", 
         RowBox[{"y3", " ", 
          RowBox[{"(", 
           RowBox[{"1", "-", "x", "-", "y"}], ")"}]}]}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"lamda1", "[", 
         RowBox[{"xcart_", ",", "ycart_"}], "]"}], ":=", " ", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"(", 
             RowBox[{"y2", "-", "y3"}], ")"}], 
            RowBox[{"(", 
             RowBox[{"xcart", "-", "x3"}], ")"}]}], "+", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"x3", "-", "x2"}], ")"}], 
            RowBox[{"(", 
             RowBox[{"ycart", "-", "y3"}], ")"}]}]}], ")"}], "/", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"(", 
             RowBox[{"y2", "-", "y3"}], ")"}], 
            RowBox[{"(", 
             RowBox[{"x1", "-", "x3"}], ")"}]}], "+", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"x3", "-", "x2"}], ")"}], 
            RowBox[{"(", 
             RowBox[{"y1", "-", "y3"}], ")"}]}]}], ")"}]}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"lamda2", "[", 
         RowBox[{"xcart_", ",", "ycart_"}], "]"}], ":=", " ", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"(", 
             RowBox[{"y3", "-", "y1"}], ")"}], "*", 
            RowBox[{"(", 
             RowBox[{"xcart", "-", "x3"}], ")"}]}], "+", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"x1", "-", "x3"}], ")"}], 
            RowBox[{"(", 
             RowBox[{"ycart", "-", "y3"}], ")"}]}]}], ")"}], "/", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"(", 
             RowBox[{"y2", "-", "y3"}], ")"}], 
            RowBox[{"(", 
             RowBox[{"x1", "-", "x3"}], ")"}]}], "+", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"x3", "-", "x2"}], ")"}], 
            RowBox[{"(", 
             RowBox[{"y1", "-", "y3"}], ")"}]}]}], ")"}]}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"xdotcart", "[", 
         RowBox[{
         "xcart_", ",", "ycart_", ",", "ffww_", ",", "ffwd_", ",", "ffdd_", 
          ",", "p_", ",", "d_", ",", "\[Omega]_", ",", "\[Nu]_", ",", "e_", 
          ",", "g_"}], "]"}], ":=", 
        RowBox[{
         RowBox[{
          RowBox[{"(", 
           RowBox[{"x1", "-", "x3"}], ")"}], "*", 
          RowBox[{"xdot", "[", 
           RowBox[{
            RowBox[{"lamda1", "[", 
             RowBox[{"xcart", ",", "ycart"}], "]"}], ",", 
            RowBox[{"lamda2", "[", 
             RowBox[{"xcart", ",", "ycart"}], "]"}], ",", "ffww", ",", "ffwd",
             ",", "ffdd", ",", "p", ",", "d", ",", "\[Omega]", ",", "\[Nu]", 
            ",", "e", ",", "g"}], "]"}]}], "+", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"x2", "-", "x3"}], ")"}], "*", 
          RowBox[{"ydot", "[", 
           RowBox[{
            RowBox[{"lamda1", "[", 
             RowBox[{"xcart", ",", "ycart"}], "]"}], ",", 
            RowBox[{"lamda2", "[", 
             RowBox[{"xcart", ",", "ycart"}], "]"}], ",", "ffww", ",", "ffwd",
             ",", "ffdd", ",", "p", ",", "d", ",", "\[Omega]", ",", "\[Nu]", 
            ",", "e", ",", "g"}], "]"}]}]}]}], ";", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"ydotcart", "[", 
         RowBox[{
         "xcart_", ",", "ycart_", ",", "ffww_", ",", "ffwd_", ",", "ffdd_", 
          ",", "p_", ",", "d_", ",", "\[Omega]_", ",", "\[Nu]_", ",", "e_", 
          ",", "g_"}], "]"}], ":=", 
        RowBox[{
         RowBox[{
          RowBox[{"(", 
           RowBox[{"y1", "-", "y3"}], ")"}], "*", 
          RowBox[{"xdot", "[", 
           RowBox[{
            RowBox[{"lamda1", "[", 
             RowBox[{"xcart", ",", "ycart"}], "]"}], ",", 
            RowBox[{"lamda2", "[", 
             RowBox[{"xcart", ",", "ycart"}], "]"}], ",", "ffww", ",", "ffwd",
             ",", "ffdd", ",", "p", ",", "d", ",", "\[Omega]", ",", "\[Nu]", 
            ",", "e", ",", "g"}], "]"}]}], "+", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"y2", "-", "y3"}], ")"}], "*", 
          RowBox[{"ydot", "[", 
           RowBox[{
            RowBox[{"lamda1", "[", 
             RowBox[{"xcart", ",", "ycart"}], "]"}], ",", 
            RowBox[{"lamda2", "[", 
             RowBox[{"xcart", ",", "ycart"}], "]"}], ",", "ffww", ",", "ffwd",
             ",", "ffdd", ",", "p", ",", "d", ",", "\[Omega]", ",", "\[Nu]", 
            ",", "e", ",", "g"}], "]"}]}]}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"\[ScriptCapitalD]", "=", 
        RowBox[{"Triangle", "[", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"x1", ",", "y1"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"x2", ",", "y2"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"x3", ",", "y3"}], "}"}]}], "}"}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"HWparabola1", "=", 
        RowBox[{"Plot", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"Sqrt", "[", "3", "]"}], " ", "x", 
           RowBox[{"(", 
            RowBox[{"1", "-", "x"}], ")"}]}], ",", 
          RowBox[{"{", 
           RowBox[{"x", ",", "0", ",", "1"}], "}"}], ",", 
          RowBox[{"PlotStyle", "\[Rule]", "Black"}]}], "]"}]}], ";"}], 
      "\[IndentingNewLine]", "}"}]}], ",", 
    RowBox[{"AppearanceElements", "\[Rule]", "\"\<ResetButton\>\""}]}], "]"}],
   " "}]], "Input",
 CellChangeTimes->{{3.791701963260668*^9, 3.7917019877191677`*^9}, {
   3.791702047171788*^9, 3.7917020601096363`*^9}, 3.791702286698703*^9, {
   3.7917028805765333`*^9, 3.791702926363833*^9}, {3.791702973357819*^9, 
   3.791702978041769*^9}, {3.7917030148785458`*^9, 3.7917034527278967`*^9}, {
   3.7917035084750547`*^9, 3.79170353459966*^9}, {3.79170378102349*^9, 
   3.791703781727206*^9}, {3.7917038494632063`*^9, 3.791703970938591*^9}, {
   3.791704124445023*^9, 3.791704196223824*^9}, {3.791704424569186*^9, 
   3.7917044982010317`*^9}, {3.7917046657157707`*^9, 
   3.7917046955438004`*^9}, {3.791704741621657*^9, 3.791704753095085*^9}, {
   3.7917048558691893`*^9, 3.791704864830914*^9}, {3.791704909171904*^9, 
   3.791704932601136*^9}, {3.791705185926836*^9, 3.791705212110861*^9}, {
   3.791705245380991*^9, 3.7917052695536203`*^9}},
 CellLabel->"In[20]:=",ExpressionUUID->"5a8cfc92-a3e5-4c12-a89c-72f90df28112"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`d$$ = 0, $CellContext`e$$ = 
    0, $CellContext`ffdd$$ = 1, $CellContext`ffwd$$ = 1, $CellContext`ffww$$ =
     1, $CellContext`g$$ = 0, $CellContext`p$$ = 0.5, $CellContext`\[Nu]$$ = 
    1, $CellContext`\[Omega]$$ = 1, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{
      Hold[
       Style["Fertility Selection", 16, Bold]], 
      Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`ffww$$], 1, 
       Style["Fertility of WW, \!\(\*SubscriptBox[\(f\), \(WW\)]\)", 11]}, 0, 
      1}, {{
       Hold[$CellContext`ffwd$$], 1, 
       Style["Fertility of WD, \!\(\*SubscriptBox[\(f\), \(WD\)]\)", 11]}, 0, 
      1}, {{
       Hold[$CellContext`ffdd$$], 1, 
       Style["Fertility of DD, \!\(\*SubscriptBox[\(f\), \(DD\)]\)", 11]}, 0, 
      1}, {
      Hold[
       Style["Distortion", 16, Bold]], Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`p$$], 0.5, 
       Style["Drive efficiency, p", 11]}, 0.5, 1}, {
      Hold[
       Style["Viability Selection", 16, Bold]], 
      Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`\[Omega]$$], 1, 
       Style["Viability of WD, \[Omega]", 11]}, 0, 1}, {{
       Hold[$CellContext`\[Nu]$$], 1, 
       Style["Viability of DD, \[Nu]", 11]}, 0, 1}, {
      Hold[
       Style["Specific drive efficiencies", 11, Bold]], 
      Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`d$$], 0, 
       Style["Medea, \!\(\*SubscriptBox[\(d\), \(m\)]\)", 11]}, 0, 1}, {{
       Hold[$CellContext`g$$], 0, 
       Style["Inverse Medea, \!\(\*SubscriptBox[\(d\), \(im\)]\)", 11]}, 0, 
      1}, {{
       Hold[$CellContext`e$$], 0, 
       Style["Semele, \!\(\*SubscriptBox[\(d\), \(s\)]\)", 11]}, 0, 1}, {
      Hold[
       Button[
       "Reset", {$CellContext`ffww$$ = 1, $CellContext`ffwd$$ = 
         1, $CellContext`ffdd$$ = 1, $CellContext`p$$ = 0.5, $CellContext`d$$ = 
         0, $CellContext`\[Omega]$$ = 1, $CellContext`\[Nu]$$ = 
         1, $CellContext`e$$ = 0, $CellContext`g$$ = 0}]], 
      Manipulate`Dump`ThisIsNotAControl}}, Typeset`size$$ = {
    600., {296., 304.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`ffww$207406$$ = 
    0, $CellContext`ffwd$207407$$ = 0, $CellContext`ffdd$207408$$ = 
    0, $CellContext`p$207409$$ = 0, $CellContext`\[Omega]$207410$$ = 
    0, $CellContext`\[Nu]$207411$$ = 0, $CellContext`d$207412$$ = 
    0, $CellContext`g$207413$$ = 0, $CellContext`e$207414$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`d$$ = 0, $CellContext`e$$ = 
        0, $CellContext`ffdd$$ = 1, $CellContext`ffwd$$ = 
        1, $CellContext`ffww$$ = 1, $CellContext`g$$ = 0, $CellContext`p$$ = 
        0.5, $CellContext`\[Nu]$$ = 1, $CellContext`\[Omega]$$ = 1}, 
      "ControllerVariables" :> {
        Hold[$CellContext`ffww$$, $CellContext`ffww$207406$$, 0], 
        Hold[$CellContext`ffwd$$, $CellContext`ffwd$207407$$, 0], 
        Hold[$CellContext`ffdd$$, $CellContext`ffdd$207408$$, 0], 
        Hold[$CellContext`p$$, $CellContext`p$207409$$, 0], 
        Hold[$CellContext`\[Omega]$$, $CellContext`\[Omega]$207410$$, 0], 
        Hold[$CellContext`\[Nu]$$, $CellContext`\[Nu]$207411$$, 0], 
        Hold[$CellContext`d$$, $CellContext`d$207412$$, 0], 
        Hold[$CellContext`g$$, $CellContext`g$207413$$, 0], 
        Hold[$CellContext`e$$, $CellContext`e$207414$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Show[{
         StreamDensityPlot[{
           $CellContext`xdotcart[$CellContext`xcart, $CellContext`ycart, \
$CellContext`ffww$$, $CellContext`ffwd$$, $CellContext`ffdd$$, \
$CellContext`p$$, $CellContext`d$$, $CellContext`\[Omega]$$, $CellContext`\
\[Nu]$$, $CellContext`e$$, $CellContext`g$$], 
           $CellContext`ydotcart[$CellContext`xcart, $CellContext`ycart, \
$CellContext`ffww$$, $CellContext`ffwd$$, $CellContext`ffdd$$, \
$CellContext`p$$, $CellContext`d$$, $CellContext`\[Omega]$$, $CellContext`\
\[Nu]$$, $CellContext`e$$, $CellContext`g$$]}, 
          
          Element[{$CellContext`xcart, $CellContext`ycart}, $CellContext`\
\[ScriptCapitalD]], StreamStyle -> {
            Arrowheads[0.025], 
            Darker[Gray]}, StreamPoints -> Automatic, ColorFunction -> 
          "LightTemperatureMap", ColorFunctionScaling -> True, PlotLegends -> 
          Placed[
            
            BarLegend[{Automatic, {0, 1}}, LegendMarkerSize -> 150, 
             LegendLabel -> "Relative speed"], {0.85, 0.7}], Mesh -> None, 
          Frame -> None, PlotLabel -> 
          Style["Gene Drive Dynamics", 
            "Subtitle"]], $CellContext`leftri, $CellContext`rightri, \
$CellContext`downl, $CellContext`Tri, $CellContext`HWparabola1, \
$CellContext`sol1 = ReplaceAll[{$CellContext`xcart, $CellContext`ycart}, 
            Chop[
             Quiet[
              
              NSolve[{$CellContext`xdotcart[$CellContext`xcart, \
$CellContext`ycart, $CellContext`ffww$$, $CellContext`ffwd$$, \
$CellContext`ffdd$$, $CellContext`p$$, $CellContext`d$$, \
$CellContext`\[Omega]$$, $CellContext`\[Nu]$$, $CellContext`e$$, \
$CellContext`g$$] == 
                0, $CellContext`ydotcart[$CellContext`xcart, \
$CellContext`ycart, $CellContext`ffww$$, $CellContext`ffwd$$, \
$CellContext`ffdd$$, $CellContext`p$$, $CellContext`d$$, \
$CellContext`\[Omega]$$, $CellContext`\[Nu]$$, $CellContext`e$$, \
$CellContext`g$$] == 0, $CellContext`xcart < 0.999, $CellContext`xcart > 
                0.0001, $CellContext`ycart > 
                0.0001}, {$CellContext`xcart, $CellContext`ycart}]]]]; 
         ListPlot[$CellContext`sol1, PlotMarkers -> {"OpenMarkers", 10}, 
           PlotStyle -> Black]}, AspectRatio -> Automatic, 
        ImageSize -> {400, 400}, Epilog -> {
          Inset[
           Style["DD", 18], {1., -0.05}], 
          Inset[
           Style["WW", 18], {0, -0.05}], 
          Inset[
           Style["WD", 18], {0.5, 0.9}]}, 
        BaseStyle -> {10, FontFamily -> "Palatino-Roman"}], "Specifications" :> {
        Style["Fertility Selection", 16, Bold], {{$CellContext`ffww$$, 1, 
          Style["Fertility of WW, \!\(\*SubscriptBox[\(f\), \(WW\)]\)", 11]}, 
         0, 1}, {{$CellContext`ffwd$$, 1, 
          Style["Fertility of WD, \!\(\*SubscriptBox[\(f\), \(WD\)]\)", 11]}, 
         0, 1}, {{$CellContext`ffdd$$, 1, 
          Style["Fertility of DD, \!\(\*SubscriptBox[\(f\), \(DD\)]\)", 11]}, 
         0, 1}, Delimiter, 
        Style["Distortion", 16, Bold], {{$CellContext`p$$, 0.5, 
          Style["Drive efficiency, p", 11]}, 0.5, 1}, Delimiter, 
        Style[
        "Viability Selection", 16, Bold], {{$CellContext`\[Omega]$$, 1, 
          Style["Viability of WD, \[Omega]", 11]}, 0, 
         1}, {{$CellContext`\[Nu]$$, 1, 
          Style["Viability of DD, \[Nu]", 11]}, 0, 1}, 
        Style["Specific drive efficiencies", 11, Bold], {{$CellContext`d$$, 0, 
          Style["Medea, \!\(\*SubscriptBox[\(d\), \(m\)]\)", 11]}, 0, 
         1}, {{$CellContext`g$$, 0, 
          Style["Inverse Medea, \!\(\*SubscriptBox[\(d\), \(im\)]\)", 11]}, 0,
          1}, {{$CellContext`e$$, 0, 
          Style["Semele, \!\(\*SubscriptBox[\(d\), \(s\)]\)", 11]}, 0, 1}, 
        Button[
        "Reset", {$CellContext`ffww$$ = 1, $CellContext`ffwd$$ = 
          1, $CellContext`ffdd$$ = 1, $CellContext`p$$ = 
          0.5, $CellContext`d$$ = 0, $CellContext`\[Omega]$$ = 
          1, $CellContext`\[Nu]$$ = 1, $CellContext`e$$ = 0, $CellContext`g$$ = 
          0}]}, "Options" :> {AppearanceElements -> "ResetButton"}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{1148., {340., 348.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`xwd[
          Pattern[$CellContext`xww, 
           Blank[]], 
          Pattern[$CellContext`xdd, 
           Blank[]]] := 
        1 - $CellContext`xww - $CellContext`xdd; $CellContext`fww[
          Pattern[$CellContext`xww, 
           Blank[]], 
          Pattern[$CellContext`xdd, 
           Blank[]], 
          Pattern[$CellContext`ffww, 
           Blank[]], 
          Pattern[$CellContext`ffwd, 
           Blank[]], 
          Pattern[$CellContext`ffdd, 
           Blank[]], 
          Pattern[$CellContext`p, 
           Blank[]], 
          Pattern[$CellContext`d, 
           Blank[]], 
          Pattern[$CellContext`e, 
           
           Blank[]]] := $CellContext`ffww $CellContext`ffww $CellContext`xww \
$CellContext`xww + (1 - $CellContext`p) (1 - $CellContext`e/
           2) $CellContext`ffww $CellContext`ffwd $CellContext`xww \
$CellContext`xwd[$CellContext`xww, $CellContext`xdd] + (1 - $CellContext`d) (
           1 - $CellContext`e/2) (
           1 - $CellContext`p) $CellContext`ffww $CellContext`ffwd \
$CellContext`xww $CellContext`xwd[$CellContext`xww, $CellContext`xdd] + (
           1 - $CellContext`d) (
            1 - $CellContext`p)^2 $CellContext`ffwd $CellContext`ffwd \
$CellContext`xwd[$CellContext`xww, $CellContext`xdd] \
$CellContext`xwd[$CellContext`xww, $CellContext`xdd]; $CellContext`fdd[
          Pattern[$CellContext`xww$, 
           Blank[]], 
          Pattern[$CellContext`xdd$, 
           Blank[]], 
          Pattern[$CellContext`ffww$, 
           Blank[]], 
          Pattern[$CellContext`ffwd$, 
           Blank[]], 
          Pattern[$CellContext`ffdd$, 
           Blank[]], 
          Pattern[$CellContext`p$, 
           Blank[]], 
          Pattern[$CellContext`s$, 
           
           Blank[]]] := $CellContext`\[Nu]$$ ($CellContext`ffdd$ \
$CellContext`ffdd$ $CellContext`xdd$ $CellContext`xdd$ + 
          
          2 $CellContext`p$ $CellContext`ffdd$ $CellContext`ffwd$ \
$CellContext`xdd$ $CellContext`xwd[$CellContext`xww$, $CellContext`xdd$] + \
$CellContext`p$^2 $CellContext`ffwd$ $CellContext`ffwd$ \
$CellContext`xwd[$CellContext`xww$, $CellContext`xdd$] \
$CellContext`xwd[$CellContext`xww$, $CellContext`xdd$]); $CellContext`fwd[
          Pattern[$CellContext`xww, 
           Blank[]], 
          Pattern[$CellContext`xdd, 
           Blank[]], 
          Pattern[$CellContext`ffww, 
           Blank[]], 
          Pattern[$CellContext`ffwd, 
           Blank[]], 
          Pattern[$CellContext`ffdd, 
           Blank[]], 
          Pattern[$CellContext`p, 
           Blank[]], 
          Pattern[$CellContext`\[Omega], 
           Blank[]], 
          Pattern[$CellContext`\[Nu], 
           Blank[]], 
          Pattern[$CellContext`e, 
           Blank[]], 
          Pattern[$CellContext`g, 
           Blank[]]] := $CellContext`\[Omega] (
          2 $CellContext`p (
            1 - $CellContext`p) $CellContext`ffwd $CellContext`ffwd \
$CellContext`xwd[$CellContext`xww, $CellContext`xdd] \
$CellContext`xwd[$CellContext`xww, $CellContext`xdd] + 
          2 (1 - $CellContext`p) $CellContext`ffdd $CellContext`ffwd \
$CellContext`xdd $CellContext`xwd[$CellContext`xww, $CellContext`xdd] + 
          2 (1 - $CellContext`e/2) (1 - $CellContext`g/
            2) $CellContext`p $CellContext`ffww $CellContext`ffwd \
$CellContext`xww $CellContext`xwd[$CellContext`xww, $CellContext`xdd] + ((
             2 - $CellContext`e) ((2 - $CellContext`g)/
             2)) $CellContext`ffdd $CellContext`ffww $CellContext`xdd \
$CellContext`xww); $CellContext`ftot[
          Pattern[$CellContext`xww, 
           Blank[]], 
          Pattern[$CellContext`xdd, 
           Blank[]], 
          Pattern[$CellContext`ffww, 
           Blank[]], 
          Pattern[$CellContext`ffwd, 
           Blank[]], 
          Pattern[$CellContext`ffdd, 
           Blank[]], 
          Pattern[$CellContext`p, 
           Blank[]], 
          Pattern[$CellContext`d, 
           Blank[]], 
          Pattern[$CellContext`\[Omega], 
           Blank[]], 
          Pattern[$CellContext`\[Nu], 
           Blank[]], 
          Pattern[$CellContext`e, 
           Blank[]], 
          Pattern[$CellContext`g, 
           
           Blank[]]] := $CellContext`fww[$CellContext`xww, $CellContext`xdd, \
$CellContext`ffww, $CellContext`ffwd, $CellContext`ffdd, $CellContext`p, \
$CellContext`d, $CellContext`e] + $CellContext`fwd[$CellContext`xww, \
$CellContext`xdd, $CellContext`ffww, $CellContext`ffwd, $CellContext`ffdd, \
$CellContext`p, $CellContext`\[Omega], $CellContext`\[Nu], $CellContext`e, \
$CellContext`g] + $CellContext`fdd[$CellContext`xww, $CellContext`xdd, \
$CellContext`ffww, $CellContext`ffwd, $CellContext`ffdd, $CellContext`p, \
$CellContext`\[Nu]]; $CellContext`xdot[
          Pattern[$CellContext`xww, 
           Blank[]], 
          Pattern[$CellContext`xdd, 
           Blank[]], 
          Pattern[$CellContext`ffww, 
           Blank[]], 
          Pattern[$CellContext`ffwd, 
           Blank[]], 
          Pattern[$CellContext`ffdd, 
           Blank[]], 
          Pattern[$CellContext`p, 
           Blank[]], 
          Pattern[$CellContext`d, 
           Blank[]], 
          Pattern[$CellContext`\[Omega], 
           Blank[]], 
          Pattern[$CellContext`\[Nu], 
           Blank[]], 
          Pattern[$CellContext`e, 
           Blank[]], 
          Pattern[$CellContext`g, 
           
           Blank[]]] := $CellContext`fww[$CellContext`xww, $CellContext`xdd, \
$CellContext`ffww, $CellContext`ffwd, $CellContext`ffdd, $CellContext`p, \
$CellContext`d, $CellContext`e] - $CellContext`xww \
$CellContext`ftot[$CellContext`xww, $CellContext`xdd, $CellContext`ffww, \
$CellContext`ffwd, $CellContext`ffdd, $CellContext`p, $CellContext`d, \
$CellContext`\[Omega], $CellContext`\[Nu], $CellContext`e, $CellContext`g]; \
$CellContext`ydot[
          Pattern[$CellContext`xww, 
           Blank[]], 
          Pattern[$CellContext`xdd, 
           Blank[]], 
          Pattern[$CellContext`ffww, 
           Blank[]], 
          Pattern[$CellContext`ffwd, 
           Blank[]], 
          Pattern[$CellContext`ffdd, 
           Blank[]], 
          Pattern[$CellContext`p, 
           Blank[]], 
          Pattern[$CellContext`d, 
           Blank[]], 
          Pattern[$CellContext`\[Omega], 
           Blank[]], 
          Pattern[$CellContext`\[Nu], 
           Blank[]], 
          Pattern[$CellContext`e, 
           Blank[]], 
          Pattern[$CellContext`g, 
           
           Blank[]]] := $CellContext`fdd[$CellContext`xww, $CellContext`xdd, \
$CellContext`ffww, $CellContext`ffwd, $CellContext`ffdd, $CellContext`p, \
$CellContext`\[Nu]] - $CellContext`xdd $CellContext`ftot[$CellContext`xww, \
$CellContext`xdd, $CellContext`ffww, $CellContext`ffwd, $CellContext`ffdd, \
$CellContext`p, $CellContext`d, $CellContext`\[Omega], $CellContext`\[Nu], \
$CellContext`e, $CellContext`g]; $CellContext`x1 = 0; $CellContext`y1 = 
        0; $CellContext`x3 = 0.5; $CellContext`y3 = 
        Sqrt[3]/2; $CellContext`x2 = 1; $CellContext`y2 = 
        0; $CellContext`xncart[
          Pattern[$CellContext`x, 
           Blank[]], 
          Pattern[$CellContext`y, 
           
           Blank[]]] := $CellContext`x1 $CellContext`x + $CellContext`x2 \
$CellContext`y + $CellContext`x3 (
           1 - $CellContext`x - $CellContext`y); $CellContext`yncart[
          Pattern[$CellContext`x, 
           Blank[]], 
          Pattern[$CellContext`y, 
           
           Blank[]]] := $CellContext`y1 $CellContext`x + $CellContext`y2 \
$CellContext`y + $CellContext`y3 (
           1 - $CellContext`x - $CellContext`y); $CellContext`lamda1[
          Pattern[$CellContext`xcart, 
           Blank[]], 
          Pattern[$CellContext`ycart, 
           
           Blank[]]] := (($CellContext`y2 - $CellContext`y3) \
($CellContext`xcart - $CellContext`x3) + ($CellContext`x3 - $CellContext`x2) \
($CellContext`ycart - $CellContext`y3))/(($CellContext`y2 - $CellContext`y3) \
($CellContext`x1 - $CellContext`x3) + ($CellContext`x3 - $CellContext`x2) \
($CellContext`y1 - $CellContext`y3)); $CellContext`lamda2[
          Pattern[$CellContext`xcart, 
           Blank[]], 
          Pattern[$CellContext`ycart, 
           
           Blank[]]] := (($CellContext`y3 - $CellContext`y1) \
($CellContext`xcart - $CellContext`x3) + ($CellContext`x1 - $CellContext`x3) \
($CellContext`ycart - $CellContext`y3))/(($CellContext`y2 - $CellContext`y3) \
($CellContext`x1 - $CellContext`x3) + ($CellContext`x3 - $CellContext`x2) \
($CellContext`y1 - $CellContext`y3)); $CellContext`xdotcart[
          Pattern[$CellContext`xcart, 
           Blank[]], 
          Pattern[$CellContext`ycart, 
           Blank[]], 
          Pattern[$CellContext`ffww, 
           Blank[]], 
          Pattern[$CellContext`ffwd, 
           Blank[]], 
          Pattern[$CellContext`ffdd, 
           Blank[]], 
          Pattern[$CellContext`p, 
           Blank[]], 
          Pattern[$CellContext`d, 
           Blank[]], 
          Pattern[$CellContext`\[Omega], 
           Blank[]], 
          Pattern[$CellContext`\[Nu], 
           Blank[]], 
          Pattern[$CellContext`e, 
           Blank[]], 
          Pattern[$CellContext`g, 
           
           Blank[]]] := ($CellContext`x1 - $CellContext`x3) \
$CellContext`xdot[
            $CellContext`lamda1[$CellContext`xcart, $CellContext`ycart], 
            $CellContext`lamda2[$CellContext`xcart, $CellContext`ycart], \
$CellContext`ffww, $CellContext`ffwd, $CellContext`ffdd, $CellContext`p, \
$CellContext`d, $CellContext`\[Omega], $CellContext`\[Nu], $CellContext`e, \
$CellContext`g] + ($CellContext`x2 - $CellContext`x3) $CellContext`ydot[
            $CellContext`lamda1[$CellContext`xcart, $CellContext`ycart], 
            $CellContext`lamda2[$CellContext`xcart, $CellContext`ycart], \
$CellContext`ffww, $CellContext`ffwd, $CellContext`ffdd, $CellContext`p, \
$CellContext`d, $CellContext`\[Omega], $CellContext`\[Nu], $CellContext`e, \
$CellContext`g]; $CellContext`ydotcart[
          Pattern[$CellContext`xcart, 
           Blank[]], 
          Pattern[$CellContext`ycart, 
           Blank[]], 
          Pattern[$CellContext`ffww, 
           Blank[]], 
          Pattern[$CellContext`ffwd, 
           Blank[]], 
          Pattern[$CellContext`ffdd, 
           Blank[]], 
          Pattern[$CellContext`p, 
           Blank[]], 
          Pattern[$CellContext`d, 
           Blank[]], 
          Pattern[$CellContext`\[Omega], 
           Blank[]], 
          Pattern[$CellContext`\[Nu], 
           Blank[]], 
          Pattern[$CellContext`e, 
           Blank[]], 
          Pattern[$CellContext`g, 
           
           Blank[]]] := ($CellContext`y1 - $CellContext`y3) \
$CellContext`xdot[
            $CellContext`lamda1[$CellContext`xcart, $CellContext`ycart], 
            $CellContext`lamda2[$CellContext`xcart, $CellContext`ycart], \
$CellContext`ffww, $CellContext`ffwd, $CellContext`ffdd, $CellContext`p, \
$CellContext`d, $CellContext`\[Omega], $CellContext`\[Nu], $CellContext`e, \
$CellContext`g] + ($CellContext`y2 - $CellContext`y3) $CellContext`ydot[
            $CellContext`lamda1[$CellContext`xcart, $CellContext`ycart], 
            $CellContext`lamda2[$CellContext`xcart, $CellContext`ycart], \
$CellContext`ffww, $CellContext`ffwd, $CellContext`ffdd, $CellContext`p, \
$CellContext`d, $CellContext`\[Omega], $CellContext`\[Nu], $CellContext`e, \
$CellContext`g]; $CellContext`\[ScriptCapitalD] = 
        Triangle[{{$CellContext`x1, $CellContext`y1}, {$CellContext`x2, \
$CellContext`y2}, {$CellContext`x3, $CellContext`y3}}]; \
$CellContext`HWparabola1 = 
        Plot[Sqrt[3] $CellContext`x (1 - $CellContext`x), {$CellContext`x, 0, 
           1}, PlotStyle -> Black]; Null}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{{3.7917019664228354`*^9, 3.791701990311548*^9}, 
   3.791702062587953*^9, 3.791702301665515*^9, 3.7917034740966673`*^9, 
   3.791703547893835*^9, 3.7917036601895857`*^9, 3.791703974439509*^9, {
   3.7917042464073887`*^9, 3.7917042664402857`*^9}, 3.791704501436509*^9, 
   3.791704777286314*^9, 3.791704870403974*^9, 3.791704933776767*^9, {
   3.791705188436129*^9, 3.791705212769548*^9}, 3.791705276067774*^9},
 CellLabel->"Out[20]=",ExpressionUUID->"45c7efff-e4a1-42df-bfcd-aec2f69740a9"]
}, {2}]],

Cell[CellGroupData[{

Cell["Parameter Description", "Section",
 CellChangeTimes->{{3.791706705843924*^9, 
  3.79170674269188*^9}},ExpressionUUID->"0ace0f20-69f4-46df-85d3-\
8a7260263411"],

Cell[CellGroupData[{

Cell["Fertility selection", "Subsection",
 CellChangeTimes->{{3.791119190022883*^9, 3.7911191952957573`*^9}, 
   3.791119241438943*^9},ExpressionUUID->"da372b89-21e6-49ba-9573-\
a4ef37bf56bb"],

Cell[TextData[{
 " ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["f", "WW"], TraditionalForm]],
  FormatType->"TraditionalForm",ExpressionUUID->
  "3bed2aff-5ae9-4bbb-999e-1896be1bc680"],
 ",  ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["f", "WD"], TraditionalForm]],
  FormatType->"TraditionalForm",ExpressionUUID->
  "8376ecb0-0a9d-4bce-bae6-e06d4c694328"],
 " and  ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["f", "DD"], TraditionalForm]],
  FormatType->"TraditionalForm",ExpressionUUID->
  "d022b168-2394-411f-8dcc-549608da17d5"],
 "are the genotypic fertility of the organism in the adult stage."
}], "Text",
 CellChangeTimes->{{3.7911214193259363`*^9, 3.791121444307242*^9}, {
  3.791702134025185*^9, 3.791702135335463*^9}, {3.791704643241105*^9, 
  3.791704643633683*^9}, {3.791705451689536*^9, 3.791705452331023*^9}, {
  3.791705614737611*^9, 3.7917056436852503`*^9}, {3.791705712446883*^9, 
  3.791705932065412*^9}},ExpressionUUID->"2482534d-1a89-4eae-bfed-\
c6f8c584eb06"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Distortion", "Subsection",
 CellChangeTimes->{{3.791119190022883*^9, 3.7911191952957573`*^9}, {
  3.79111924273041*^9, 
  3.791119247983468*^9}},ExpressionUUID->"136d52ef-f73e-4f2b-bda0-\
60e4c6db23d9"],

Cell[TextData[{
 StyleBox["p",
  FontSlant->"Italic"],
 " is the probability of transmission of drive allele (D) in heterozygous \
offsprings (WD)."
}], "Text",
 CellChangeTimes->{{3.791121426547513*^9, 3.791121447820456*^9}, {
  3.791702136359507*^9, 3.791702137616025*^9}, {3.791705937712098*^9, 
  3.7917059478741817`*^9}, {3.791706336160866*^9, 
  3.791706414242702*^9}},ExpressionUUID->"b55c17ba-9420-4c22-8a85-\
fc6fbe096fe4"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Viability selection", "Subsection",
 CellChangeTimes->{{3.791119190022883*^9, 3.7911191952957573`*^9}, {
  3.791119244035676*^9, 
  3.79111925353544*^9}},ExpressionUUID->"79acdad1-5113-4a4e-981d-\
1e075a39a44c"],

Cell[TextData[{
 " \[Omega] and \[Nu] are the genotypic viabilities of drive heterozygote \
(WD) and homozygotes (DD) respectively.  ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["d", "m"], TraditionalForm]],
  FormatType->"TraditionalForm",ExpressionUUID->
  "22103bc5-59d9-4ca3-84f7-2a030f82ea61"],
 ",  ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["d", "im"], TraditionalForm]],
  FormatType->"TraditionalForm",ExpressionUUID->
  "e609eb4e-f92e-45bc-a0f3-20b6be51506a"],
 " and  ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["d", "S"], TraditionalForm]],
  FormatType->"TraditionalForm",ExpressionUUID->
  "6d44e86c-7c62-405b-b159-fec94c2a765c"],
 " are the drive efficiency of gene drives Medea, Inverse Medea and Semele. "
}], "Text",
 CellChangeTimes->{{3.791121431989909*^9, 3.791121448900299*^9}, {
   3.7917021385160723`*^9, 3.7917021399099894`*^9}, {3.7917062572804127`*^9, 
   3.791706259606389*^9}, {3.7917064434816093`*^9, 3.7917066022467327`*^9}, 
   3.791706758230846*^9},ExpressionUUID->"18a3dd79-ca9b-4df1-8cc6-\
3569b467ee77"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}, Open  ]]
},
WindowSize->{1399, 705},
WindowMargins->{{19, Automatic}, {Automatic, 18}},
FrontEndVersion->"12.0 for Mac OS X x86 (64-bit) (April 8, 2019)",
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
Cell[1510, 35, 258, 4, 146, "Title",ExpressionUUID->"dea076a2-ca19-42a0-91a6-e9053665d30d"],
Cell[1771, 41, 1962, 56, 205, "Author",ExpressionUUID->"1c29d2ba-8f74-49d2-b06e-f5b232ac5944"],
Cell[3736, 99, 2077, 29, 612, "Abstract",ExpressionUUID->"4cf1338a-504d-4853-b06f-342749e74766"],
Cell[CellGroupData[{
Cell[5838, 132, 214, 4, 103, "Chapter",ExpressionUUID->"8c02ae75-3ef6-46e6-a2eb-f84f5cade347"],
Cell[6055, 138, 1133, 17, 260, "Text",ExpressionUUID->"ee92aad3-ae63-4a5e-8c73-62f2a9c1c32a"],
Cell[CellGroupData[{
Cell[7213, 159, 23867, 581, 2589, "Input",ExpressionUUID->"5a8cfc92-a3e5-4c12-a89c-72f90df28112"],
Cell[31083, 742, 20840, 452, 716, "Output",ExpressionUUID->"45c7efff-e4a1-42df-bfcd-aec2f69740a9"]
}, {2}]],
Cell[CellGroupData[{
Cell[51957, 1199, 165, 3, 101, "Section",ExpressionUUID->"0ace0f20-69f4-46df-85d3-8a7260263411"],
Cell[CellGroupData[{
Cell[52147, 1206, 192, 3, 81, "Subsection",ExpressionUUID->"da372b89-21e6-49ba-9573-a4ef37bf56bb"],
Cell[52342, 1211, 983, 26, 54, "Text",ExpressionUUID->"2482534d-1a89-4eae-bfed-c6f8c584eb06"]
}, Open  ]],
Cell[CellGroupData[{
Cell[53362, 1242, 208, 4, 81, "Subsection",ExpressionUUID->"136d52ef-f73e-4f2b-bda0-60e4c6db23d9"],
Cell[53573, 1248, 432, 10, 53, "Text",ExpressionUUID->"b55c17ba-9420-4c22-8a85-fc6fbe096fe4"]
}, Open  ]],
Cell[CellGroupData[{
Cell[54042, 1263, 217, 4, 81, "Subsection",ExpressionUUID->"79acdad1-5113-4a4e-981d-1e075a39a44c"],
Cell[54262, 1269, 1042, 26, 89, "Text",ExpressionUUID->"18a3dd79-ca9b-4df1-8cc6-3569b467ee77"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}
]
*)

(* NotebookSignature yxTV2PbvrsnSCD1wpPu4jjej *)
