*serpentine channel test

.hdl ./../../../SerpentineChannel.va
.hdl ./../../../RectangularChannel.va
.hdl ./../../../TJunction.va
.hdl ./../../../PressurePump.va
.options post=1

X1 A Dout cA cD1 PressurePump pressure=34450 chem_concentration=1
X2 B Dout cA cD2 PressurePump pressure=34450 chem_concentration=0

X3 A D1 cA cD1 SerpentineChannel
X4 B D2 cA cD2 RectangularChannel L=0.00071

X5 D1 D2 Di Dout cD2 cD2 cDout TJunction L=0.0001

.tran 0.01ms 8ms

.probe tran I(X1.c_out)
.probe tran I(X2.c_out)

.probe tran I(X3.c_out)
.probe tran I(X4.c_out)

.probe tran I(X5.c_out)

.end