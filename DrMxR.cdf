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
NotebookDataLength[     65854,       1544]
NotebookOptionsPosition[     66357,       1541]
NotebookOutlinePosition[     66694,       1556]
CellTagsIndexPosition[     66651,       1553]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[
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
            "xcart", ",", "ycart", ",", "ffww", ",", "ffwd", ",", "ffdd", ",",
              "p", ",", "d", ",", "h", ",", "s", ",", "e", ",", "g", ",", 
             "h11", ",", "h12", ",", "h13", ",", "h22", ",", "h23", ",", 
             "h33"}], "]"}], ",", 
           RowBox[{"ydotcart", "[", 
            RowBox[{
            "xcart", ",", "ycart", ",", "ffww", ",", "ffwd", ",", "ffdd", ",",
              "p", ",", "d", ",", "h", ",", "s", ",", "e", ",", "g", ",", 
             "h11", ",", "h12", ",", "h13", ",", "h22", ",", "h23", ",", 
             "h33"}], "]"}]}], "}"}], ",", 
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
                   "ffdd", ",", "p", ",", "d", ",", "h", ",", "s", ",", "e", 
                   ",", "g", ",", "h11", ",", "h12", ",", "h13", ",", "h22", 
                   ",", "h23", ",", "h33"}], "]"}], "\[Equal]", "0"}], ",", 
                RowBox[{
                 RowBox[{"ydotcart", "[", 
                  RowBox[{
                  "xcart", ",", "ycart", ",", "ffww", ",", "ffwd", ",", 
                   "ffdd", ",", "p", ",", "d", ",", "h", ",", "s", ",", "e", 
                   ",", "g", ",", "h11", ",", "h12", ",", "h13", ",", "h22", 
                   ",", "h23", ",", "h33"}], "]"}], "\[Equal]", "0"}], ",", 
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
    RowBox[{"\"\<Fertility Selection\>\"", ",", "12", ",", "Bold"}], "]"}], 
   ",", "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"h11", ",", "1", ",", 
       RowBox[{"Style", "[", 
        RowBox[{
        "\"\<WWxWW fertility, \!\(\*SubscriptBox[\(h\), \(11\)]\)\>\"", ",", 
         "11"}], "]"}]}], "}"}], ",", "0", ",", "1"}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"h12", ",", "1", ",", 
       RowBox[{"Style", "[", 
        RowBox[{
        "\"\<WWxWD fertility, \!\(\*SubscriptBox[\(h\), \(12\)]\)\>\"", ",", 
         "11"}], "]"}]}], "}"}], ",", "0", ",", "1"}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"h13", ",", "1", ",", 
       RowBox[{"Style", "[", 
        RowBox[{
        "\"\<WWxDD fertility, \!\(\*SubscriptBox[\(h\), \(13\)]\)\>\"", ",", 
         "11"}], "]"}]}], "}"}], ",", "0", ",", "1"}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"h22", ",", "1", ",", 
       RowBox[{"Style", "[", 
        RowBox[{
        "\"\<WDxWD fertility, \!\(\*SubscriptBox[\(h\), \(22\)]\)\>\"", ",", 
         "11"}], "]"}]}], "}"}], ",", "0", ",", "1"}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"h23", ",", "1", ",", 
       RowBox[{"Style", "[", 
        RowBox[{
        "\"\<WDxDD fertility, \!\(\*SubscriptBox[\(h\), \(23\)]\)\>\"", ",", 
         "11"}], "]"}]}], "}"}], ",", "0", ",", "1"}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"h33", ",", "1", ",", 
       RowBox[{"Style", "[", 
        RowBox[{
        "\"\<DDxDD fertility, \!\(\*SubscriptBox[\(h\), \(33\)]\)\>\"", ",", 
         "11"}], "]"}]}], "}"}], ",", "0", ",", "1"}], "}"}], ",", 
   "Delimiter", ",", 
   RowBox[{"Style", "[", 
    RowBox[{"\"\<Distortion\>\"", ",", "12", ",", "Bold"}], "]"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"p", ",", 
       RowBox[{"1", "/", "2"}], ",", 
       RowBox[{"Style", "[", 
        RowBox[{"\"\<Drive efficiency, p\>\"", ",", "11"}], "]"}]}], "}"}], 
     ",", 
     RowBox[{"1", "/", "2"}], ",", "1"}], "}"}], ",", "Delimiter", ",", 
   RowBox[{"Style", "[", 
    RowBox[{"\"\<Viability Selection\>\"", ",", "12", ",", "Bold"}], "]"}], 
   ",", "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"ffww", ",", "1", ",", 
       RowBox[{"Style", "[", 
        RowBox[{
        "\"\<Wildtype fitness, \!\(\*SubscriptBox[\(f\), \(WW\)]\)\>\"", ",", 
         "11"}], "]"}]}], "}"}], ",", "0", ",", "1"}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"ffwd", ",", "1", ",", 
       RowBox[{"Style", "[", 
        RowBox[{
        "\"\<Heterozygotes fitness, \!\(\*SubscriptBox[\(f\), \(WD\)]\)\>\"", 
         ",", "11"}], "]"}]}], "}"}], ",", "0", ",", "1"}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"ffdd", ",", "1", ",", 
       RowBox[{"Style", "[", 
        RowBox[{
        "\"\<Drive homogygote fitness, \!\(\*SubscriptBox[\(f\), \
\(DD\)]\)\>\"", ",", "11"}], "]"}]}], "}"}], ",", "0", ",", "1"}], "}"}], ",",
    "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"h", ",", "0", ",", 
       RowBox[{"Style", "[", 
        RowBox[{"\"\<Dominance coefficient, h\>\"", ",", "11"}], "]"}]}], 
      "}"}], ",", "0", ",", "2"}], "}"}], ",", "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"s", ",", "0", ",", 
       RowBox[{"Style", "[", 
        RowBox[{"\"\<Selection coefficient, s\>\"", ",", "11"}], "]"}]}], 
      "}"}], ",", "0", ",", "1"}], "}"}], ",", 
   RowBox[{"Style", "[", 
    RowBox[{"\"\<Medea drive\>\"", ",", "11", ",", "Bold"}], "]"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"d", ",", "0", ",", 
       RowBox[{"Style", "[", 
        RowBox[{
        "\"\<Drive efficiency, \!\(\*SubscriptBox[\(d\), \(m\)]\)\>\"", ",", 
         "11"}], "]"}]}], "}"}], ",", "0", ",", "1"}], "}"}], ",", 
   RowBox[{"Style", "[", 
    RowBox[{"\"\<Inverse Medea\>\"", ",", "11", ",", "Bold"}], "]"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"g", ",", "0", ",", 
       RowBox[{"Style", "[", 
        RowBox[{
        "\"\<Drive efficiency, \!\(\*SubscriptBox[\(d\), \(im\)]\)\>\"", ",", 
         "11"}], "]"}]}], "}"}], ",", "0", ",", "1"}], "}"}], ",", 
   RowBox[{"Style", "[", 
    RowBox[{"\"\<Semele\>\"", ",", "11", ",", "Bold"}], "]"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"e", ",", "0", ",", 
       RowBox[{"Style", "[", 
        RowBox[{
        "\"\<Drive efficiency, \!\(\*SubscriptBox[\(d\), \(s\)]\)\>\"", ",", 
         "11"}], "]"}]}], "}"}], ",", "0", ",", "1"}], "}"}], ",", 
   RowBox[{"Initialization", "\[RuleDelayed]", 
    RowBox[{"{", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"TA", "=", 
       TagBox[
        RowBox[{
         RowBox[{"(", "\[NoBreak]", GridBox[{
            {
             RowBox[{"-", 
              FractionBox["1", "2"]}], 
             RowBox[{"-", "1"}]},
            {
             FractionBox[
              SqrtBox["3"], "2"], "0"}
           }], "\[NoBreak]", ")"}], "  "}],
        Function[BoxForm`e$, 
         MatrixForm[BoxForm`e$]]]}], ";", "\[IndentingNewLine]", 
      RowBox[{"(*", " ", 
       RowBox[{
        RowBox[{
        "new", " ", "maps", " ", "points", " ", "in", " ", "the", " ", 
         "simplex", " ", "to", " ", "their", " ", "2", "D", " ", 
         "representation", " ", "for", " ", "graphing"}], ",", " ", 
        RowBox[{"old", " ", "does", " ", "the", " ", "reverse"}]}], " ", 
       "*)"}], "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"new", "[", "r_", "]"}], ":=", 
       RowBox[{
        RowBox[{"TA", ".", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{
           "r", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], ",", 
           RowBox[{
           "r", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}]}], 
          "}"}]}], "+", 
        RowBox[{"{", 
         RowBox[{"1", ",", "0"}], "}"}]}]}], " ", ";", "\[IndentingNewLine]", 
      
      RowBox[{
       RowBox[{"old2", "[", "c_", "]"}], ":=", 
       RowBox[{
        RowBox[{"Inverse", "[", "TA", "]"}], ".", 
        RowBox[{"(", 
         RowBox[{"c", "-", 
          RowBox[{"{", 
           RowBox[{"1", ",", "0"}], "}"}]}], ")"}]}]}], " ", ";", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"old", "[", "c_", "]"}], ":=", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{
          RowBox[{"old2", "[", "c", "]"}], "\[LeftDoubleBracket]", "1", 
          "\[RightDoubleBracket]"}], ",", 
         RowBox[{
          RowBox[{"old2", "[", "c", "]"}], "\[LeftDoubleBracket]", "2", 
          "\[RightDoubleBracket]"}], ",", 
         RowBox[{"1", "-", 
          RowBox[{
           RowBox[{"old2", "[", "c", "]"}], "\[LeftDoubleBracket]", "1", 
           "\[RightDoubleBracket]"}], "-", 
          RowBox[{
           RowBox[{"old2", "[", "c", "]"}], "\[LeftDoubleBracket]", "2", 
           "\[RightDoubleBracket]"}]}]}], "}"}]}], " ", ";", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"CreateTriangle", "[", "]"}], ":=", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"a", ",", "b", ",", "c"}], "}"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"(*", " ", 
          RowBox[{
          "draw", " ", "white", " ", "area", " ", "around", " ", "the", " ", 
           "simplex"}], " ", "*)"}], "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"b", "=", 
           RowBox[{"new", "[", 
            RowBox[{"{", 
             RowBox[{"0", ",", "1", ",", "0"}], "}"}], "]"}]}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"a", "=", 
           RowBox[{"new", "[", 
            RowBox[{"{", 
             RowBox[{"1", ",", "0", ",", "0"}], "}"}], "]"}]}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"c", "=", 
           RowBox[{"new", "[", 
            RowBox[{"{", 
             RowBox[{"0", ",", "0", ",", "1"}], "}"}], "]"}]}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"Tri", "=", 
           RowBox[{"Graphics", "[", 
            RowBox[{"Line", "[", 
             RowBox[{"{", 
              RowBox[{"b", ",", "a", ",", "c", ",", "b"}], "}"}], "]"}], 
            "]"}]}], ";", "\[IndentingNewLine]", 
          RowBox[{"leftri", "=", 
           RowBox[{"Graphics", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"GrayLevel", "[", "1", "]"}], ",", 
              RowBox[{"Polygon", "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"-", "0.08`"}], ",", 
                   RowBox[{"-", "0.04`"}]}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"-", "0.08`"}], ",", "0.95`"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"0.5`", ",", "0.95`"}], "}"}], ",", "a", ",", 
                 RowBox[{"{", 
                  RowBox[{"0", ",", "0"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"-", "0.08`"}], ",", 
                   RowBox[{"-", "0.04`"}]}], "}"}]}], "}"}], "]"}]}], "}"}], 
            "]"}]}], ";", "\[IndentingNewLine]", 
          RowBox[{"rightri", "=", 
           RowBox[{"Graphics", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"GrayLevel", "[", "1", "]"}], ",", 
              RowBox[{"Polygon", "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{"0.5`", ",", "0.95`"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"1.095`", ",", "0.95`"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"1.095`", ",", 
                   RowBox[{"-", "0.04`"}]}], "}"}], ",", "c", ",", "a", ",", 
                 RowBox[{"{", 
                  RowBox[{"0.5`", ",", "0.95`"}], "}"}]}], "}"}], "]"}]}], 
             "}"}], "]"}]}], ";", 
          RowBox[{"downl", "=", 
           RowBox[{"Graphics", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"GrayLevel", "[", "1", "]"}], ",", 
              RowBox[{"Polygon", "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"-", "0.08`"}], ",", 
                   RowBox[{"-", "0.04`"}]}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"1.08`", ",", 
                   RowBox[{"-", "0.04`"}]}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"1.08`", ",", "0"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"-", "0.04`"}], ",", "0"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"-", "0.08`"}], ",", 
                   RowBox[{"-", "0.04`"}]}], "}"}]}], "}"}], "]"}]}], "}"}], 
            "]"}]}], ";"}]}], "\[IndentingNewLine]", "]"}]}], ";", "\n", 
      RowBox[{"CreateTriangle", "[", "]"}], ";", "\n", 
      RowBox[{
       RowBox[{"xwd", "[", 
        RowBox[{"xww_", ",", "xdd_"}], "]"}], " ", ":=", " ", 
       RowBox[{"1", "-", "xww", "-", "xdd"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"fww", " ", "[", 
        RowBox[{
        "xww_", ",", "xdd_", ",", "ffww_", ",", "ffwd_", ",", "ffdd_", ",", 
         "p_", ",", "d_", ",", "e_", ",", "h11_", ",", "h12_", ",", "h22_"}], 
        "]"}], ":=", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"h11", " ", "ffww", "*", "ffww", " ", "xww", " ", "xww"}], 
         " ", "+", " ", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"1", "-", "p"}], ")"}], 
          RowBox[{"(", 
           RowBox[{"1", "-", 
            RowBox[{"e", "/", "2"}]}], ")"}], "*", "h12", "*", "ffww", "*", 
          "ffwd", " ", "xww", " ", 
          RowBox[{"xwd", "[", 
           RowBox[{"xww", ",", "xdd"}], "]"}]}], " ", "+", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"1", "-", "d"}], ")"}], 
          RowBox[{"(", 
           RowBox[{"1", "-", 
            RowBox[{"e", "/", "2"}]}], ")"}], 
          RowBox[{"(", 
           RowBox[{"1", "-", "p"}], ")"}], "*", "h12", "*", "ffww", "*", 
          "ffwd", " ", "xww", " ", 
          RowBox[{"xwd", "[", 
           RowBox[{"xww", ",", "xdd"}], "]"}]}], "+", " ", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"1", "-", "d"}], ")"}], 
          RowBox[{
           RowBox[{"(", 
            RowBox[{"1", "-", "p"}], ")"}], "^", "2"}], "  ", "h22", "*", 
          "ffwd", "*", "ffwd", " ", 
          RowBox[{"xwd", "[", 
           RowBox[{"xww", ",", "xdd"}], "]"}], " ", 
          RowBox[{"xwd", "[", 
           RowBox[{"xww", ",", "xdd"}], "]"}]}]}], ")"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"fdd", "[", 
        RowBox[{
        "xww_", ",", "xdd_", ",", "ffww_", ",", "ffwd_", ",", "ffdd_", ",", 
         "p_", ",", "s_", ",", "h22_", ",", "h23_", ",", "h33_"}], "]"}], " ",
        ":=", " ", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"1", "-", "s"}], ")"}], 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"h33", "*", "ffdd", "*", "ffdd", " ", "xdd", " ", "xdd"}], 
          "+", " ", 
          RowBox[{
          "2", " ", "p", " ", "*", "h23", "*", "ffdd", "*", "ffwd", " ", 
           "xdd", " ", 
           RowBox[{"xwd", "[", 
            RowBox[{"xww", ",", "xdd"}], "]"}]}], "+", " ", 
          RowBox[{
           RowBox[{"p", "^", "2"}], " ", "h22", "*", "ffwd", "*", "ffwd", " ", 
           RowBox[{"xwd", "[", 
            RowBox[{"xww", ",", "xdd"}], "]"}], 
           RowBox[{"xwd", "[", 
            RowBox[{"xww", ",", "xdd"}], "]"}]}]}], ")"}]}]}], ";", " ", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"fwd", "[", 
        RowBox[{
        "xww_", ",", "xdd_", ",", "ffww_", ",", "ffwd_", ",", "ffdd_", ",", 
         "p_", ",", "h_", ",", "s_", ",", "e_", ",", "g_", ",", "h12_", ",", 
         "h13_", ",", "h22_", ",", "h23_"}], "]"}], " ", ":=", " ", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"1", "-", 
          RowBox[{"h", " ", "s"}]}], ")"}], 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"2", " ", "p", " ", 
           RowBox[{"(", 
            RowBox[{"1", "-", "p"}], ")"}], "*", "h22", "*", "ffwd", "*", 
           "ffwd", " ", 
           RowBox[{"xwd", "[", 
            RowBox[{"xww", ",", "xdd"}], "]"}], "*", 
           RowBox[{"xwd", "[", 
            RowBox[{"xww", ",", "xdd"}], "]"}]}], "+", " ", 
          RowBox[{"2", 
           RowBox[{"(", 
            RowBox[{"1", "-", "p"}], ")"}], "*", "h23", "*", "ffdd", "*", 
           "ffwd", " ", "xdd", " ", 
           RowBox[{"xwd", "[", 
            RowBox[{"xww", ",", "xdd"}], "]"}]}], "+", 
          RowBox[{"2", " ", 
           RowBox[{"(", 
            RowBox[{"1", "-", 
             RowBox[{"e", "/", "2"}]}], ")"}], 
           RowBox[{"(", 
            RowBox[{"1", "-", 
             RowBox[{"g", "/", "2"}]}], ")"}], "*", "h12", "*", " ", "p", " ",
            "ffww", "*", "ffwd", " ", "xww", " ", 
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
           "h13", "*", "ffdd", "*", "ffww", " ", "xdd", " ", "xww"}]}], 
         ")"}]}]}], ";", " ", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"ftot", "[", 
        RowBox[{
        "xww_", ",", "xdd_", ",", "ffww_", ",", "ffwd_", ",", "ffdd_", ",", 
         "p_", ",", "d_", ",", "h_", ",", "s_", ",", "e_", ",", "g_", ",", 
         "h11_", ",", "h12_", ",", "h13_", ",", "h22_", ",", "h23_", ",", 
         "h33_"}], "]"}], ":=", " ", 
       RowBox[{
        RowBox[{"fww", "[", 
         RowBox[{
         "xww", ",", "xdd", ",", "ffww", ",", "ffwd", ",", "ffdd", ",", "p", 
          ",", "d", ",", "e", ",", "h11", ",", "h12", ",", "h22"}], "]"}], 
        "+", 
        RowBox[{"fwd", "[", 
         RowBox[{
         "xww", ",", "xdd", ",", "ffww", ",", "ffwd", ",", "ffdd", ",", "p", 
          ",", "h", ",", "s", ",", "e", ",", "g", ",", "h12", ",", "h13", ",",
           "h22", ",", "h23"}], "]"}], "+", 
        RowBox[{"fdd", "[", 
         RowBox[{
         "xww", ",", "xdd", ",", "ffww", ",", "ffwd", ",", "ffdd", ",", "p", 
          ",", "s", ",", "h22", ",", "h23", ",", "h33"}], "]"}]}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"xdot", "[", 
        RowBox[{
        "xww_", ",", "xdd_", ",", "ffww_", ",", "ffwd_", ",", "ffdd_", ",", 
         "p_", ",", "d_", ",", "h_", ",", "s_", ",", "e_", ",", "g_", ",", 
         "h11_", ",", "h12_", ",", "h13_", ",", "h22_", ",", "h23_", ",", 
         "h33_"}], "]"}], " ", ":=", " ", 
       RowBox[{
        RowBox[{"fww", "[", 
         RowBox[{
         "xww", ",", "xdd", ",", "ffww", ",", "ffwd", ",", "ffdd", ",", "p", 
          ",", "d", ",", "e", ",", "h11", ",", "h12", ",", "h22"}], "]"}], 
        "-", 
        RowBox[{"xww", "*", 
         RowBox[{"ftot", "[", 
          RowBox[{
          "xww", ",", "xdd", ",", "ffww", ",", "ffwd", ",", "ffdd", ",", "p", 
           ",", "d", ",", "h", ",", "s", ",", "e", ",", "g", ",", "h11", ",", 
           "h12", ",", "h13", ",", "h22", ",", "h23", ",", "h33"}], 
          "]"}]}]}]}], ";", " ", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"ydot", "[", 
        RowBox[{
        "xww_", ",", "xdd_", ",", "ffww_", ",", "ffwd_", ",", "ffdd_", ",", 
         "p_", ",", "d_", ",", "h_", ",", "s_", ",", "e_", ",", "g_", ",", 
         "h11_", ",", "h12_", ",", "h13_", ",", "h22_", ",", "h23_", ",", 
         "h33_"}], "]"}], " ", ":=", " ", 
       RowBox[{
        RowBox[{"fdd", "[", 
         RowBox[{
         "xww", ",", "xdd", ",", "ffww", ",", "ffwd", ",", "ffdd", ",", "p", 
          ",", "s", ",", "h22", ",", "h23", ",", "h33"}], "]"}], "-", 
        RowBox[{"xdd", "*", 
         RowBox[{"ftot", "[", 
          RowBox[{
          "xww", ",", "xdd", ",", "ffww", ",", "ffwd", ",", "ffdd", ",", "p", 
           ",", "d", ",", "h", ",", "s", ",", "e", ",", "g", ",", "h11", ",", 
           "h12", ",", "h13", ",", "h22", ",", "h23", ",", "h33"}], 
          "]"}]}]}]}], ";", " ", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"(*", " ", 
       RowBox[{"Coordinates", " ", "of", " ", "S3", " ", "triangle"}], " ", 
       "*)"}], "\[IndentingNewLine]", 
      RowBox[{"x1", " ", "=", " ", "0"}], ";", " ", 
      RowBox[{"y1", " ", "=", " ", "0"}], ";", "\[IndentingNewLine]", 
      RowBox[{"x3", " ", "=", " ", "0.5"}], ";", " ", 
      RowBox[{"y3", " ", "=", " ", 
       RowBox[{
        RowBox[{"Sqrt", "[", "3", "]"}], "/", "2."}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"x2", " ", "=", " ", "1"}], ";", " ", 
      RowBox[{"y2", " ", "=", " ", "0"}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
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
         ",", "p_", ",", "d_", ",", "h_", ",", "s_", ",", "e_", ",", "g_", 
         ",", "h11_", ",", "h12_", ",", "h13_", ",", "h22_", ",", "h23_", ",",
          "h33_"}], "]"}], ":=", 
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
           ",", "ffdd", ",", "p", ",", "d", ",", "h", ",", "s", ",", "e", ",",
            "g", ",", "h11", ",", "h12", ",", "h13", ",", "h22", ",", "h23", 
           ",", "h33"}], "]"}]}], "+", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"x2", "-", "x3"}], ")"}], "*", 
         RowBox[{"ydot", "[", 
          RowBox[{
           RowBox[{"lamda1", "[", 
            RowBox[{"xcart", ",", "ycart"}], "]"}], ",", 
           RowBox[{"lamda2", "[", 
            RowBox[{"xcart", ",", "ycart"}], "]"}], ",", "ffww", ",", "ffwd", 
           ",", "ffdd", ",", "p", ",", "d", ",", "h", ",", "s", ",", "e", ",",
            "g", ",", "h11", ",", "h12", ",", "h13", ",", "h22", ",", "h23", 
           ",", "h33"}], "]"}]}]}]}], ";", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"ydotcart", "[", 
        RowBox[{
        "xcart_", ",", "ycart_", ",", "ffww_", ",", "ffwd_", ",", "ffdd_", 
         ",", "p_", ",", "d_", ",", "h_", ",", "s_", ",", "e_", ",", "g_", 
         ",", "h11_", ",", "h12_", ",", "h13_", ",", "h22_", ",", "h23_", ",",
          "h33_"}], "]"}], ":=", 
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
           ",", "ffdd", ",", "p", ",", "d", ",", "h", ",", "s", ",", "e", ",",
            "g", ",", "h11", ",", "h12", ",", "h13", ",", "h22", ",", "h23", 
           ",", "h33"}], "]"}]}], "+", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"y2", "-", "y3"}], ")"}], "*", 
         RowBox[{"ydot", "[", 
          RowBox[{
           RowBox[{"lamda1", "[", 
            RowBox[{"xcart", ",", "ycart"}], "]"}], ",", 
           RowBox[{"lamda2", "[", 
            RowBox[{"xcart", ",", "ycart"}], "]"}], ",", "ffww", ",", "ffwd", 
           ",", "ffdd", ",", "p", ",", "d", ",", "h", ",", "s", ",", "e", ",",
            "g", ",", "h11", ",", "h12", ",", "h13", ",", "h22", ",", "h23", 
           ",", "h33"}], "]"}]}]}]}], ";", "\[IndentingNewLine]", 
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
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
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
     "\[IndentingNewLine]", "}"}]}]}], "]"}]], "Input",
 CellChangeTimes->{{3.788261264980246*^9, 3.7882612951005774`*^9}, {
   3.789573146382918*^9, 3.789573168674758*^9}, {3.7895743963907948`*^9, 
   3.789574489456193*^9}, {3.789574952493451*^9, 3.789574952698415*^9}, {
   3.789575067187893*^9, 3.7895750797316713`*^9}, {3.789575266451334*^9, 
   3.789575270666812*^9}, {3.789799748741762*^9, 3.789799749732585*^9}, 
   3.789800032086481*^9, 3.789800067852755*^9, {3.7898002894541893`*^9, 
   3.789800289656755*^9}, {3.789904619952455*^9, 3.7899047780608587`*^9}, {
   3.7899048424551973`*^9, 3.789904909795377*^9}, 3.789904965935413*^9, {
   3.789905219036413*^9, 3.7899052462662907`*^9}, {3.7899052902076607`*^9, 
   3.789905297984185*^9}, {3.789905454216276*^9, 3.789905456565564*^9}, {
   3.789905493221586*^9, 3.789905496264119*^9}, {3.7899055463237343`*^9, 
   3.7899056428167353`*^9}, {3.789905676656096*^9, 3.789905733985091*^9}, {
   3.789905853855721*^9, 3.789905855068438*^9}, {3.789905899793153*^9, 
   3.789905928378474*^9}, {3.789905977344173*^9, 3.7899059803217297`*^9}, {
   3.7899061622969513`*^9, 3.78990616978321*^9}, {3.789906353346304*^9, 
   3.789906688235684*^9}, {3.789906735357685*^9, 3.789906822335123*^9}, {
   3.789906878296677*^9, 3.7899069829651327`*^9}, {3.789907131233705*^9, 
   3.7899071504295597`*^9}, {3.789907192043818*^9, 3.7899072245360003`*^9}, {
   3.789907329644311*^9, 3.789907336284707*^9}, {3.7899074274661293`*^9, 
   3.789907608552988*^9}, {3.790923862055664*^9, 3.790923862559477*^9}, {
   3.790924062307198*^9, 3.79092406708978*^9}, {3.790924153122439*^9, 
   3.790924153680129*^9}, {3.7909402547854433`*^9, 3.7909403165374947`*^9}, 
   3.790940352396212*^9, {3.790940406152607*^9, 3.790940407767864*^9}, {
   3.790940790730021*^9, 3.7909408356429243`*^9}, {3.7909408768851843`*^9, 
   3.790940911454838*^9}, {3.790940960582691*^9, 3.790941006624411*^9}, {
   3.790941119714882*^9, 3.790941123939474*^9}, {3.790941434493971*^9, 
   3.790941453637711*^9}, {3.7909415076448393`*^9, 3.7909415163352537`*^9}, {
   3.7909416144921*^9, 3.79094166937066*^9}, 3.790941714667829*^9, {
   3.790941746924809*^9, 3.79094204529065*^9}, 3.790942097567844*^9, {
   3.790942164033733*^9, 3.790942165595265*^9}, {3.7909423530933027`*^9, 
   3.790942377502836*^9}, 3.790942441542062*^9, {3.7909425503149633`*^9, 
   3.790942638618434*^9}, 3.7909426697955303`*^9, {3.790942701928876*^9, 
   3.790942723934416*^9}, {3.790942807582679*^9, 3.790942847627523*^9}, {
   3.790942883372473*^9, 3.790942901545735*^9}, {3.790942979597331*^9, 
   3.790942996214905*^9}, 3.79094303466396*^9, {3.7909431961011868`*^9, 
   3.790943200907289*^9}, {3.790943369166171*^9, 3.790943407068162*^9}, {
   3.7909434570409946`*^9, 3.790943496896769*^9}, {3.7909447663834*^9, 
   3.7909447773364487`*^9}, {3.790947570682323*^9, 3.790947594500135*^9}, {
   3.790947734003128*^9, 3.790947735809342*^9}, {3.790947775054587*^9, 
   3.7909478245260363`*^9}, {3.7909479374161777`*^9, 
   3.7909480086046057`*^9}, {3.790948064439233*^9, 3.790948068732437*^9}, {
   3.7909481117600718`*^9, 3.7909482225514803`*^9}, {3.790950027493726*^9, 
   3.7909500653839617`*^9}, {3.79095014435211*^9, 3.790950193550756*^9}, {
   3.790950239423356*^9, 3.790950268558569*^9}, {3.790950760348091*^9, 
   3.790950782265431*^9}, {3.790950878925885*^9, 3.790950885394002*^9}, {
   3.7909509244715977`*^9, 3.790951244230342*^9}, {3.791010022605667*^9, 
   3.791010032308385*^9}, {3.791010123275202*^9, 3.791010127736723*^9}, {
   3.7910103255787*^9, 3.7910103266074142`*^9}, {3.791010582578081*^9, 
   3.791010673344664*^9}, {3.791010888342695*^9, 3.791010944706662*^9}, {
   3.791011001209989*^9, 3.791011019978013*^9}, {3.791016045489416*^9, 
   3.7910160637571173`*^9}, 3.7910161096077137`*^9, {3.791016146051671*^9, 
   3.7910162016734953`*^9}, {3.791016247652293*^9, 3.791016281865267*^9}, {
   3.79101641117696*^9, 3.791016434554377*^9}, {3.791016564840567*^9, 
   3.791016578600293*^9}, {3.791016631338217*^9, 3.7910166405251217`*^9}, {
   3.7910167206122007`*^9, 3.7910167255638*^9}, {3.7910167571073627`*^9, 
   3.791016766610285*^9}, {3.7910169454353724`*^9, 3.791016955118101*^9}, {
   3.791017168465849*^9, 3.7910171750959263`*^9}, {3.7910172110278*^9, 
   3.7910172291626167`*^9}, {3.7910172983920507`*^9, 
   3.7910173213704987`*^9}, {3.791025936073421*^9, 3.791026062535921*^9}, {
   3.79102642677722*^9, 3.7910264269313498`*^9}, {3.791026516920885*^9, 
   3.79102652782202*^9}, {3.79102684766325*^9, 3.7910269080285254`*^9}, {
   3.791026952137393*^9, 3.7910269567910423`*^9}, {3.791027039728654*^9, 
   3.791027045342136*^9}, {3.7910272663853893`*^9, 3.791027267077722*^9}, {
   3.791028126998831*^9, 3.791028145137911*^9}, 3.791028212207233*^9, {
   3.791028507690817*^9, 3.7910285089528713`*^9}, 3.791051499192129*^9, {
   3.791053352717731*^9, 3.791053360716393*^9}, {3.791053424123616*^9, 
   3.791053436324293*^9}, {3.791053481759224*^9, 3.791053516678504*^9}, {
   3.791054678226418*^9, 3.79105468242391*^9}},
 CellLabel->"In[27]:=",ExpressionUUID->"35e83a99-9137-4b8f-8129-e5c0411d2df2"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`d$$ = 0, $CellContext`e$$ = 
    0, $CellContext`ffdd$$ = 1, $CellContext`ffwd$$ = 1, $CellContext`ffww$$ =
     1, $CellContext`g$$ = 0, $CellContext`h$$ = 0, $CellContext`h11$$ = 
    1, $CellContext`h12$$ = 1, $CellContext`h13$$ = 1, $CellContext`h22$$ = 
    1, $CellContext`h23$$ = 1, $CellContext`h33$$ = 1, $CellContext`p$$ = 
    Rational[1, 2], $CellContext`s$$ = 0, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{
      Hold[
       Style["Fertility Selection", 12, Bold]], 
      Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`h11$$], 1, 
       Style["WWxWW fertility, \!\(\*SubscriptBox[\(h\), \(11\)]\)", 11]}, 0, 
      1}, {{
       Hold[$CellContext`h12$$], 1, 
       Style["WWxWD fertility, \!\(\*SubscriptBox[\(h\), \(12\)]\)", 11]}, 0, 
      1}, {{
       Hold[$CellContext`h13$$], 1, 
       Style["WWxDD fertility, \!\(\*SubscriptBox[\(h\), \(13\)]\)", 11]}, 0, 
      1}, {{
       Hold[$CellContext`h22$$], 1, 
       Style["WDxWD fertility, \!\(\*SubscriptBox[\(h\), \(22\)]\)", 11]}, 0, 
      1}, {{
       Hold[$CellContext`h23$$], 1, 
       Style["WDxDD fertility, \!\(\*SubscriptBox[\(h\), \(23\)]\)", 11]}, 0, 
      1}, {{
       Hold[$CellContext`h33$$], 1, 
       Style["DDxDD fertility, \!\(\*SubscriptBox[\(h\), \(33\)]\)", 11]}, 0, 
      1}, {
      Hold[
       Style["Distortion", 12, Bold]], Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`p$$], 
       Rational[1, 2], 
       Style["Drive efficiency, p", 11]}, 
      Rational[1, 2], 1}, {
      Hold[
       Style["Viability Selection", 12, Bold]], 
      Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`ffww$$], 1, 
       Style["Wildtype fitness, \!\(\*SubscriptBox[\(f\), \(WW\)]\)", 11]}, 0,
       1}, {{
       Hold[$CellContext`ffwd$$], 1, 
       Style[
       "Heterozygotes fitness, \!\(\*SubscriptBox[\(f\), \(WD\)]\)", 11]}, 0, 
      1}, {{
       Hold[$CellContext`ffdd$$], 1, 
       Style[
       "Drive homogygote fitness, \!\(\*SubscriptBox[\(f\), \(DD\)]\)", 11]}, 
      0, 1}, {{
       Hold[$CellContext`h$$], 0, 
       Style["Dominance coefficient, h", 11]}, 0, 2}, {{
       Hold[$CellContext`s$$], 0, 
       Style["Selection coefficient, s", 11]}, 0, 1}, {
      Hold[
       Style["Medea drive", 11, Bold]], Manipulate`Dump`ThisIsNotAControl}, {{
      
       Hold[$CellContext`d$$], 0, 
       Style["Drive efficiency, \!\(\*SubscriptBox[\(d\), \(m\)]\)", 11]}, 0, 
      1}, {
      Hold[
       Style["Inverse Medea", 11, Bold]], 
      Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`g$$], 0, 
       Style["Drive efficiency, \!\(\*SubscriptBox[\(d\), \(im\)]\)", 11]}, 0,
       1}, {
      Hold[
       Style["Semele", 11, Bold]], Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`e$$], 0, 
       Style["Drive efficiency, \!\(\*SubscriptBox[\(d\), \(s\)]\)", 11]}, 0, 
      1}}, Typeset`size$$ = {600., {296., 304.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`h11$585466$$ = 0, $CellContext`h12$585467$$ = 
    0, $CellContext`h13$585468$$ = 0, $CellContext`h22$585469$$ = 
    0, $CellContext`h23$585470$$ = 0, $CellContext`h33$585471$$ = 
    0, $CellContext`p$585472$$ = 0, $CellContext`ffww$585473$$ = 
    0, $CellContext`ffwd$585474$$ = 0, $CellContext`ffdd$585475$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`d$$ = 0, $CellContext`e$$ = 
        0, $CellContext`ffdd$$ = 1, $CellContext`ffwd$$ = 
        1, $CellContext`ffww$$ = 1, $CellContext`g$$ = 0, $CellContext`h$$ = 
        0, $CellContext`h11$$ = 1, $CellContext`h12$$ = 1, $CellContext`h13$$ = 
        1, $CellContext`h22$$ = 1, $CellContext`h23$$ = 1, $CellContext`h33$$ = 
        1, $CellContext`p$$ = Rational[1, 2], $CellContext`s$$ = 0}, 
      "ControllerVariables" :> {
        Hold[$CellContext`h11$$, $CellContext`h11$585466$$, 0], 
        Hold[$CellContext`h12$$, $CellContext`h12$585467$$, 0], 
        Hold[$CellContext`h13$$, $CellContext`h13$585468$$, 0], 
        Hold[$CellContext`h22$$, $CellContext`h22$585469$$, 0], 
        Hold[$CellContext`h23$$, $CellContext`h23$585470$$, 0], 
        Hold[$CellContext`h33$$, $CellContext`h33$585471$$, 0], 
        Hold[$CellContext`p$$, $CellContext`p$585472$$, 0], 
        Hold[$CellContext`ffww$$, $CellContext`ffww$585473$$, 0], 
        Hold[$CellContext`ffwd$$, $CellContext`ffwd$585474$$, 0], 
        Hold[$CellContext`ffdd$$, $CellContext`ffdd$585475$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Show[{
         StreamDensityPlot[{
           $CellContext`xdotcart[$CellContext`xcart, $CellContext`ycart, \
$CellContext`ffww$$, $CellContext`ffwd$$, $CellContext`ffdd$$, \
$CellContext`p$$, $CellContext`d$$, $CellContext`h$$, $CellContext`s$$, \
$CellContext`e$$, $CellContext`g$$, $CellContext`h11$$, $CellContext`h12$$, \
$CellContext`h13$$, $CellContext`h22$$, $CellContext`h23$$, \
$CellContext`h33$$], 
           $CellContext`ydotcart[$CellContext`xcart, $CellContext`ycart, \
$CellContext`ffww$$, $CellContext`ffwd$$, $CellContext`ffdd$$, \
$CellContext`p$$, $CellContext`d$$, $CellContext`h$$, $CellContext`s$$, \
$CellContext`e$$, $CellContext`g$$, $CellContext`h11$$, $CellContext`h12$$, \
$CellContext`h13$$, $CellContext`h22$$, $CellContext`h23$$, \
$CellContext`h33$$]}, 
          
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
$CellContext`ffdd$$, $CellContext`p$$, $CellContext`d$$, $CellContext`h$$, \
$CellContext`s$$, $CellContext`e$$, $CellContext`g$$, $CellContext`h11$$, \
$CellContext`h12$$, $CellContext`h13$$, $CellContext`h22$$, \
$CellContext`h23$$, $CellContext`h33$$] == 
                0, $CellContext`ydotcart[$CellContext`xcart, \
$CellContext`ycart, $CellContext`ffww$$, $CellContext`ffwd$$, \
$CellContext`ffdd$$, $CellContext`p$$, $CellContext`d$$, $CellContext`h$$, \
$CellContext`s$$, $CellContext`e$$, $CellContext`g$$, $CellContext`h11$$, \
$CellContext`h12$$, $CellContext`h13$$, $CellContext`h22$$, \
$CellContext`h23$$, $CellContext`h33$$] == 0, $CellContext`xcart < 
                0.999, $CellContext`xcart > 0.0001, $CellContext`ycart > 
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
        Style["Fertility Selection", 12, Bold], {{$CellContext`h11$$, 1, 
          Style["WWxWW fertility, \!\(\*SubscriptBox[\(h\), \(11\)]\)", 11]}, 
         0, 1}, {{$CellContext`h12$$, 1, 
          Style["WWxWD fertility, \!\(\*SubscriptBox[\(h\), \(12\)]\)", 11]}, 
         0, 1}, {{$CellContext`h13$$, 1, 
          Style["WWxDD fertility, \!\(\*SubscriptBox[\(h\), \(13\)]\)", 11]}, 
         0, 1}, {{$CellContext`h22$$, 1, 
          Style["WDxWD fertility, \!\(\*SubscriptBox[\(h\), \(22\)]\)", 11]}, 
         0, 1}, {{$CellContext`h23$$, 1, 
          Style["WDxDD fertility, \!\(\*SubscriptBox[\(h\), \(23\)]\)", 11]}, 
         0, 1}, {{$CellContext`h33$$, 1, 
          Style["DDxDD fertility, \!\(\*SubscriptBox[\(h\), \(33\)]\)", 11]}, 
         0, 1}, Delimiter, 
        Style["Distortion", 12, Bold], {{$CellContext`p$$, 
          Rational[1, 2], 
          Style["Drive efficiency, p", 11]}, 
         Rational[1, 2], 1}, Delimiter, 
        Style["Viability Selection", 12, Bold], {{$CellContext`ffww$$, 1, 
          Style["Wildtype fitness, \!\(\*SubscriptBox[\(f\), \(WW\)]\)", 11]},
          0, 1}, {{$CellContext`ffwd$$, 1, 
          Style[
          "Heterozygotes fitness, \!\(\*SubscriptBox[\(f\), \(WD\)]\)", 11]}, 
         0, 1}, {{$CellContext`ffdd$$, 1, 
          Style[
          "Drive homogygote fitness, \!\(\*SubscriptBox[\(f\), \(DD\)]\)", 
           11]}, 0, 1}, {{$CellContext`h$$, 0, 
          Style["Dominance coefficient, h", 11]}, 0, 
         2}, {{$CellContext`s$$, 0, 
          Style["Selection coefficient, s", 11]}, 0, 1}, 
        Style["Medea drive", 11, Bold], {{$CellContext`d$$, 0, 
          Style["Drive efficiency, \!\(\*SubscriptBox[\(d\), \(m\)]\)", 11]}, 
         0, 1}, 
        Style["Inverse Medea", 11, Bold], {{$CellContext`g$$, 0, 
          Style["Drive efficiency, \!\(\*SubscriptBox[\(d\), \(im\)]\)", 11]},
          0, 1}, 
        Style["Semele", 11, Bold], {{$CellContext`e$$, 0, 
          Style["Drive efficiency, \!\(\*SubscriptBox[\(d\), \(s\)]\)", 11]}, 
         0, 1}}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{1223., {340., 348.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`TA = {{-(1/2), -1}, {
          Sqrt[3]/2, 0}}; $CellContext`new[
          Pattern[$CellContext`r, 
           Blank[]]] := Dot[$CellContext`TA, {
            Part[$CellContext`r, 1], 
            Part[$CellContext`r, 2]}] + {1, 0}; $CellContext`old2[
          Pattern[$CellContext`c, 
           Blank[]]] := Dot[
          Inverse[$CellContext`TA], $CellContext`c - {1, 0}]; $CellContext`old[
          Pattern[$CellContext`c, 
           Blank[]]] := {
          Part[
           $CellContext`old2[$CellContext`c], 1], 
          Part[
           $CellContext`old2[$CellContext`c], 2], 1 - Part[
           $CellContext`old2[$CellContext`c], 1] - Part[
           $CellContext`old2[$CellContext`c], 
           2]}; $CellContext`CreateTriangle[] := 
        Module[{$CellContext`a, $CellContext`b, $CellContext`c}, \
$CellContext`b = $CellContext`new[{0, 1, 
             0}]; $CellContext`a = $CellContext`new[{1, 0, 
             0}]; $CellContext`c = $CellContext`new[{0, 0, 
             1}]; $CellContext`Tri = Graphics[
             
             Line[{$CellContext`b, $CellContext`a, $CellContext`c, \
$CellContext`b}]]; $CellContext`leftri = Graphics[{
              GrayLevel[1], 
              
              Polygon[{{-0.08, -0.04}, {-0.08, 0.95}, {0.5, 
                0.95}, $CellContext`a, {0, 
                0}, {-0.08, -0.04}}]}]; $CellContext`rightri = Graphics[{
              GrayLevel[1], 
              
              Polygon[{{0.5, 0.95}, {1.095, 0.95}, {
                1.095, -0.04}, $CellContext`c, $CellContext`a, {0.5, 
                0.95}}]}]; $CellContext`downl = Graphics[{
              GrayLevel[1], 
              
              Polygon[{{-0.08, -0.04}, {1.08, -0.04}, {
                1.08, 0}, {-0.04, 0}, {-0.08, -0.04}}]}]; 
          Null]; $CellContext`CreateTriangle[]; $CellContext`xwd[
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
           Blank[]], 
          Pattern[$CellContext`h11, 
           Blank[]], 
          Pattern[$CellContext`h12, 
           Blank[]], 
          Pattern[$CellContext`h22, 
           
           Blank[]]] := $CellContext`h11 $CellContext`ffww $CellContext`ffww \
$CellContext`xww $CellContext`xww + (1 - $CellContext`p) (1 - $CellContext`e/
           2) $CellContext`h12 $CellContext`ffww $CellContext`ffwd \
$CellContext`xww $CellContext`xwd[$CellContext`xww, $CellContext`xdd] + (
           1 - $CellContext`d) (1 - $CellContext`e/2) (
           1 - $CellContext`p) $CellContext`h12 $CellContext`ffww \
$CellContext`ffwd $CellContext`xww $CellContext`xwd[$CellContext`xww, \
$CellContext`xdd] + (
           1 - $CellContext`d) (
            1 - $CellContext`p)^2 $CellContext`h22 $CellContext`ffwd \
$CellContext`ffwd $CellContext`xwd[$CellContext`xww, $CellContext`xdd] \
$CellContext`xwd[$CellContext`xww, $CellContext`xdd]; $CellContext`fdd[
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
          Pattern[$CellContext`s, 
           Blank[]], 
          Pattern[$CellContext`h22, 
           Blank[]], 
          Pattern[$CellContext`h23, 
           Blank[]], 
          Pattern[$CellContext`h33, 
           Blank[]]] := (
          1 - $CellContext`s) ($CellContext`h33 $CellContext`ffdd \
$CellContext`ffdd $CellContext`xdd $CellContext`xdd + 
          2 $CellContext`p $CellContext`h23 $CellContext`ffdd \
$CellContext`ffwd $CellContext`xdd $CellContext`xwd[$CellContext`xww, \
$CellContext`xdd] + $CellContext`p^2 $CellContext`h22 $CellContext`ffwd \
$CellContext`ffwd $CellContext`xwd[$CellContext`xww, $CellContext`xdd] \
$CellContext`xwd[$CellContext`xww, $CellContext`xdd]); $CellContext`fwd[
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
          Pattern[$CellContext`h, 
           Blank[]], 
          Pattern[$CellContext`s, 
           Blank[]], 
          Pattern[$CellContext`e, 
           Blank[]], 
          Pattern[$CellContext`g, 
           Blank[]], 
          Pattern[$CellContext`h12, 
           Blank[]], 
          Pattern[$CellContext`h13, 
           Blank[]], 
          Pattern[$CellContext`h22, 
           Blank[]], 
          Pattern[$CellContext`h23, 
           Blank[]]] := (1 - $CellContext`h $CellContext`s) (
          2 $CellContext`p (
            1 - $CellContext`p) $CellContext`h22 $CellContext`ffwd \
$CellContext`ffwd $CellContext`xwd[$CellContext`xww, $CellContext`xdd] \
$CellContext`xwd[$CellContext`xww, $CellContext`xdd] + 
          2 (1 - $CellContext`p) $CellContext`h23 $CellContext`ffdd \
$CellContext`ffwd $CellContext`xdd $CellContext`xwd[$CellContext`xww, \
$CellContext`xdd] + 
          2 (1 - $CellContext`e/2) (1 - $CellContext`g/
            
            2) $CellContext`h12 $CellContext`p $CellContext`ffww \
$CellContext`ffwd $CellContext`xww $CellContext`xwd[$CellContext`xww, \
$CellContext`xdd] + ((2 - $CellContext`e) ((2 - $CellContext`g)/
             2)) $CellContext`h13 $CellContext`ffdd $CellContext`ffww \
$CellContext`xdd $CellContext`xww); $CellContext`ftot[
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
          Pattern[$CellContext`h, 
           Blank[]], 
          Pattern[$CellContext`s, 
           Blank[]], 
          Pattern[$CellContext`e, 
           Blank[]], 
          Pattern[$CellContext`g, 
           Blank[]], 
          Pattern[$CellContext`h11, 
           Blank[]], 
          Pattern[$CellContext`h12, 
           Blank[]], 
          Pattern[$CellContext`h13, 
           Blank[]], 
          Pattern[$CellContext`h22, 
           Blank[]], 
          Pattern[$CellContext`h23, 
           Blank[]], 
          Pattern[$CellContext`h33, 
           
           Blank[]]] := $CellContext`fww[$CellContext`xww, $CellContext`xdd, \
$CellContext`ffww, $CellContext`ffwd, $CellContext`ffdd, $CellContext`p, \
$CellContext`d, $CellContext`e, $CellContext`h11, $CellContext`h12, \
$CellContext`h22] + $CellContext`fwd[$CellContext`xww, $CellContext`xdd, \
$CellContext`ffww, $CellContext`ffwd, $CellContext`ffdd, $CellContext`p, \
$CellContext`h, $CellContext`s, $CellContext`e, $CellContext`g, \
$CellContext`h12, $CellContext`h13, $CellContext`h22, $CellContext`h23] + \
$CellContext`fdd[$CellContext`xww, $CellContext`xdd, $CellContext`ffww, \
$CellContext`ffwd, $CellContext`ffdd, $CellContext`p, $CellContext`s, \
$CellContext`h22, $CellContext`h23, $CellContext`h33]; $CellContext`xdot[
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
          Pattern[$CellContext`h, 
           Blank[]], 
          Pattern[$CellContext`s, 
           Blank[]], 
          Pattern[$CellContext`e, 
           Blank[]], 
          Pattern[$CellContext`g, 
           Blank[]], 
          Pattern[$CellContext`h11, 
           Blank[]], 
          Pattern[$CellContext`h12, 
           Blank[]], 
          Pattern[$CellContext`h13, 
           Blank[]], 
          Pattern[$CellContext`h22, 
           Blank[]], 
          Pattern[$CellContext`h23, 
           Blank[]], 
          Pattern[$CellContext`h33, 
           
           Blank[]]] := $CellContext`fww[$CellContext`xww, $CellContext`xdd, \
$CellContext`ffww, $CellContext`ffwd, $CellContext`ffdd, $CellContext`p, \
$CellContext`d, $CellContext`e, $CellContext`h11, $CellContext`h12, \
$CellContext`h22] - $CellContext`xww $CellContext`ftot[$CellContext`xww, \
$CellContext`xdd, $CellContext`ffww, $CellContext`ffwd, $CellContext`ffdd, \
$CellContext`p, $CellContext`d, $CellContext`h, $CellContext`s, \
$CellContext`e, $CellContext`g, $CellContext`h11, $CellContext`h12, \
$CellContext`h13, $CellContext`h22, $CellContext`h23, $CellContext`h33]; \
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
          Pattern[$CellContext`h, 
           Blank[]], 
          Pattern[$CellContext`s, 
           Blank[]], 
          Pattern[$CellContext`e, 
           Blank[]], 
          Pattern[$CellContext`g, 
           Blank[]], 
          Pattern[$CellContext`h11, 
           Blank[]], 
          Pattern[$CellContext`h12, 
           Blank[]], 
          Pattern[$CellContext`h13, 
           Blank[]], 
          Pattern[$CellContext`h22, 
           Blank[]], 
          Pattern[$CellContext`h23, 
           Blank[]], 
          Pattern[$CellContext`h33, 
           
           Blank[]]] := $CellContext`fdd[$CellContext`xww, $CellContext`xdd, \
$CellContext`ffww, $CellContext`ffwd, $CellContext`ffdd, $CellContext`p, \
$CellContext`s, $CellContext`h22, $CellContext`h23, $CellContext`h33] - \
$CellContext`xdd $CellContext`ftot[$CellContext`xww, $CellContext`xdd, \
$CellContext`ffww, $CellContext`ffwd, $CellContext`ffdd, $CellContext`p, \
$CellContext`d, $CellContext`h, $CellContext`s, $CellContext`e, \
$CellContext`g, $CellContext`h11, $CellContext`h12, $CellContext`h13, \
$CellContext`h22, $CellContext`h23, $CellContext`h33]; $CellContext`x1 = 
        0; $CellContext`y1 = 0; $CellContext`x3 = 0.5; $CellContext`y3 = 
        Sqrt[3]/2.; $CellContext`x2 = 1; $CellContext`y2 = 
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
          Pattern[$CellContext`h, 
           Blank[]], 
          Pattern[$CellContext`s, 
           Blank[]], 
          Pattern[$CellContext`e, 
           Blank[]], 
          Pattern[$CellContext`g, 
           Blank[]], 
          Pattern[$CellContext`h11, 
           Blank[]], 
          Pattern[$CellContext`h12, 
           Blank[]], 
          Pattern[$CellContext`h13, 
           Blank[]], 
          Pattern[$CellContext`h22, 
           Blank[]], 
          Pattern[$CellContext`h23, 
           Blank[]], 
          Pattern[$CellContext`h33, 
           
           Blank[]]] := ($CellContext`x1 - $CellContext`x3) \
$CellContext`xdot[
            $CellContext`lamda1[$CellContext`xcart, $CellContext`ycart], 
            $CellContext`lamda2[$CellContext`xcart, $CellContext`ycart], \
$CellContext`ffww, $CellContext`ffwd, $CellContext`ffdd, $CellContext`p, \
$CellContext`d, $CellContext`h, $CellContext`s, $CellContext`e, \
$CellContext`g, $CellContext`h11, $CellContext`h12, $CellContext`h13, \
$CellContext`h22, $CellContext`h23, $CellContext`h33] + ($CellContext`x2 - \
$CellContext`x3) $CellContext`ydot[
            $CellContext`lamda1[$CellContext`xcart, $CellContext`ycart], 
            $CellContext`lamda2[$CellContext`xcart, $CellContext`ycart], \
$CellContext`ffww, $CellContext`ffwd, $CellContext`ffdd, $CellContext`p, \
$CellContext`d, $CellContext`h, $CellContext`s, $CellContext`e, \
$CellContext`g, $CellContext`h11, $CellContext`h12, $CellContext`h13, \
$CellContext`h22, $CellContext`h23, $CellContext`h33]; $CellContext`ydotcart[
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
          Pattern[$CellContext`h, 
           Blank[]], 
          Pattern[$CellContext`s, 
           Blank[]], 
          Pattern[$CellContext`e, 
           Blank[]], 
          Pattern[$CellContext`g, 
           Blank[]], 
          Pattern[$CellContext`h11, 
           Blank[]], 
          Pattern[$CellContext`h12, 
           Blank[]], 
          Pattern[$CellContext`h13, 
           Blank[]], 
          Pattern[$CellContext`h22, 
           Blank[]], 
          Pattern[$CellContext`h23, 
           Blank[]], 
          Pattern[$CellContext`h33, 
           
           Blank[]]] := ($CellContext`y1 - $CellContext`y3) \
$CellContext`xdot[
            $CellContext`lamda1[$CellContext`xcart, $CellContext`ycart], 
            $CellContext`lamda2[$CellContext`xcart, $CellContext`ycart], \
$CellContext`ffww, $CellContext`ffwd, $CellContext`ffdd, $CellContext`p, \
$CellContext`d, $CellContext`h, $CellContext`s, $CellContext`e, \
$CellContext`g, $CellContext`h11, $CellContext`h12, $CellContext`h13, \
$CellContext`h22, $CellContext`h23, $CellContext`h33] + ($CellContext`y2 - \
$CellContext`y3) $CellContext`ydot[
            $CellContext`lamda1[$CellContext`xcart, $CellContext`ycart], 
            $CellContext`lamda2[$CellContext`xcart, $CellContext`ycart], \
$CellContext`ffww, $CellContext`ffwd, $CellContext`ffdd, $CellContext`p, \
$CellContext`d, $CellContext`h, $CellContext`s, $CellContext`e, \
$CellContext`g, $CellContext`h11, $CellContext`h12, $CellContext`h13, \
$CellContext`h22, $CellContext`h23, $CellContext`h33]; $CellContext`\
\[ScriptCapitalD] = 
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
 CellChangeTimes->{
  3.791054611343812*^9, 3.7910547064209538`*^9, 3.7910550064605627`*^9, {
   3.7910610086773977`*^9, 3.791061023490241*^9}, 3.79106415421541*^9},
 CellLabel->"Out[27]=",ExpressionUUID->"b72ab2f0-eb59-4287-ac4d-c2ffb478a151"]
}, Open  ]]
},
WindowSize->{1399, 705},
WindowMargins->{{0, Automatic}, {Automatic, 25}},
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
Cell[1510, 35, 36977, 873, 3612, "Input",ExpressionUUID->"35e83a99-9137-4b8f-8129-e5c0411d2df2"],
Cell[38490, 910, 27851, 628, 750, "Output",ExpressionUUID->"b72ab2f0-eb59-4287-ac4d-c2ffb478a151"]
}, Open  ]]
}
]
*)

(* NotebookSignature 5wDRFzCLW6VXlAK4yveP0GK1 *)
