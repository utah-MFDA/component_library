*A simple valve test case

*Directory structure
*/VerilogA/testCases/Valvetests/Valve_001/valve_test1.sp

.hdl ./../../../CirValve.va
.hdl ./../Junction3.va
.hdl ./../../../StraightChannel.va
*I do not know exactly what the next line does or if needed
.options post=1  
X1 p1 l11 StraightChannel w=0.5 h=0.5 l=2
X2 p2 l21 StraightChannel w=0.5 h=0.5 l=2 
*Valves in line with channels
XV1 l11 l12 a1 CirValve
XV2 l21 l22 a2 CirValve
*junction
X3 l12 0 StraightChannel w=0.5 h=0.5 l=1
X4 l22 0 StraightChannel w=0.5 h=0.5 l=1
*XJ1 l22 l12 0 Junction3
*connected to the channels
VSP1 p1 0
*PWL(0 20V 2s 20V)
VSP2 p2 0 
*PWL(0 20V 2s 20V)
*connected to the valve
VSA1 a1 0 
*PWL(0 20V 2s 20V)
*VSA2 a2 0 
*PWL(0 20V 2s 20V)
.dc VSP1 0 10 1 VSA 0 20 1
*.dc VSA1 0 20 1
*.dc VSP2
.end 

