contract Contract {
    function main() {
        memory[0x40:0x60] = 0x80;
    
        if (msg.data.length >= 0x04) {
            var0 = msg.data[0x00:0x20] >> 0xe0;
        
            if (0x9d118770 > var0) {
                if (var0 == 0x10c117ab) {
                    // Dispatch table entry for 0x10c117ab (unknown)
                    var1 = 0x0112;
                    var2 = 0x02e5;
                    var3 = msg.data.length;
                    var4 = 0x04;
                    var2, var3, var4, var5 = func_2485(var3, var4);
                    var6 = 0x0b6e;
                
                label_1748:
                    var7 = 0x04c5;
                    var8 = msg.sender == 0xfac983fce7ef3cee8ffb2ceb967e1b2362aada00;
                
                    if (var8) {
                        func_1780(var8);
                        // Error: Could not resolve jump destination!
                    } else {
                        var8 = msg.sender == 0x0811fd1808e14f0b93f0514313965a5f142c5539;
                        func_1780(var8);
                        // Error: Could not resolve method call return address!
                    }
                } else if (var0 == 0x23a69e75) {
                    // Dispatch table entry for 0x23a69e75 (unknown)
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x0112;
                    var2 = 0x0305;
                    var3 = msg.data.length;
                    var4 = 0x04;
                    var2, var3, var4, var5 = func_24EB(var3, var4);
                    var6 = 0x0c74;
                    var7 = var2;
                    var8 = var3;
                    var9 = var4;
                    var10 = var5;
                    var11 = 0x01;
                    func_1909(var7, var8, var9, var10, var11);
                    goto label_0C74;
                } else if (var0 == 0x2768b07e) {
                    // Dispatch table entry for 0x2768b07e (unknown)
                    var1 = 0x0112;
                    var2 = 0x0318;
                    var3 = msg.data.length;
                    var4 = 0x04;
                    var2, var3, var4, var5 = func_2485(var3, var4);
                    var6 = 0x0c90;
                    goto label_1748;
                } else if (var0 == 0x5c19a95c) {
                    // Dispatch table entry for delegate(address)
                    var1 = 0x0112;
                    var2 = 0x032b;
                    var3 = msg.data.length;
                    var4 = 0x04;
                    var2 = func_253E(var3, var4);
                    var3 = 0x0e2c;
                    func_03D4();
                    var temp74 = memory[0x40:0x60];
                    var3 = temp74;
                    var temp75 = msg.data.length - 0x24;
                    memory[var3:var3 + temp75] = msg.data[0x24:0x24 + temp75];
                    var temp76;
                    temp76, memory[0x00:0x00] = address(var2).delegatecall.gas(msg.gas)(memory[var3:var3 + temp75]);
                    var temp77 = returndata.length;
                    var4 = temp77;
                    memory[var3:var3 + var4] = returndata[0x00:0x00 + var4];
                
                    if (!temp76) { revert(memory[var3:var3 + var4]); }
                    else { return memory[var3:var3 + var4]; }
                } else if (var0 == 0x7c04575b) {
                    // Dispatch table entry for 0x7c04575b (unknown)
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x0112;
                    func_0E5E();
                    stop();
                } else { goto label_0114; }
            } else if (var0 == 0x9d118770) {
                // Dispatch table entry for destroy(uint256)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0112;
                var2 = 0x0360;
                var3 = msg.data.length;
                var4 = 0x04;
                var2 = func_2559(var3, var4);
                var3 = 0x0e79;
                func_03D4();
            
                if (!var2) { selfdestruct(msg.sender); }
            
                var temp78 = memory[0x40:0x60];
                memory[temp78:temp78 + 0x20] = 0x2e1a7d4d << 0xe0;
                memory[temp78 + 0x04:temp78 + 0x04 + 0x20] = var2;
                var temp79 = memory[0x00:0x20];
                memory[0x00:0x20] = code[0x291e:0x293e];
                var temp80 = memory[0x00:0x20];
                memory[0x00:0x20] = temp79;
                var3 = temp80;
                var4 = 0x2e1a7d4d;
                var5 = temp78 + 0x24;
                var6 = 0x00;
                var7 = memory[0x40:0x60];
                var8 = var5 - var7;
                var9 = var7;
                var10 = 0x00;
                var11 = var3;
                var12 = !address(var11).code.length;
            
                if (var12) { revert(memory[0x00:0x00]); }
            
                var temp81;
                temp81, memory[var7:var7 + var6] = address(var11).call.gas(msg.gas).value(var10)(memory[var9:var9 + var8]);
                var6 = !temp81;
            
                if (!var6) {
                    var temp82 = memory[0x40:0x60];
                    memory[temp82:temp82 + 0x20] = 0x00;
                    memory[0x40:0x60] = temp82 + 0x20;
                    var3 = 0x00;
                    var4 = msg.sender;
                    var5 = var2;
                    var6 = 0x0efe;
                    var8 = temp82 + 0x20;
                    var7 = temp82;
                    var6 = func_279D(var7, var8);
                    var temp83 = memory[0x40:0x60];
                    var temp84;
                    temp84, memory[temp83:temp83 + 0x00] = address(var4).call.gas(msg.gas).value(var5)(memory[temp83:temp83 + var6 - temp83]);
                    var5 = returndata.length;
                    var6 = var5;
                
                    if (var6 == 0x00) {
                        var3 = var4;
                    
                        if (var3) {
                        label_0F77:
                            selfdestruct(msg.sender);
                        } else {
                        label_0F4A:
                            var temp85 = memory[0x40:0x60];
                            memory[temp85:temp85 + 0x20] = 0x461bcd << 0xe5;
                            memory[temp85 + 0x04:temp85 + 0x04 + 0x20] = 0x20;
                            memory[temp85 + 0x24:temp85 + 0x24 + 0x20] = 0x03;
                            memory[temp85 + 0x44:temp85 + 0x44 + 0x20] = 0x444553 << 0xe8;
                            var4 = temp85 + 0x64;
                            goto label_01B4;
                        }
                    } else {
                        var temp86 = memory[0x40:0x60];
                        var5 = temp86;
                        memory[0x40:0x60] = var5 + (returndata.length + 0x3f & ~0x1f);
                        memory[var5:var5 + 0x20] = returndata.length;
                        var temp87 = returndata.length;
                        memory[var5 + 0x20:var5 + 0x20 + temp87] = returndata[0x00:0x00 + temp87];
                        var3 = var4;
                    
                        if (var3) { goto label_0F77; }
                        else { goto label_0F4A; }
                    }
                } else {
                    var temp88 = returndata.length;
                    memory[0x00:0x00 + temp88] = returndata[0x00:0x00 + temp88];
                    revert(memory[0x00:0x00 + returndata.length]);
                }
            } else if (var0 == 0xa7b8e688) {
                // Dispatch table entry for 0xa7b8e688 (unknown)
                var1 = 0x0112;
                var2 = 0x0373;
                var3 = msg.data.length;
                var4 = 0x04;
                var2, var3, var4, var5, var6 = func_2584(var3, var4);
                var7 = 0x0f84;
                func_1E87();
                var7 = 0x0f91;
                var8 = var2 + 0x20;
                var9 = var2;
                var7 = func_26FF(var8, var9);
            
                if (!(var7 & ~((0x01 << 0xb0) - 0x01))) {
                label_101D:
                    var7 = 0x102d;
                    var temp89 = var2;
                    var8 = temp89 + 0x40;
                    var9 = temp89 + 0x20;
                    var7 = func_253E(var8, var9);
                    var7 = var7 & (0x01 << 0xa0) - 0x01;
                    var8 = 0xdcb698ab;
                    var9 = msg.value;
                    var temp90 = memory[0x40:0x60];
                    memory[temp90:temp90 + 0x20] = (var8 & 0xffffffff) << 0xe0;
                    var10 = 0x105f;
                    var11 = var3;
                    var12 = var4;
                    var13 = var5;
                    var14 = var6;
                    var15 = temp90 + 0x04;
                    var temp91 = var15;
                    memory[temp91:temp91 + 0x20] = 0x40;
                    var16 = 0x00;
                    var17 = 0x27cd;
                    var18 = temp91 + 0x40;
                    var19 = var12;
                    var20 = var11;
                    var17 = func_2729(var18, var19, var20);
                    var temp92 = var15;
                    memory[temp92 + 0x20:temp92 + 0x20 + 0x20] = var17 - temp92;
                    var18 = 0x27e0;
                    var19 = var17;
                    var20 = var14;
                    var21 = var13;
                    var18 = func_2729(var19, var20, var21);
                    var10 = var18;
                    // Error: Could not resolve jump destination!
                } else {
                    var7 = block.timestamp;
                    var8 = 0x0fac;
                    var9 = 0x01;
                    var10 = block.number;
                    var8 = func_23D2(var9, var10);
                    var temp93 = memory[0x40:0x60] + 0x20;
                    memory[temp93:temp93 + 0x20] = var7;
                    memory[temp93 + 0x20:temp93 + 0x20 + 0x20] = block.blockHash(var8);
                    var7 = temp93 + 0x40;
                    var temp94 = memory[0x40:0x60];
                    var temp95 = var7;
                    memory[temp94:temp94 + 0x20] = temp95 - temp94 + ~0x1f;
                    memory[0x40:0x60] = temp95;
                    var7 = keccak256(memory[temp94 + 0x20:temp94 + 0x20 + memory[temp94:temp94 + 0x20]]) & ~((0x01 << 0xb0) - 0x01);
                    var8 = 0x0ff6;
                    var9 = var2 + 0x20;
                    var10 = var2;
                    var8 = func_26FF(var9, var10);
                
                    if (var8 & ~((0x01 << 0xb0) - 0x01) == var7) { goto label_101D; }
                
                    var temp96 = memory[0x40:0x60];
                    memory[temp96:temp96 + 0x20] = 0x461bcd << 0xe5;
                    var8 = temp96 + 0x04;
                    var7 = 0x01b4;
                    var7 = func_23EB(var8);
                    goto label_01B4;
                }
            } else if (var0 == 0xd2925723) {
                // Dispatch table entry for 0xd2925723 (unknown)
                var1 = 0x0112;
                var2 = 0x0386;
                var3 = msg.data.length;
                var4 = 0x04;
                var2, var3, var4 = func_2606(var3, var4);
                func_0386(var2, var3, var4);
                stop();
            } else if (var0 == 0xd69ea74d) {
                // Dispatch table entry for 0xd69ea74d (unknown)
                var1 = 0x039e;
                var2 = 0x0399;
                var3 = msg.data.length;
                var4 = 0x04;
                var2, var3, var4, var5 = func_265A(var3, var4);
                var1 = func_0399(var2, var3, var4, var5);
                var temp97 = var1;
                var1 = 0x03ab;
                var2 = temp97;
                var3 = memory[0x40:0x60];
                var temp98 = var3;
                memory[temp98:temp98 + 0x20] = 0x20;
                var4 = 0x00;
                var5 = 0x2143;
                var6 = temp98 + 0x20;
                var7 = var2;
                var5 = func_26C0(var6, var7);
                var1 = var5;
                // Error: Could not resolve jump destination!
            } else if (var0 == 0xfa461e33) {
                // Dispatch table entry for uniswapV3SwapCallback(int256,int256,bytes)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0112;
                var2 = 0x03cf;
                var3 = msg.data.length;
                var4 = 0x04;
                var2, var3, var4, var5 = func_24EB(var3, var4);
                var6 = 0x0c74;
                var7 = var2;
                var8 = var3;
                var9 = var4;
                var10 = var5;
                var11 = 0x00;
                func_1909(var7, var8, var9, var10, var11);
                goto label_0C74;
            } else { goto label_0114; }
        } else if (msg.data.length) {
        label_0114:
            var var0 = 0x011c;
            func_03D4();
            var temp0 = memory[0x40:0x60];
            memory[temp0:temp0 + 0x01] = msg.data[0x00:0x01];
            var0 = memory[temp0:temp0 + 0x20];
            memory[temp0:temp0 + 0x0a] = msg.data[0x01:0x0b];
            var var1 = memory[temp0:temp0 + 0x20];
        
            if (!(var1 & ~((0x01 << 0xb0) - 0x01))) {
            label_01BD:
                var temp1 = var0 & ~((0x01 << 0xf8) - 0x01);
                var var2 = temp1 <= 0x01 << 0xf9;
                var var3 = temp1;
            
                if (var3) {
                    if (!var3) {
                    label_01F9:
                    
                        if (var0 & ~((0x01 << 0xf8) - 0x01) <= 0x05 << 0xf8) {
                            var3 = 0x0217;
                            var4 = var2;
                            func_05C5(var4);
                            var3 = var0 & ~((0x01 << 0xf8) - 0x01) == 0x01 << 0xf9;
                        
                            if (var3) {
                                if (!var3) { stop(); }
                            
                            label_0246:
                                var temp59 = memory[0x40:0x60];
                                var temp60 = msg.value;
                                var temp61;
                                temp61, memory[temp59:temp59 + 0x00] = address(block.coinbase).call.gas(!temp60 * 0x08fc).value(temp60)(memory[temp59:temp59 + 0x00]);
                                var3 = !temp61;
                            
                                if (!var3) { stop(); }
                            
                                var temp62 = returndata.length;
                                memory[0x00:0x00 + temp62] = returndata[0x00:0x00 + temp62];
                                revert(memory[0x00:0x00 + returndata.length]);
                            } else if (var0 & ~((0x01 << 0xf8) - 0x01) != 0x05 << 0xf8) { stop(); }
                            else { goto label_0246; }
                        } else if ((0x03 << 0xf9) - (var0 & ~((0x01 << 0xf8) - 0x01))) {
                            var3 = 0x0296;
                            var temp2 = memory[0x40:0x60];
                            memory[0x40:0x60] = temp2 + 0xa0;
                            memory[temp2:temp2 + 0x20] = 0x00;
                            memory[temp2 + 0x20:temp2 + 0x20 + 0x20] = 0x00;
                            memory[temp2 + 0x40:temp2 + 0x40 + 0x20] = 0x00;
                            memory[temp2 + 0x60:temp2 + 0x60 + 0x20] = 0x00;
                            var var4 = temp2;
                            memory[var4 + 0x80:var4 + 0x80 + 0x20] = 0x00;
                            var temp3 = memory[0x40:0x60];
                            memory[0x40:0x60] = temp3 + 0xc0;
                            memory[temp3:temp3 + 0x20] = 0x00;
                            memory[temp3 + 0x20:temp3 + 0x20 + 0x20] = 0x00;
                            memory[temp3 + 0x40:temp3 + 0x40 + 0x20] = 0x00;
                            memory[temp3 + 0x60:temp3 + 0x60 + 0x20] = 0x00;
                            memory[temp3 + 0x80:temp3 + 0x80 + 0x20] = 0x00;
                            var var5 = temp3;
                            memory[var5 + 0xa0:var5 + 0xa0 + 0x20] = 0x00;
                            var temp4 = memory[0x40:0x60];
                            memory[temp4:temp4 + 0xbb] = msg.data[0x0b:0xc6];
                            var temp5 = memory[temp4:temp4 + 0x20] >> 0xf8;
                            memory[var4 + 0x20:var4 + 0x20 + 0x20] = (temp5 ~ 0x01) % 0x02;
                            var var7 = (temp5 >> 0x01) & 0x01;
                            var var6 = (temp5 >> 0x02) & 0x01;
                            memory[var5 + 0xa0:var5 + 0xa0 + 0x20] = temp5 >> 0x03;
                            memory[var4:var4 + 0x20] = memory[temp4 - 0x0b:temp4 - 0x0b + 0x20] & (0x01 << 0xa0) - 0x01;
                            memory[var5:var5 + 0x20] = memory[temp4 + 0x09:temp4 + 0x09 + 0x20] & (0x01 << 0xa0) - 0x01;
                            memory[var4 + 0x40:var4 + 0x40 + 0x20] = memory[temp4 + 0x1d:temp4 + 0x1d + 0x20] & (0x01 << 0xa0) - 0x01;
                            memory[var5 + 0x20:var5 + 0x20 + 0x20] = memory[temp4 + 0x31:temp4 + 0x31 + 0x20] & (0x01 << 0xa0) - 0x01;
                            memory[var4 + 0x80:var4 + 0x80 + 0x20] = memory[temp4 + 0x51:temp4 + 0x51 + 0x20];
                            var var8 = memory[temp4 + 0x71:temp4 + 0x71 + 0x20];
                            memory[var5 + 0x40:var5 + 0x40 + 0x20] = memory[temp4 + 0x91:temp4 + 0x91 + 0x20];
                            var var9 = (memory[temp4 + 0xb2:temp4 + 0xb2 + 0x20] >> 0xe0) << ((memory[temp4 + 0xb1:temp4 + 0xb1 + 0x20] >> 0xf8) << 0x02);
                            var var10 = memory[temp4 + 0xb6:temp4 + 0xb6 + 0x20];
                            memory[var4 + 0x60:var4 + 0x60 + 0x20] = memory[temp4 + 0x99:temp4 + 0x99 + 0x20];
                            memory[var5 + 0x80:var5 + 0x80 + 0x20] = memory[temp4 + 0x9b:temp4 + 0x9b + 0x20];
                            var temp6 = memory[0x00:0x20];
                            memory[0x00:0x20] = code[0x291e:0x293e];
                            var temp7 = memory[0x00:0x20];
                            memory[0x00:0x20] = temp6;
                            var var11 = temp7;
                            memory[var5 + 0x60:var5 + 0x60 + 0x20] = var11 & (0x01 << 0xa0) - 0x01;
                        
                            if (var7) {
                                var10 = var9;
                                var11 = 0x0a79;
                                var12 = var4;
                                var13 = var5;
                            
                            label_15A1:
                                var14 = 0x00;
                                var15 = 0x60;
                                var16 = 0x00;
                                var17 = var16;
                                var18 = 0x15b5;
                                var var19 = memory[var13 + 0x20:var13 + 0x20 + 0x20];
                                var18, var19 = func_21B3(var19);
                                var17 = var19;
                                var16 = var18;
                            
                                if (!var17) {
                                    var temp19 = var12;
                                    var temp20 = memory[temp19:temp19 + 0x20];
                                    var temp21 = memory[temp19 + 0x40:temp19 + 0x40 + 0x20];
                                    var temp22 = memory[temp19 + 0x80:temp19 + 0x80 + 0x20];
                                    var temp23 = memory[temp19 + 0x60:temp19 + 0x60 + 0x20];
                                    var temp24 = var13;
                                    var temp25 = memory[temp24 + 0x80:temp24 + 0x80 + 0x20];
                                    var temp26 = memory[temp24 + 0x60:temp24 + 0x60 + 0x20];
                                    var temp27 = memory[temp24 + 0x20:temp24 + 0x20 + 0x20];
                                    var temp28 = memory[0x40:0x60];
                                    memory[temp28 + 0x20:temp28 + 0x20 + 0x20] = !!memory[temp19 + 0x20:temp19 + 0x20 + 0x20] << 0xf8;
                                    var temp29 = ~((0x01 << 0x60) - 0x01);
                                    memory[temp28 + 0x21:temp28 + 0x21 + 0x20] = temp29 & (temp20 << 0x60);
                                    memory[temp28 + 0x35:temp28 + 0x35 + 0x20] = temp29 & (temp21 << 0x60);
                                    memory[temp28 + 0x49:temp28 + 0x49 + 0x20] = temp22;
                                    var temp30 = ~((0x01 << 0xf0) - 0x01);
                                    memory[temp28 + 0x69:temp28 + 0x69 + 0x20] = temp30 & (temp23 << 0xf0);
                                    memory[temp28 + 0x6b:temp28 + 0x6b + 0x20] = temp30 & (temp25 << 0xf0);
                                    memory[temp28 + 0x6d:temp28 + 0x6d + 0x20] = temp29 & (temp26 << 0x60);
                                    memory[temp28 + 0x81:temp28 + 0x81 + 0x20] = temp29 & (temp27 << 0x60);
                                    var temp31 = temp28 + 0x95;
                                    var temp32 = memory[0x40:0x60];
                                    memory[temp32:temp32 + 0x20] = temp31 - temp32 - 0x20;
                                    memory[0x40:0x60] = temp31;
                                    var15 = temp32;
                                    var16 = 0x00;
                                    var17 = var16;
                                    var18 = 0x172a;
                                    var19 = memory[temp24:temp24 + 0x20];
                                    var var20 = 0x00;
                                    var var21 = memory[temp24 + 0xa0:temp24 + 0xa0 + 0x20];
                                    var var22 = memory[temp24 + 0x40:temp24 + 0x40 + 0x20];
                                    var var23 = var15;
                                    var18, var19 = func_21F2(var19, var20, var21, var22, var23);
                                
                                label_172A:
                                    var17 = var19;
                                    var16 = var18;
                                
                                    if (memory[var13 + 0xa0:var13 + 0xa0 + 0x20]) {
                                        var19 = var17;
                                        var18 = 0x13b6;
                                        var18 = func_28DF(var19);
                                    
                                    label_13B6:
                                        var11 = var18;
                                        // Error: Could not resolve jump destination!
                                    } else {
                                        var18 = var16;
                                        var temp33 = var18;
                                        var18 = 0x13b6;
                                        var19 = temp33;
                                        var18 = func_28DF(var19);
                                        goto label_13B6;
                                    }
                                } else {
                                    var temp34 = var12;
                                    var temp35 = memory[temp34:temp34 + 0x20];
                                    var temp36 = memory[temp34 + 0x40:temp34 + 0x40 + 0x20];
                                    var temp37 = memory[temp34 + 0x80:temp34 + 0x80 + 0x20];
                                    var temp38 = memory[temp34 + 0x60:temp34 + 0x60 + 0x20];
                                    var temp39 = var13;
                                    var temp40 = memory[temp39 + 0x80:temp39 + 0x80 + 0x20];
                                    var temp41 = memory[temp39 + 0x60:temp39 + 0x60 + 0x20];
                                    var temp42 = memory[0x40:0x60];
                                    memory[temp42 + 0x20:temp42 + 0x20 + 0x20] = !!memory[temp34 + 0x20:temp34 + 0x20 + 0x20] << 0xf8;
                                    var temp43 = ~((0x01 << 0x60) - 0x01);
                                    memory[temp42 + 0x21:temp42 + 0x21 + 0x20] = temp43 & (temp35 << 0x60);
                                    memory[temp42 + 0x35:temp42 + 0x35 + 0x20] = temp43 & (temp36 << 0x60);
                                    memory[temp42 + 0x49:temp42 + 0x49 + 0x20] = temp37;
                                    var temp44 = ~((0x01 << 0xf0) - 0x01);
                                    memory[temp42 + 0x69:temp42 + 0x69 + 0x20] = temp44 & (temp38 << 0xf0);
                                    memory[temp42 + 0x6b:temp42 + 0x6b + 0x20] = temp44 & (temp40 << 0xf0);
                                    memory[temp42 + 0x6d:temp42 + 0x6d + 0x20] = temp43 & (temp41 << 0x60);
                                    memory[temp42 + 0x81:temp42 + 0x81 + 0x20] = var16 & ~((0x01 << 0xf8) - 0x01);
                                    var temp45 = temp42 + 0x82;
                                    var temp46 = memory[0x40:0x60];
                                    memory[temp46:temp46 + 0x20] = temp45 - temp46 - 0x20;
                                    memory[0x40:0x60] = temp45;
                                    var15 = temp46;
                                    var16 = 0x00;
                                    var17 = var16;
                                    var18 = 0x172a;
                                    var temp47 = var13;
                                    var19 = memory[temp47:temp47 + 0x20];
                                    var20 = 0x00;
                                    var21 = memory[temp47 + 0xa0:temp47 + 0xa0 + 0x20];
                                    var22 = memory[temp47 + 0x40:temp47 + 0x40 + 0x20];
                                    var23 = var15;
                                    var18, var19 = func_21F2(var19, var20, var21, var22, var23);
                                    goto label_172A;
                                }
                            } else if (!memory[var4 + 0x20:var4 + 0x20 + 0x20]) {
                                var10 = var8;
                                var11 = 0x0b33;
                                var temp8 = var4;
                                var var12 = memory[temp8 + 0x40:temp8 + 0x40 + 0x20];
                                var var13 = memory[temp8:temp8 + 0x20];
                                var var14 = memory[temp8 + 0x80:temp8 + 0x80 + 0x20];
                                var var15 = var6;
                                var temp9 = var5;
                                var var16 = memory[temp9:temp9 + 0x20];
                                var var17 = memory[temp9 + 0x20:temp9 + 0x20 + 0x20] << 0x60;
                                var var18 = memory[temp8 + 0x60:temp8 + 0x60 + 0x20] << 0xf0;
                                var11 = func_14BC(var12, var13, var14, var15, var16, var17, var18);
                            
                                if (var11 >= var10) {
                                label_08F0:
                                    var10 = 0x068f;
                                    var11 = 0x04c0;
                                    var temp10 = var5;
                                    var12 = memory[temp10:temp10 + 0x20];
                                    var13 = memory[temp10 + 0x20:temp10 + 0x20 + 0x20];
                                    var14 = memory[temp10 + 0x40:temp10 + 0x40 + 0x20];
                                    var15 = var9;
                                    var16 = memory[temp10 + 0xa0:temp10 + 0xa0 + 0x20];
                                    var17 = 0x00;
                                    var11 = func_1476(var12, var13, var14, var15, var16, var17);
                                
                                label_04C0:
                                
                                label_13CE:
                                
                                    if (var11) {
                                        // Error: Could not resolve jump destination!
                                    } else {
                                        var temp11 = memory[0x40:0x60];
                                        memory[temp11:temp11 + 0x20] = 0x05709238;
                                        var12 = 0x05709238;
                                        memory[0x40:0x60] = temp11 + 0xae124720;
                                        memory[temp11 + 0x20:temp11 + 0x20 + 0xae124700] = msg.data[msg.data.length:msg.data.length + 0xae124700];
                                        var13 = temp11;
                                        var14 = 0x00;
                                        var15 = 0x140e;
                                        var16 = var12;
                                        var17 = 0x01;
                                        var15 = func_289D(var16, var17);
                                    
                                    label_140E:
                                    
                                        if (var14 >= var15) {
                                        label_0C74:
                                            // Error: Could not resolve jump destination!
                                        } else {
                                            var15 = 0x141f;
                                            var16 = var14;
                                            var17 = block.number;
                                            var15 = func_23D2(var16, var17);
                                            var temp12 = memory[0x40:0x60];
                                            memory[temp12 + 0x20:temp12 + 0x20 + 0x20] = block.blockHash(var15);
                                            var temp13 = temp12 + 0x40;
                                            var temp14 = memory[0x40:0x60];
                                            memory[temp14:temp14 + 0x20] = temp13 - temp14 - 0x20;
                                            memory[0x40:0x60] = temp13;
                                            var15 = keccak256(memory[temp14 + 0x20:temp14 + 0x20 + memory[temp14:temp14 + 0x20]]) >> 0x00;
                                            var16 = var13;
                                            var17 = var14;
                                        
                                            if (var17 < memory[var16:var16 + 0x20]) {
                                                memory[var17 * 0x20 + var16 + 0x20:var17 * 0x20 + var16 + 0x20 + 0x20] = var15;
                                                var15 = var14;
                                                var16 = 0x146b;
                                                var17 = var15;
                                                var16 = func_28C6(var17);
                                                var14 = var16;
                                                var15 = 0x140e;
                                                var16 = var12;
                                                var17 = 0x01;
                                                var15 = func_289D(var16, var17);
                                                goto label_140E;
                                            } else {
                                                var18 = 0x1456;
                                                memory[0x00:0x20] = 0x4e487b71 << 0xe0;
                                                memory[0x04:0x24] = 0x32;
                                                revert(memory[0x00:0x24]);
                                            }
                                        }
                                    }
                                } else {
                                    var temp15 = memory[0x40:0x60];
                                    memory[temp15:temp15 + 0x20] = 0x461bcd << 0xe5;
                                    memory[temp15 + 0x04:temp15 + 0x04 + 0x20] = 0x20;
                                    memory[temp15 + 0x24:temp15 + 0x24 + 0x20] = 0x02;
                                    memory[temp15 + 0x44:temp15 + 0x44 + 0x20] = 0x4533 << 0xf0;
                                    var10 = temp15 + 0x64;
                                
                                label_01B4:
                                    var temp16 = memory[0x40:0x60];
                                    revert(memory[temp16:temp16 + var10 - temp16]);
                                }
                            } else {
                                var10 = 0x0ad4;
                                var temp17 = var4;
                                var11 = memory[temp17:temp17 + 0x20];
                                var12 = memory[temp17 + 0x40:temp17 + 0x40 + 0x20];
                                var13 = memory[temp17 + 0x80:temp17 + 0x80 + 0x20];
                                var14 = var8;
                                var15 = var6;
                                var16 = memory[var5:var5 + 0x20];
                                var10 = func_1476(var11, var12, var13, var14, var15, var16);
                            
                            label_0AD4:
                            
                                if (var10) {
                                label_088A:
                                    goto label_08F0;
                                } else {
                                    var temp18 = memory[0x40:0x60];
                                    memory[temp18:temp18 + 0x20] = 0x461bcd << 0xe5;
                                    memory[temp18 + 0x04:temp18 + 0x04 + 0x20] = 0x20;
                                    memory[temp18 + 0x24:temp18 + 0x24 + 0x20] = 0x02;
                                    memory[temp18 + 0x44:temp18 + 0x44 + 0x20] = 0x2299 << 0xf1;
                                    var10 = temp18 + 0x64;
                                    goto label_01B4;
                                }
                            }
                        } else {
                            var3 = 0x0112;
                            var temp48 = memory[0x40:0x60];
                            memory[0x40:0x60] = temp48 + 0xa0;
                            memory[temp48:temp48 + 0x20] = 0x00;
                            memory[temp48 + 0x20:temp48 + 0x20 + 0x20] = 0x00;
                            memory[temp48 + 0x40:temp48 + 0x40 + 0x20] = 0x00;
                            memory[temp48 + 0x60:temp48 + 0x60 + 0x20] = 0x00;
                            var4 = temp48;
                            memory[var4 + 0x80:var4 + 0x80 + 0x20] = 0x00;
                            var temp49 = memory[0x40:0x60];
                            memory[0x40:0x60] = temp49 + 0xc0;
                            memory[temp49:temp49 + 0x20] = 0x00;
                            memory[temp49 + 0x20:temp49 + 0x20 + 0x20] = 0x00;
                            memory[temp49 + 0x40:temp49 + 0x40 + 0x20] = 0x00;
                            memory[temp49 + 0x60:temp49 + 0x60 + 0x20] = 0x00;
                            memory[temp49 + 0x80:temp49 + 0x80 + 0x20] = 0x00;
                            var5 = temp49;
                            memory[var5 + 0xa0:var5 + 0xa0 + 0x20] = 0x00;
                            var temp50 = memory[0x40:0x60];
                            memory[temp50:temp50 + 0xbb] = msg.data[0x0b:0xc6];
                            var temp51 = memory[temp50:temp50 + 0x20] >> 0xf8;
                            memory[var4 + 0x20:var4 + 0x20 + 0x20] = (temp51 ~ 0x01) % 0x02;
                            var7 = (temp51 >> 0x01) & 0x01;
                            var6 = (temp51 >> 0x02) & 0x01;
                            memory[var5 + 0xa0:var5 + 0xa0 + 0x20] = temp51 >> 0x03;
                            memory[var4:var4 + 0x20] = memory[temp50 - 0x0b:temp50 - 0x0b + 0x20] & (0x01 << 0xa0) - 0x01;
                            memory[var5:var5 + 0x20] = memory[temp50 + 0x09:temp50 + 0x09 + 0x20] & (0x01 << 0xa0) - 0x01;
                            memory[var5 + 0x20:var5 + 0x20 + 0x20] = memory[temp50 + 0x1d:temp50 + 0x1d + 0x20] & (0x01 << 0xa0) - 0x01;
                            memory[var4 + 0x80:var4 + 0x80 + 0x20] = (memory[temp50 + 0x3e:temp50 + 0x3e + 0x20] >> 0xe0) << ((memory[temp50 + 0x3d:temp50 + 0x3d + 0x20] >> 0xf8) << 0x02);
                            memory[var5 + 0x40:var5 + 0x40 + 0x20] = memory[temp50 + 0x42:temp50 + 0x42 + 0x20];
                            var9 = memory[temp50 + 0x62:temp50 + 0x62 + 0x20];
                            var10 = memory[temp50 + 0x82:temp50 + 0x82 + 0x20];
                            var8 = memory[temp50 + 0x83:temp50 + 0x83 + 0x20];
                            memory[var4 + 0x60:var4 + 0x60 + 0x20] = memory[temp50 + 0x85:temp50 + 0x85 + 0x20];
                            memory[var5 + 0x80:var5 + 0x80 + 0x20] = memory[temp50 + 0x87:temp50 + 0x87 + 0x20];
                            memory[var5 + 0x60:var5 + 0x60 + 0x20] = memory[temp50 + 0x9b:temp50 + 0x9b + 0x20] & (0x01 << 0xa0) - 0x01;
                            var temp52 = memory[0x00:0x20];
                            memory[0x00:0x20] = code[0x291e:0x293e];
                            var temp53 = memory[0x00:0x20];
                            memory[0x00:0x20] = temp52;
                            var11 = temp53;
                            memory[var4 + 0x40:var4 + 0x40 + 0x20] = var11 & (0x01 << 0xa0) - 0x01;
                        
                            if (var7) {
                                var10 = var9;
                                var11 = 0x07fe;
                                var12 = var4;
                                var13 = var5;
                                goto label_15A1;
                            } else if (!memory[var4 + 0x20:var4 + 0x20 + 0x20]) {
                                var10 = var8;
                                var11 = 0x08bd;
                                var temp54 = var4;
                                var12 = memory[temp54 + 0x40:temp54 + 0x40 + 0x20];
                                var13 = memory[temp54:temp54 + 0x20];
                                var14 = memory[temp54 + 0x80:temp54 + 0x80 + 0x20];
                                var15 = var6;
                                var temp55 = var5;
                                var16 = memory[temp55:temp55 + 0x20];
                                var17 = memory[temp55 + 0x20:temp55 + 0x20 + 0x20] << 0x60;
                                var18 = memory[temp54 + 0x60:temp54 + 0x60 + 0x20] << 0xf0;
                                var11 = func_14BC(var12, var13, var14, var15, var16, var17, var18);
                            
                                if (var11 >= var10) { goto label_08F0; }
                            
                                var temp56 = memory[0x40:0x60];
                                memory[temp56:temp56 + 0x20] = 0x461bcd << 0xe5;
                                memory[temp56 + 0x04:temp56 + 0x04 + 0x20] = 0x20;
                                memory[temp56 + 0x24:temp56 + 0x24 + 0x20] = 0x02;
                                memory[temp56 + 0x44:temp56 + 0x44 + 0x20] = 0x5333 << 0xf0;
                                var10 = temp56 + 0x64;
                                goto label_01B4;
                            } else {
                                var10 = 0x0859;
                                var temp57 = var4;
                                var11 = memory[temp57:temp57 + 0x20];
                                var12 = memory[temp57 + 0x40:temp57 + 0x40 + 0x20];
                                var13 = memory[temp57 + 0x80:temp57 + 0x80 + 0x20];
                                var14 = var8;
                                var15 = var6;
                                var16 = memory[var5:var5 + 0x20];
                                var10 = func_1476(var11, var12, var13, var14, var15, var16);
                            
                            label_0859:
                            
                                if (var10) { goto label_088A; }
                            
                                var temp58 = memory[0x40:0x60];
                                memory[temp58:temp58 + 0x20] = 0x461bcd << 0xe5;
                                memory[temp58 + 0x04:temp58 + 0x04 + 0x20] = 0x20;
                                memory[temp58 + 0x24:temp58 + 0x24 + 0x20] = 0x02;
                                memory[temp58 + 0x44:temp58 + 0x44 + 0x20] = 0x2999 << 0xf1;
                                var10 = temp58 + 0x64;
                                goto label_01B4;
                            }
                        }
                    } else {
                    label_01F1:
                        var3 = 0x0112;
                        var4 = var2;
                        func_04C7(var4);
                        stop();
                    }
                } else if (var0 & ~((0x01 << 0xf8) - 0x01) != 0x03 << 0xf8) { goto label_01F9; }
                else { goto label_01F1; }
            } else {
                var2 = block.timestamp;
                var3 = 0x0151;
                var4 = 0x01;
                var5 = block.number;
                var3 = func_23D2(var4, var5);
                var temp63 = memory[0x40:0x60] + 0x20;
                memory[temp63:temp63 + 0x20] = var2;
                memory[temp63 + 0x20:temp63 + 0x20 + 0x20] = block.blockHash(var3);
                var2 = temp63 + 0x40;
                var temp64 = memory[0x40:0x60];
                var temp65 = var2;
                memory[temp64:temp64 + 0x20] = temp65 - temp64 - 0x20;
                memory[0x40:0x60] = temp65;
            
                if (var1 & ~((0x01 << 0xb0) - 0x01) == keccak256(memory[temp64 + 0x20:temp64 + 0x20 + memory[temp64:temp64 + 0x20]]) & ~((0x01 << 0xb0) - 0x01)) { goto label_01BD; }
            
                var temp66 = memory[0x40:0x60];
                memory[temp66:temp66 + 0x20] = 0x461bcd << 0xe5;
                var2 = 0x01b4;
                var3 = temp66 + 0x04;
                var2 = func_23EB(var3);
                goto label_01B4;
            }
        } else {
            var temp67 = memory[0x00:0x20];
            memory[0x00:0x20] = code[0x291e:0x293e];
            var temp68 = memory[0x00:0x20];
            memory[0x00:0x20] = temp67;
        
            if (temp68 == msg.sender) { stop(); }
        
            var temp69 = memory[0x00:0x20];
            memory[0x00:0x20] = code[0x291e:0x293e];
            var temp70 = memory[0x00:0x20];
            memory[0x00:0x20] = temp69;
            var0 = temp70 & (0x01 << 0xa0) - 0x01;
            var1 = 0xd0e30db0;
            var2 = msg.value;
            var temp71 = memory[0x40:0x60];
            memory[temp71:temp71 + 0x20] = (var1 & 0xffffffff) << 0xe0;
            var3 = temp71 + 0x04;
            var4 = 0x00;
            var5 = memory[0x40:0x60];
            var6 = var3 - var5;
            var7 = var5;
            var8 = var2;
            var9 = var0;
            var10 = !address(var9).code.length;
        
            if (var10) { revert(memory[0x00:0x00]); }
        
            var temp72;
            temp72, memory[var5:var5 + var4] = address(var9).call.gas(msg.gas).value(var8)(memory[var7:var7 + var6]);
            var4 = !temp72;
        
            if (!var4) { stop(); }
        
            var temp73 = returndata.length;
            memory[0x00:0x00 + temp73] = returndata[0x00:0x00 + temp73];
            revert(memory[0x00:0x00 + returndata.length]);
        }
    }
    
    function func_0386(var arg0, var arg1, var arg2) {
        var var0 = 0x10b1;
        func_1E87();
        var0 = !msg.value;
    
        if (!var0) {
            if (var0) {
            label_10F3:
                var0 = 0x1100;
                var var1 = arg0 + 0x20;
                var var2 = arg0;
                var0 = func_26FF(var1, var2);
            
                if (!(var0 & ~((0x01 << 0xb0) - 0x01))) {
                label_118C:
                    var temp0 = memory[0x40:0x60];
                    memory[temp0:temp0 + 0x20] = 0x70a08231 << 0xe0;
                    memory[temp0 + 0x04:temp0 + 0x04 + 0x20] = address(this);
                    var0 = 0x00;
                    var temp1 = memory[0x00:0x20];
                    memory[0x00:0x20] = code[0x291e:0x293e];
                    var temp2 = memory[0x00:0x20];
                    memory[0x00:0x20] = temp1;
                    var1 = temp2;
                    var2 = 0x70a08231;
                    var var3 = temp0 + 0x24;
                    var temp3 = memory[0x40:0x60];
                    var temp4;
                    temp4, memory[temp3:temp3 + 0x20] = address(var1).staticcall.gas(msg.gas)(memory[temp3:temp3 + var3 - temp3]);
                    var var4 = !temp4;
                
                    if (!var4) {
                        var temp5 = memory[0x40:0x60];
                        var temp6 = returndata.length;
                        memory[0x40:0x60] = temp5 + (temp6 + 0x1f & ~0x1f);
                        var1 = 0x11fc;
                        var2 = temp5 + temp6;
                        var3 = temp5;
                        var1 = func_276E(var2, var3);
                        var0 = var1;
                    
                        if (!msg.data[arg0 + 0x40:arg0 + 0x40 + 0x20]) {
                        label_1234:
                            var1 = 0x1244;
                            var temp7 = arg0;
                            var2 = temp7 + 0x40;
                            var3 = temp7 + 0x20;
                            var1 = func_253E(var2, var3);
                            var1 = var1 & (0x01 << 0xa0) - 0x01;
                            var2 = 0x07a1018e;
                            var temp8 = memory[0x40:0x60];
                            memory[temp8:temp8 + 0x20] = (var2 & 0xffffffff) << 0xe0;
                            var3 = 0x1271;
                            var4 = arg1;
                            var var6 = temp8 + 0x04;
                            var var5 = arg2;
                            var3 = func_2752(var4, var5, var6);
                            var4 = 0x00;
                            var5 = memory[0x40:0x60];
                            var6 = var3 - var5;
                            var var7 = var5;
                            var var8 = 0x00;
                            var var9 = var1;
                            var var10 = !address(var9).code.length;
                        
                            if (var10) { revert(memory[0x00:0x00]); }
                        
                            var temp9;
                            temp9, memory[var5:var5 + var4] = address(var9).call.gas(msg.gas).value(var8)(memory[var7:var7 + var6]);
                            var4 = !temp9;
                        
                            if (!var4) {
                                storage[0x01] = var0;
                                return;
                            } else {
                                var temp10 = returndata.length;
                                memory[0x00:0x00 + temp10] = returndata[0x00:0x00 + temp10];
                                revert(memory[0x00:0x00 + returndata.length]);
                            }
                        } else {
                            var1 = 0x1234;
                            var temp11 = memory[0x00:0x20];
                            memory[0x00:0x20] = code[0x291e:0x293e];
                            var2 = memory[0x00:0x20];
                            memory[0x00:0x20] = temp11;
                            var3 = 0x122a;
                            var temp12 = arg0;
                            var4 = temp12 + 0x40;
                            var5 = temp12 + 0x20;
                            var3 = func_253E(var4, var5);
                            func_122A(arg0, var2, var3);
                            goto label_1234;
                        }
                    } else {
                        var temp13 = returndata.length;
                        memory[0x00:0x00 + temp13] = returndata[0x00:0x00 + temp13];
                        revert(memory[0x00:0x00 + returndata.length]);
                    }
                } else {
                    var0 = block.timestamp;
                    var1 = 0x111b;
                    var2 = 0x01;
                    var3 = block.number;
                    var1 = func_23D2(var2, var3);
                    var temp14 = memory[0x40:0x60] + 0x20;
                    memory[temp14:temp14 + 0x20] = var0;
                    memory[temp14 + 0x20:temp14 + 0x20 + 0x20] = block.blockHash(var1);
                    var0 = temp14 + 0x40;
                    var temp15 = memory[0x40:0x60];
                    var temp16 = var0;
                    memory[temp15:temp15 + 0x20] = temp16 - temp15 + ~0x1f;
                    memory[0x40:0x60] = temp16;
                    var0 = keccak256(memory[temp15 + 0x20:temp15 + 0x20 + memory[temp15:temp15 + 0x20]]) & ~((0x01 << 0xb0) - 0x01);
                    var1 = 0x1165;
                    var2 = arg0 + 0x20;
                    var3 = arg0;
                    var1 = func_26FF(var2, var3);
                
                    if (var1 & ~((0x01 << 0xb0) - 0x01) == var0) { goto label_118C; }
                
                    var temp17 = memory[0x40:0x60];
                    memory[temp17:temp17 + 0x20] = 0x461bcd << 0xe5;
                    var0 = 0x01b4;
                    var1 = temp17 + 0x04;
                    var0 = func_23EB(var1);
                
                label_01B4:
                    var temp18 = memory[0x40:0x60];
                    revert(memory[temp18:temp18 + var0 - temp18]);
                }
            } else {
            label_10C6:
                var temp19 = memory[0x40:0x60];
                memory[temp19:temp19 + 0x20] = 0x461bcd << 0xe5;
                memory[temp19 + 0x04:temp19 + 0x04 + 0x20] = 0x20;
                memory[temp19 + 0x24:temp19 + 0x24 + 0x20] = 0x03;
                memory[temp19 + 0x44:temp19 + 0x44 + 0x20] = 0x2b2b2b << 0xe9;
                var0 = temp19 + 0x64;
                goto label_01B4;
            }
        } else if (storage[0x01] == 0x01) { goto label_10F3; }
        else { goto label_10C6; }
    }
    
    function func_0399(var arg0, var arg1, var arg2, var arg3) returns (var r0) {
        var var0 = 0x60;
        var var1 = 0x12b8;
        func_1E87();
    
        if (!arg1) {
        label_12D7:
            var1 = 0x00;
            var var2 = var1;
            var var3 = arg0 & (0x01 << 0xa0) - 0x01;
            var var4 = msg.value;
            var var5 = 0x12f5;
            var var6 = arg2;
            var var7 = arg3;
            var var8 = memory[0x40:0x60];
            var5 = func_27EB(var6, var7, var8);
            var temp0 = memory[0x40:0x60];
            var temp1;
            temp1, memory[temp0:temp0 + 0x00] = address(var3).call.gas(msg.gas).value(var4)(memory[temp0:temp0 + var5 - temp0]);
            var4 = returndata.length;
            var5 = var4;
        
            if (var5 == 0x00) {
                var2 = 0x60;
                var1 = var3;
            
                if (var1) {
                label_13B6:
                    return var2;
                } else {
                label_1342:
                
                    if (memory[var2:var2 + 0x20] >= 0x44) {
                        var temp2 = var2 + 0x04;
                        var2 = temp2;
                        var3 = 0x139d;
                        var5 = var2 + 0x20;
                        var4 = var5 + memory[var2:var2 + 0x20];
                        var3 = func_27FB(var4, var5);
                        var temp3 = memory[0x40:0x60];
                        memory[temp3:temp3 + 0x20] = 0x461bcd << 0xe5;
                        var temp4 = var3;
                        var3 = 0x01b4;
                        var5 = temp3 + 0x04;
                        var4 = temp4;
                        var temp5 = var5;
                        memory[temp5:temp5 + 0x20] = 0x20;
                        var6 = 0x00;
                        var7 = 0x2143;
                        var8 = temp5 + 0x20;
                        var var9 = var4;
                        var7 = func_26C0(var8, var9);
                        var3 = var7;
                        // Error: Could not resolve jump destination!
                    } else {
                        var temp6 = memory[0x40:0x60];
                        memory[temp6:temp6 + 0x20] = 0x461bcd << 0xe5;
                        memory[temp6 + 0x04:temp6 + 0x04 + 0x20] = 0x20;
                        memory[temp6 + 0x24:temp6 + 0x24 + 0x20] = 0x0d;
                        memory[temp6 + 0x44:temp6 + 0x44 + 0x20] = 0x1cda5b195b9d081c995d995c9d << 0x9a;
                        var3 = temp6 + 0x64;
                        var temp7 = memory[0x40:0x60];
                        revert(memory[temp7:temp7 + var3 - temp7]);
                    }
                }
            } else {
                var temp8 = memory[0x40:0x60];
                var4 = temp8;
                memory[0x40:0x60] = var4 + (returndata.length + 0x3f & ~0x1f);
                memory[var4:var4 + 0x20] = returndata.length;
                var temp9 = returndata.length;
                memory[var4 + 0x20:var4 + 0x20 + temp9] = returndata[0x00:0x00 + temp9];
                var2 = var4;
                var1 = var3;
            
                if (var1) { goto label_13B6; }
                else { goto label_1342; }
            }
        } else {
            var1 = 0x12d7;
            var temp10 = memory[0x00:0x20];
            memory[0x00:0x20] = code[0x291e:0x293e];
            var2 = memory[0x00:0x20];
            memory[0x00:0x20] = temp10;
            var3 = arg0;
            var4 = arg1;
            func_1D5D(var2, var3, var4);
            goto label_12D7;
        }
    }
    
    function func_03D4() {
        var var0 = 0x04c5;
        var var1 = msg.sender == 0xa6ae57b1da8238cd149bc718c40578e4620b752c;
    
        if (!var1) {
            func_03F4(var1);
        
        label_04C5:
            return;
        } else if (!var1) {
            var1 = msg.sender == 0xb58555fcba6479fced7de1485eb054943a09af7b;
        
            if (var1) { goto label_0448; }
            else { goto label_0430; }
        } else if (var1) {
        label_0448:
        
            if (var1) {
            label_0466:
            
                if (var1) {
                label_0484:
                
                    if (var1) {
                    label_04A2:
                    
                        if (var1) {
                        label_04C0:
                        
                        label_13CE:
                        
                            if (var1) {
                                // Error: Could not resolve jump destination!
                            } else {
                                var temp0 = memory[0x40:0x60];
                                memory[temp0:temp0 + 0x20] = 0x05709238;
                                var var2 = 0x05709238;
                                memory[0x40:0x60] = temp0 + 0xae124720;
                                memory[temp0 + 0x20:temp0 + 0x20 + 0xae124700] = msg.data[msg.data.length:msg.data.length + 0xae124700];
                                var var3 = temp0;
                                var var4 = 0x00;
                                var var5 = 0x140e;
                                var var6 = var2;
                                var var7 = 0x01;
                                var5 = func_289D(var6, var7);
                            
                            label_140E:
                            
                                if (var4 >= var5) {
                                    // Error: Could not resolve jump destination!
                                } else {
                                    var5 = 0x141f;
                                    var6 = var4;
                                    var7 = block.number;
                                    var5 = func_23D2(var6, var7);
                                    var temp1 = memory[0x40:0x60];
                                    memory[temp1 + 0x20:temp1 + 0x20 + 0x20] = block.blockHash(var5);
                                    var temp2 = temp1 + 0x40;
                                    var temp3 = memory[0x40:0x60];
                                    memory[temp3:temp3 + 0x20] = temp2 - temp3 - 0x20;
                                    memory[0x40:0x60] = temp2;
                                    var5 = keccak256(memory[temp3 + 0x20:temp3 + 0x20 + memory[temp3:temp3 + 0x20]]) >> 0x00;
                                    var6 = var3;
                                    var7 = var4;
                                
                                    if (var7 < memory[var6:var6 + 0x20]) {
                                        memory[var7 * 0x20 + var6 + 0x20:var7 * 0x20 + var6 + 0x20 + 0x20] = var5;
                                        var5 = var4;
                                        var6 = 0x146b;
                                        var7 = var5;
                                        var6 = func_28C6(var7);
                                        var4 = var6;
                                        var5 = 0x140e;
                                        var6 = var2;
                                        var7 = 0x01;
                                        var5 = func_289D(var6, var7);
                                        goto label_140E;
                                    } else {
                                        var var8 = 0x1456;
                                        memory[0x00:0x20] = 0x4e487b71 << 0xe0;
                                        memory[0x04:0x24] = 0x32;
                                        revert(memory[0x00:0x24]);
                                    }
                                }
                            }
                        } else {
                        label_04A8:
                            var1 = msg.sender == 0x41d3ab85aafed2ef9e644cb7d3bbca2fc4d8cac8;
                            goto label_13CE;
                        }
                    } else {
                    label_048A:
                        var1 = msg.sender == 0x52b86a86e4d764e8275391c436127e60340a0e6a;
                    
                        if (var1) { goto label_04C0; }
                        else { goto label_04A8; }
                    }
                } else {
                label_046C:
                    var1 = msg.sender == 0x5b5001c4f80f33ec93b891062ed2e1d0acc05bb6;
                
                    if (var1) { goto label_04A2; }
                    else { goto label_048A; }
                }
            } else {
            label_044E:
                var1 = msg.sender == 0x4f80b2cd1f550f81581c15f690bdd623f3824c86;
            
                if (var1) { goto label_0484; }
                else { goto label_046C; }
            }
        } else {
        label_0430:
            var1 = msg.sender == 0xb7ab1de5b259a880c4bb5451bdbe6f80f3798538;
        
            if (var1) { goto label_0466; }
            else { goto label_044E; }
        }
    }
    
    function func_03F4(var arg0) {
        arg0 = msg.sender == 0x26ce7c1976c5eec83ea6ac22d83cb341b08850af;
    
        if (!arg0) {
            arg0 = msg.sender == 0xb58555fcba6479fced7de1485eb054943a09af7b;
        
            if (arg0) { goto label_0448; }
            else { goto label_0430; }
        } else if (arg0) {
        label_0448:
        
            if (arg0) {
            label_0466:
            
                if (arg0) {
                label_0484:
                
                    if (arg0) {
                    label_04A2:
                    
                        if (arg0) {
                        label_04C0:
                        
                        label_13CE:
                        
                            if (arg0) { return; }
                        
                            var temp0 = memory[0x40:0x60];
                            memory[temp0:temp0 + 0x20] = 0x05709238;
                            var var0 = 0x05709238;
                            memory[0x40:0x60] = temp0 + 0xae124720;
                            memory[temp0 + 0x20:temp0 + 0x20 + 0xae124700] = msg.data[msg.data.length:msg.data.length + 0xae124700];
                            var var1 = temp0;
                            var var2 = 0x00;
                            var var3 = 0x140e;
                            var var4 = var0;
                            var var5 = 0x01;
                            var3 = func_289D(var4, var5);
                        
                        label_140E:
                        
                            if (var2 >= var3) { return; }
                        
                            var3 = 0x141f;
                            var4 = var2;
                            var5 = block.number;
                            var3 = func_23D2(var4, var5);
                            var temp1 = memory[0x40:0x60];
                            memory[temp1 + 0x20:temp1 + 0x20 + 0x20] = block.blockHash(var3);
                            var temp2 = temp1 + 0x40;
                            var temp3 = memory[0x40:0x60];
                            memory[temp3:temp3 + 0x20] = temp2 - temp3 - 0x20;
                            memory[0x40:0x60] = temp2;
                            var3 = keccak256(memory[temp3 + 0x20:temp3 + 0x20 + memory[temp3:temp3 + 0x20]]) >> 0x00;
                            var4 = var1;
                            var5 = var2;
                        
                            if (var5 < memory[var4:var4 + 0x20]) {
                                memory[var5 * 0x20 + var4 + 0x20:var5 * 0x20 + var4 + 0x20 + 0x20] = var3;
                                var3 = var2;
                                var4 = 0x146b;
                                var5 = var3;
                                var4 = func_28C6(var5);
                                var2 = var4;
                                var3 = 0x140e;
                                var4 = var0;
                                var5 = 0x01;
                                var3 = func_289D(var4, var5);
                                goto label_140E;
                            } else {
                                var var6 = 0x1456;
                                memory[0x00:0x20] = 0x4e487b71 << 0xe0;
                                memory[0x04:0x24] = 0x32;
                                revert(memory[0x00:0x24]);
                            }
                        } else {
                        label_04A8:
                            arg0 = msg.sender == 0x41d3ab85aafed2ef9e644cb7d3bbca2fc4d8cac8;
                            goto label_13CE;
                        }
                    } else {
                    label_048A:
                        arg0 = msg.sender == 0x52b86a86e4d764e8275391c436127e60340a0e6a;
                    
                        if (arg0) { goto label_04C0; }
                        else { goto label_04A8; }
                    }
                } else {
                label_046C:
                    arg0 = msg.sender == 0x5b5001c4f80f33ec93b891062ed2e1d0acc05bb6;
                
                    if (arg0) { goto label_04A2; }
                    else { goto label_048A; }
                }
            } else {
            label_044E:
                arg0 = msg.sender == 0x4f80b2cd1f550f81581c15f690bdd623f3824c86;
            
                if (arg0) { goto label_0484; }
                else { goto label_046C; }
            }
        } else {
        label_0430:
            arg0 = msg.sender == 0xb7ab1de5b259a880c4bb5451bdbe6f80f3798538;
        
            if (arg0) { goto label_0466; }
            else { goto label_044E; }
        }
    }
    
    function func_04C7(var arg0) {
        var var3 = 0x00;
        var temp0 = memory[0x40:0x60];
        memory[temp0:temp0 + 0x3b] = msg.data[0x0b:0x46];
        var var0 = memory[temp0 - 0x0c:temp0 - 0x0c + 0x20];
        var var4 = (memory[temp0 + 0x15:temp0 + 0x15 + 0x20] >> 0xe0) << ((memory[temp0 + 0x14:temp0 + 0x14 + 0x20] >> 0xf8) << 0x02);
        var var1 = memory[temp0 + 0x19:temp0 + 0x19 + 0x20];
        var var2 = memory[temp0 + 0x39:temp0 + 0x39 + 0x20];
        var var5 = memory[temp0 + 0x3a:temp0 + 0x3a + 0x20];
        var temp1 = memory[0x00:0x20];
        memory[0x00:0x20] = code[0x291e:0x293e];
        var temp2 = memory[0x00:0x20];
        memory[0x00:0x20] = temp1;
        var var6 = temp2;
        var3 = var6;
    
        if (!arg0) {
            var temp3 = memory[0x40:0x60];
            memory[temp3:temp3 + 0x16] = msg.data[0x46:0x5c];
            var6 = memory[temp3:temp3 + 0x20];
            var var7 = memory[temp3 + 0x14:temp3 + 0x14 + 0x20];
            var var8 = var1;
            var var9 = 0x0586;
            var var10 = var3;
            var var11 = var0;
            var var12 = var4;
            var var13 = !!(var2 & ~((0x01 << 0xf8) - 0x01));
            var var14 = 0x00;
            var var15 = var6;
            var var16 = var7;
            var9 = func_14BC(var10, var11, var12, var13, var14, var15, var16);
        
            if (var9 >= var8) { return; }
        
            var temp4 = memory[0x40:0x60];
            memory[temp4:temp4 + 0x20] = 0x461bcd << 0xe5;
            memory[temp4 + 0x04:temp4 + 0x04 + 0x20] = 0x20;
            memory[temp4 + 0x24:temp4 + 0x24 + 0x20] = 0x02;
            memory[temp4 + 0x44:temp4 + 0x44 + 0x20] = 0x4631 << 0xf0;
            var8 = temp4 + 0x64;
            var temp5 = memory[0x40:0x60];
            revert(memory[temp5:temp5 + var8 - temp5]);
        } else {
            var6 = 0x054b;
            var7 = 0x04c0;
            var8 = var0;
            var9 = var3;
            var10 = var4;
            var11 = var1;
            var12 = !!(var2 & ~((0x01 << 0xf8) - 0x01));
            var13 = 0x00;
            var7 = func_1476(var8, var9, var10, var11, var12, var13);
        
        label_04C0:
        
            if (var7) {
                // Error: Could not resolve jump destination!
            } else {
                var temp6 = memory[0x40:0x60];
                memory[temp6:temp6 + 0x20] = 0x05709238;
                var8 = 0x05709238;
                memory[0x40:0x60] = temp6 + 0xae124720;
                memory[temp6 + 0x20:temp6 + 0x20 + 0xae124700] = msg.data[msg.data.length:msg.data.length + 0xae124700];
                var9 = temp6;
                var10 = 0x00;
                var11 = 0x140e;
                var12 = var8;
                var13 = 0x01;
                var11 = func_289D(var12, var13);
            
            label_140E:
            
                if (var10 >= var11) {
                    // Error: Could not resolve jump destination!
                } else {
                    var11 = 0x141f;
                    var12 = var10;
                    var13 = block.number;
                    var11 = func_23D2(var12, var13);
                    var temp7 = memory[0x40:0x60];
                    memory[temp7 + 0x20:temp7 + 0x20 + 0x20] = block.blockHash(var11);
                    var temp8 = temp7 + 0x40;
                    var temp9 = memory[0x40:0x60];
                    memory[temp9:temp9 + 0x20] = temp8 - temp9 - 0x20;
                    memory[0x40:0x60] = temp8;
                    var11 = keccak256(memory[temp9 + 0x20:temp9 + 0x20 + memory[temp9:temp9 + 0x20]]) >> 0x00;
                    var12 = var9;
                    var13 = var10;
                
                    if (var13 < memory[var12:var12 + 0x20]) {
                        memory[var13 * 0x20 + var12 + 0x20:var13 * 0x20 + var12 + 0x20 + 0x20] = var11;
                        var11 = var10;
                        var12 = 0x146b;
                        var13 = var11;
                        var12 = func_28C6(var13);
                        var10 = var12;
                        var11 = 0x140e;
                        var12 = var8;
                        var13 = 0x01;
                        var11 = func_289D(var12, var13);
                        goto label_140E;
                    } else {
                        var14 = 0x1456;
                        memory[0x00:0x20] = 0x4e487b71 << 0xe0;
                        memory[0x04:0x24] = 0x32;
                        revert(memory[0x00:0x24]);
                    }
                }
            }
        }
    }
    
    function func_05C5(var arg0) {
        var temp0 = memory[0x40:0x60];
        memory[temp0:temp0 + 0x4e] = msg.data[0x0b:0x59];
        var var0 = memory[temp0 - 0x0c:temp0 - 0x0c + 0x20];
        var var1 = memory[temp0 + 0x08:temp0 + 0x08 + 0x20];
        var var2 = memory[temp0 + 0x28:temp0 + 0x28 + 0x20];
        var var3 = (memory[temp0 + 0x49:temp0 + 0x49 + 0x20] >> 0xe0) << ((memory[temp0 + 0x48:temp0 + 0x48 + 0x20] >> 0xf8) << 0x02);
        var var4 = memory[temp0 + 0x4d:temp0 + 0x4d + 0x20];
    
        if (!arg0) {
            var temp1 = memory[0x40:0x60];
            memory[temp1:temp1 + 0x03] = msg.data[0x59:0x5c];
            var var5 = memory[temp1:temp1 + 0x20];
            var var6 = memory[temp1 + 0x01:temp1 + 0x01 + 0x20];
            var var7 = 0x068c;
            var var8 = var3;
            var var9 = 0x0685;
            var var10 = var0;
            var var11 = var1;
            var var12 = var2;
            var var13 = !!(var4 & ~((0x01 << 0xf8) - 0x01));
            var var14 = 0x00;
            var var15 = 0x6015551cd911ff4685072e2793f56c841e3ab661 << 0x61;
            var var16 = var6;
            var9 = func_14BC(var10, var11, var12, var13, var14, var15, var16);
            func_0685(var8, var9);
            return;
        } else {
            var5 = 0x0630;
            var6 = 0x04c0;
            var7 = var1;
            var8 = var0;
            var9 = var2;
            var10 = var3;
            var11 = !(var4 & ~((0x01 << 0xf8) - 0x01));
            var12 = 0x00;
            var6 = func_1476(var7, var8, var9, var10, var11, var12);
        
        label_04C0:
        
            if (var6) {
                // Error: Could not resolve jump destination!
            } else {
                var temp2 = memory[0x40:0x60];
                memory[temp2:temp2 + 0x20] = 0x05709238;
                var7 = 0x05709238;
                memory[0x40:0x60] = temp2 + 0xae124720;
                memory[temp2 + 0x20:temp2 + 0x20 + 0xae124700] = msg.data[msg.data.length:msg.data.length + 0xae124700];
                var8 = temp2;
                var9 = 0x00;
                var10 = 0x140e;
                var11 = var7;
                var12 = 0x01;
                var10 = func_289D(var11, var12);
            
            label_140E:
            
                if (var9 >= var10) {
                    // Error: Could not resolve jump destination!
                } else {
                    var10 = 0x141f;
                    var11 = var9;
                    var12 = block.number;
                    var10 = func_23D2(var11, var12);
                    var temp3 = memory[0x40:0x60];
                    memory[temp3 + 0x20:temp3 + 0x20 + 0x20] = block.blockHash(var10);
                    var temp4 = temp3 + 0x40;
                    var temp5 = memory[0x40:0x60];
                    memory[temp5:temp5 + 0x20] = temp4 - temp5 - 0x20;
                    memory[0x40:0x60] = temp4;
                    var10 = keccak256(memory[temp5 + 0x20:temp5 + 0x20 + memory[temp5:temp5 + 0x20]]) >> 0x00;
                    var11 = var8;
                    var12 = var9;
                
                    if (var12 < memory[var11:var11 + 0x20]) {
                        memory[var12 * 0x20 + var11 + 0x20:var12 * 0x20 + var11 + 0x20 + 0x20] = var10;
                        var10 = var9;
                        var11 = 0x146b;
                        var12 = var10;
                        var11 = func_28C6(var12);
                        var9 = var11;
                        var10 = 0x140e;
                        var11 = var7;
                        var12 = 0x01;
                        var10 = func_289D(var11, var12);
                        goto label_140E;
                    } else {
                        var13 = 0x1456;
                        memory[0x00:0x20] = 0x4e487b71 << 0xe0;
                        memory[0x04:0x24] = 0x32;
                        revert(memory[0x00:0x24]);
                    }
                }
            }
        }
    }
    
    function func_0685(var arg0, var arg1) {
        arg0 = arg1 >= arg0;
    
        if (arg0) { return; }
    
        var temp0 = memory[0x40:0x60];
        memory[temp0:temp0 + 0x20] = 0x05709238;
        arg1 = 0x05709238;
        memory[0x40:0x60] = temp0 + 0xae124720;
        memory[temp0 + 0x20:temp0 + 0x20 + 0xae124700] = msg.data[msg.data.length:msg.data.length + 0xae124700];
        var var0 = temp0;
        var var1 = 0x00;
        var var2 = 0x140e;
        var var3 = arg1;
        var var4 = 0x01;
        var2 = func_289D(var3, var4);
    
    label_140E:
    
        if (var1 >= var2) { return; }
    
        var2 = 0x141f;
        var3 = var1;
        var4 = block.number;
        var2 = func_23D2(var3, var4);
        var temp1 = memory[0x40:0x60];
        memory[temp1 + 0x20:temp1 + 0x20 + 0x20] = block.blockHash(var2);
        var temp2 = temp1 + 0x40;
        var temp3 = memory[0x40:0x60];
        memory[temp3:temp3 + 0x20] = temp2 - temp3 - 0x20;
        memory[0x40:0x60] = temp2;
        var2 = keccak256(memory[temp3 + 0x20:temp3 + 0x20 + memory[temp3:temp3 + 0x20]]) >> 0x00;
        var3 = var0;
        var4 = var1;
    
        if (var4 < memory[var3:var3 + 0x20]) {
            memory[var4 * 0x20 + var3 + 0x20:var4 * 0x20 + var3 + 0x20 + 0x20] = var2;
            var2 = var1;
            var3 = 0x146b;
            var4 = var2;
            var3 = func_28C6(var4);
            var1 = var3;
            var2 = 0x140e;
            var3 = arg1;
            var4 = 0x01;
            var2 = func_289D(var3, var4);
            goto label_140E;
        } else {
            var var5 = 0x1456;
            memory[0x00:0x20] = 0x4e487b71 << 0xe0;
            memory[0x04:0x24] = 0x32;
            revert(memory[0x00:0x24]);
        }
    }
    
    function func_0E5E() {
        var var0 = 0x0e66;
        func_1E87();
        storage[0x00] = 0x01;
        storage[0x01] = 0x01;
    }
    
    function func_122A(var arg0, var arg1, var arg2) {
        var var0 = msg.data[arg0 + 0x40:arg0 + 0x40 + 0x20];
        func_1D5D(arg1, arg2, var0);
        // Error: Could not resolve method call return address!
    }
    
    function func_1476(var arg0, var arg1, var arg2, var arg3, var arg4, var arg5) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x1483;
        var var2 = arg1;
        var var3 = arg0;
        var var4 = arg2;
        var1 = func_20FD(var2, var3, var4);
    
        if (!var1) { return 0x00; }
    
        if (!arg4) {
            var1 = 0x149b;
            var2 = 0x00;
            var3 = arg3;
            var4 = arg0;
            var var5 = arg5;
            var1 = func_214A(var2, var3, var4, var5);
        
        label_149B:
            return var1;
        } else {
            var1 = 0x149b;
            var2 = arg3;
            var3 = 0x00;
            var4 = arg0;
            var5 = arg5;
            var1 = func_214A(var2, var3, var4, var5);
            goto label_149B;
        }
    }
    
    function func_14BC(var arg0, var arg1, var arg2, var arg3, var arg4, var arg5, var arg6) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x60;
        var var2 = 0x00;
        var var3 = var2;
        var var4 = 0x14cc;
        var var5 = arg0;
        var4, var5 = func_21B3(var5);
        var3 = var5;
        var2 = var4;
    
        if (!var3) {
            var temp0 = memory[0x40:0x60];
            memory[temp0 + 0x20:temp0 + 0x20 + 0x20] = arg6 & ~((0x01 << 0xf0) - 0x01);
            var temp1 = ~((0x01 << 0x60) - 0x01);
            memory[temp0 + 0x22:temp0 + 0x22 + 0x20] = arg5 & temp1;
            memory[temp0 + 0x36:temp0 + 0x36 + 0x20] = (arg0 << 0x60) & temp1;
            var temp2 = temp0 + 0x4a;
            var temp3 = memory[0x40:0x60];
            memory[temp3:temp3 + 0x20] = temp2 - temp3 - 0x20;
            memory[0x40:0x60] = temp2;
            var1 = temp3;
            var4 = 0x00;
            var5 = var4;
            var var6 = 0x1576;
            var var7 = arg1;
            var var8 = arg4;
            var var9 = arg3;
            var var10 = arg2;
            var var11 = var1;
            var6, var7 = func_21F2(var7, var8, var9, var10, var11);
        
        label_1576:
            var5 = var7;
            var4 = var6;
        
            if (arg3) {
                var7 = var5;
                var6 = 0x1590;
                var6 = func_28DF(var7);
            
            label_1590:
                return var6;
            } else {
                var6 = var4;
                var temp4 = var6;
                var6 = 0x1590;
                var7 = temp4;
                var6 = func_28DF(var7);
                goto label_1590;
            }
        } else {
            var temp5 = memory[0x40:0x60];
            memory[temp5 + 0x20:temp5 + 0x20 + 0x20] = arg6 & ~((0x01 << 0xf0) - 0x01);
            memory[temp5 + 0x22:temp5 + 0x22 + 0x20] = arg5 & ~((0x01 << 0x60) - 0x01);
            memory[temp5 + 0x36:temp5 + 0x36 + 0x20] = var2 & ~((0x01 << 0xf8) - 0x01);
            var temp6 = temp5 + 0x37;
            var temp7 = memory[0x40:0x60];
            memory[temp7:temp7 + 0x20] = temp6 - temp7 - 0x20;
            memory[0x40:0x60] = temp6;
            var1 = temp7;
            var4 = 0x00;
            var5 = var4;
            var6 = 0x1576;
            var7 = arg1;
            var8 = arg4;
            var9 = arg3;
            var10 = arg2;
            var11 = var1;
            var6, var7 = func_21F2(var7, var8, var9, var10, var11);
            goto label_1576;
        }
    }
    
    function func_1780(var arg0) {
        if (arg0) {
        label_13CE:
        
            if (arg0) { return; }
        
            var temp0 = memory[0x40:0x60];
            memory[temp0:temp0 + 0x20] = 0x05709238;
            var var0 = 0x05709238;
            memory[0x40:0x60] = temp0 + 0xae124720;
            memory[temp0 + 0x20:temp0 + 0x20 + 0xae124700] = msg.data[msg.data.length:msg.data.length + 0xae124700];
            var var1 = temp0;
            var var2 = 0x00;
            var var3 = 0x140e;
            var var4 = var0;
            var var5 = 0x01;
            var3 = func_289D(var4, var5);
        
        label_140E:
        
            if (var2 >= var3) { return; }
        
            var3 = 0x141f;
            var4 = var2;
            var5 = block.number;
            var3 = func_23D2(var4, var5);
            var temp1 = memory[0x40:0x60];
            memory[temp1 + 0x20:temp1 + 0x20 + 0x20] = block.blockHash(var3);
            var temp2 = temp1 + 0x40;
            var temp3 = memory[0x40:0x60];
            memory[temp3:temp3 + 0x20] = temp2 - temp3 - 0x20;
            memory[0x40:0x60] = temp2;
            var3 = keccak256(memory[temp3 + 0x20:temp3 + 0x20 + memory[temp3:temp3 + 0x20]]) >> 0x00;
            var4 = var1;
            var5 = var2;
        
            if (var5 < memory[var4:var4 + 0x20]) {
                memory[var5 * 0x20 + var4 + 0x20:var5 * 0x20 + var4 + 0x20 + 0x20] = var3;
                var3 = var2;
                var4 = 0x146b;
                var5 = var3;
                var4 = func_28C6(var5);
                var2 = var4;
                var3 = 0x140e;
                var4 = var0;
                var5 = 0x01;
                var3 = func_289D(var4, var5);
                goto label_140E;
            } else {
                var var6 = 0x1456;
                memory[0x00:0x20] = 0x4e487b71 << 0xe0;
                memory[0x04:0x24] = 0x32;
                revert(memory[0x00:0x24]);
            }
        } else {
            arg0 = msg.sender == 0x681535922425a4264b3670d9430afc6dc4de103e;
            goto label_13CE;
        }
    }
    
    function func_1909(var arg0, var arg1, var arg2, var arg3, var arg4) {
        var var0 = 0x1911;
        func_22CA();
        var0 = arg0 i> 0x00;
    
        if (var0) {
            if (var0) {
            label_1951:
                var0 = arg3;
            
                if (var0 > 0x16) {
                    var temp0 = memory[0x40:0x60];
                    memory[0x40:0x60] = temp0 + 0xa0;
                    memory[temp0:temp0 + 0x20] = 0x00;
                    memory[temp0 + 0x20:temp0 + 0x20 + 0x20] = 0x00;
                    memory[temp0 + 0x40:temp0 + 0x40 + 0x20] = 0x00;
                    memory[temp0 + 0x60:temp0 + 0x60 + 0x20] = 0x00;
                    var var1 = temp0;
                    memory[var1 + 0x80:var1 + 0x80 + 0x20] = 0x00;
                    var var2 = var0 > 0x2a;
                    var var3 = 0x00;
                    var var4 = var3;
                    var var5 = var4;
                    var var6 = var5;
                    var var7 = var6;
                
                    if (var2) {
                        var temp1 = memory[0x40:0x60];
                        var var8 = temp1;
                        memory[var8:var8 + 0x75] = msg.data[0x84:0xf9];
                        var temp2 = var1;
                        memory[temp2:temp2 + 0x20] = memory[var8 - 0x1f:var8 - 0x1f + 0x20];
                        memory[temp2 + 0x20:temp2 + 0x20 + 0x20] = memory[var8 - 0x0b:var8 - 0x0b + 0x20] & (0x01 << 0xa0) - 0x01;
                        memory[temp2 + 0x40:temp2 + 0x40 + 0x20] = memory[var8 + 0x09:var8 + 0x09 + 0x20] & (0x01 << 0xa0) - 0x01;
                        memory[temp2 + 0x60:temp2 + 0x60 + 0x20] = memory[var8 + 0x29:var8 + 0x29 + 0x20];
                        memory[temp2 + 0x80:temp2 + 0x80 + 0x20] = memory[var8 + 0x49:var8 + 0x49 + 0x20];
                        var6 = memory[var8 + 0x2d:var8 + 0x2d + 0x20] & 0xffff;
                        var5 = memory[var8 + 0x41:var8 + 0x41 + 0x20];
                        var var9 = var0;
                    
                        if (var9 == 0x62) {
                            var7 = memory[var8 + 0x61:var8 + 0x61 + 0x20];
                        
                            if (var4 & (0x01 << 0xa0) - 0x01) {
                            label_1A9C:
                                var8 = 0x00;
                                var9 = var8;
                            
                                if (var4 & (0x01 << 0xa0) - 0x01 < var5 & (0x01 << 0xa0) - 0x01) {
                                label_1ABF:
                                    var9 = var5;
                                    var8 = var4;
                                
                                    if (arg4) {
                                    label_1AE8:
                                        var var10 = 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9 << 0x60;
                                        var temp3 = memory[0x40:0x60];
                                        var temp4 = (0x01 << 0xa0) - 0x01;
                                        memory[temp3 + 0x20:temp3 + 0x20 + 0x20] = var8 & temp4;
                                        memory[temp3 + 0x40:temp3 + 0x40 + 0x20] = var9 & temp4;
                                        memory[temp3 + 0x60:temp3 + 0x60 + 0x20] = var6 & 0xffffff;
                                        var temp5 = temp3 + 0x80;
                                        var temp6 = memory[0x40:0x60];
                                        memory[temp6:temp6 + 0x20] = temp5 - temp6 - 0x20;
                                        memory[0x40:0x60] = temp5;
                                        var var11 = keccak256(memory[temp6 + 0x20:temp6 + 0x20 + memory[temp6:temp6 + 0x20]]);
                                    
                                        if (arg4) {
                                        label_1B6D:
                                            var temp7 = memory[0x40:0x60];
                                            memory[temp7 + 0x20:temp7 + 0x20 + 0x20] = ~((0x01 << 0xf8) - 0x01);
                                            memory[temp7 + 0x21:temp7 + 0x21 + 0x20] = var10 & ~((0x01 << 0x60) - 0x01);
                                            memory[temp7 + 0x35:temp7 + 0x35 + 0x20] = var11;
                                            memory[temp7 + 0x55:temp7 + 0x55 + 0x20] = 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2;
                                            var temp8 = temp7 + 0x75;
                                            var temp9 = memory[0x40:0x60];
                                            memory[temp9:temp9 + 0x20] = temp8 - temp9 - 0x20;
                                            memory[0x40:0x60] = temp8;
                                            var3 = keccak256(memory[temp9 + 0x20:temp9 + 0x20 + memory[temp9:temp9 + 0x20]]) >> 0x00;
                                            var5 = 0x00;
                                        
                                            if (arg0 i> var5) {
                                            label_1BF0:
                                                var5 = arg0;
                                            
                                                if (var3 & (0x01 << 0xa0) - 0x01 == msg.sender) {
                                                label_1C31:
                                                
                                                    if (!var2) {
                                                        var6 = 0x1d1f;
                                                        var7 = var4;
                                                        var8 = var3;
                                                        var9 = var5;
                                                        var6 = func_20FD(var7, var8, var9);
                                                    
                                                        if (var6) {
                                                        label_1D50:
                                                            return;
                                                        } else {
                                                            var temp10 = memory[0x40:0x60];
                                                            memory[temp10:temp10 + 0x20] = 0x461bcd << 0xe5;
                                                            memory[temp10 + 0x04:temp10 + 0x04 + 0x20] = 0x20;
                                                            memory[temp10 + 0x24:temp10 + 0x24 + 0x20] = 0x02;
                                                            memory[temp10 + 0x44:temp10 + 0x44 + 0x20] = 0x10cd << 0xf2;
                                                            var6 = temp10 + 0x64;
                                                        
                                                        label_01B4:
                                                            var temp11 = memory[0x40:0x60];
                                                            revert(memory[temp11:temp11 + var6 - temp11]);
                                                        }
                                                    } else if (!memory[var1:var1 + 0x20]) {
                                                        var6 = var5;
                                                        var7 = 0x1ce1;
                                                        var temp12 = var1;
                                                        var8 = memory[temp12 + 0x40:temp12 + 0x40 + 0x20];
                                                        var9 = memory[temp12 + 0x20:temp12 + 0x20 + 0x20];
                                                        var10 = memory[temp12 + 0x60:temp12 + 0x60 + 0x20];
                                                        var temp13 = var4;
                                                        var11 = memory[temp12 + 0x40:temp12 + 0x40 + 0x20] & (0x01 << 0xa0) - 0x01 < temp13 & (0x01 << 0xa0) - 0x01;
                                                        var var12 = var3;
                                                        var var13 = temp13 << 0x60;
                                                        var var14 = memory[temp12 + 0x80:temp12 + 0x80 + 0x20];
                                                        var7 = func_14BC(var8, var9, var10, var11, var12, var13, var14);
                                                    
                                                        if (var7 >= var6) {
                                                        label_1CA1:
                                                            goto label_1D50;
                                                        } else {
                                                            var temp14 = memory[0x40:0x60];
                                                            memory[temp14:temp14 + 0x20] = 0x461bcd << 0xe5;
                                                            memory[temp14 + 0x04:temp14 + 0x04 + 0x20] = 0x20;
                                                            memory[temp14 + 0x24:temp14 + 0x24 + 0x20] = 0x02;
                                                            memory[temp14 + 0x44:temp14 + 0x44 + 0x20] = 0x4333 << 0xf0;
                                                            var6 = temp14 + 0x64;
                                                            goto label_01B4;
                                                        }
                                                    } else {
                                                        var6 = 0x1c70;
                                                        var temp15 = var1;
                                                        var7 = memory[temp15 + 0x20:temp15 + 0x20 + 0x20];
                                                        var8 = memory[temp15 + 0x40:temp15 + 0x40 + 0x20];
                                                        var9 = memory[temp15 + 0x60:temp15 + 0x60 + 0x20];
                                                        var10 = var5;
                                                        var11 = memory[temp15 + 0x40:temp15 + 0x40 + 0x20] & (0x01 << 0xa0) - 0x01 > var4 & (0x01 << 0xa0) - 0x01;
                                                        var12 = var3;
                                                        var6 = func_1476(var7, var8, var9, var10, var11, var12);
                                                    
                                                    label_1C70:
                                                    
                                                        if (var6) { goto label_1CA1; }
                                                    
                                                        var temp16 = memory[0x40:0x60];
                                                        memory[temp16:temp16 + 0x20] = 0x461bcd << 0xe5;
                                                        memory[temp16 + 0x04:temp16 + 0x04 + 0x20] = 0x20;
                                                        memory[temp16 + 0x24:temp16 + 0x24 + 0x20] = 0x02;
                                                        memory[temp16 + 0x44:temp16 + 0x44 + 0x20] = 0x2199 << 0xf1;
                                                        var6 = temp16 + 0x64;
                                                        goto label_01B4;
                                                    }
                                                } else {
                                                label_1C05:
                                                    var temp17 = memory[0x40:0x60];
                                                    memory[temp17:temp17 + 0x20] = 0x461bcd << 0xe5;
                                                    memory[temp17 + 0x04:temp17 + 0x04 + 0x20] = 0x20;
                                                    memory[temp17 + 0x24:temp17 + 0x24 + 0x20] = 0x02;
                                                    memory[temp17 + 0x44:temp17 + 0x44 + 0x20] = 0x3a29 << 0xf0;
                                                    var6 = temp17 + 0x64;
                                                    goto label_01B4;
                                                }
                                            } else {
                                            label_1BEB:
                                                var6 = arg1;
                                                var5 = var6;
                                            
                                                if (var3 & (0x01 << 0xa0) - 0x01 == msg.sender) { goto label_1C31; }
                                                else { goto label_1C05; }
                                            }
                                        } else {
                                        label_1B48:
                                            var12 = 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54;
                                            var temp18 = memory[0x40:0x60];
                                            memory[temp18 + 0x20:temp18 + 0x20 + 0x20] = ~((0x01 << 0xf8) - 0x01);
                                            memory[temp18 + 0x21:temp18 + 0x21 + 0x20] = var10 & ~((0x01 << 0x60) - 0x01);
                                            memory[temp18 + 0x35:temp18 + 0x35 + 0x20] = var11;
                                            memory[temp18 + 0x55:temp18 + 0x55 + 0x20] = var12;
                                            var temp19 = temp18 + 0x75;
                                            var temp20 = memory[0x40:0x60];
                                            memory[temp20:temp20 + 0x20] = temp19 - temp20 - 0x20;
                                            memory[0x40:0x60] = temp19;
                                            var3 = keccak256(memory[temp20 + 0x20:temp20 + 0x20 + memory[temp20:temp20 + 0x20]]) >> 0x00;
                                            var5 = 0x00;
                                        
                                            if (arg0 i> var5) { goto label_1BF0; }
                                            else { goto label_1BEB; }
                                        }
                                    } else {
                                    label_1ACC:
                                        var10 = 0x07e610c722b66148d8c6b92967c99cd1ba8c7e61 << 0x62;
                                        var temp21 = memory[0x40:0x60];
                                        var temp22 = (0x01 << 0xa0) - 0x01;
                                        memory[temp21 + 0x20:temp21 + 0x20 + 0x20] = var8 & temp22;
                                        memory[temp21 + 0x40:temp21 + 0x40 + 0x20] = var9 & temp22;
                                        memory[temp21 + 0x60:temp21 + 0x60 + 0x20] = var6 & 0xffffff;
                                        var temp23 = temp21 + 0x80;
                                        var temp24 = memory[0x40:0x60];
                                        memory[temp24:temp24 + 0x20] = temp23 - temp24 - 0x20;
                                        memory[0x40:0x60] = temp23;
                                        var11 = keccak256(memory[temp24 + 0x20:temp24 + 0x20 + memory[temp24:temp24 + 0x20]]);
                                    
                                        if (arg4) { goto label_1B6D; }
                                        else { goto label_1B48; }
                                    }
                                } else {
                                label_1AB9:
                                    var10 = var5;
                                    var11 = var4;
                                    var9 = var11;
                                    var8 = var10;
                                
                                    if (arg4) { goto label_1AE8; }
                                    else { goto label_1ACC; }
                                }
                            } else {
                            label_1A8B:
                                var temp25 = memory[0x00:0x20];
                                memory[0x00:0x20] = code[0x291e:0x293e];
                                var temp26 = memory[0x00:0x20];
                                memory[0x00:0x20] = temp25;
                                var4 = temp26;
                                var8 = 0x00;
                                var9 = var8;
                            
                                if (var4 & (0x01 << 0xa0) - 0x01 < var5 & (0x01 << 0xa0) - 0x01) { goto label_1ABF; }
                                else { goto label_1AB9; }
                            }
                        } else {
                            var4 = memory[var8 + 0x55:var8 + 0x55 + 0x20];
                        
                            if (var4 & (0x01 << 0xa0) - 0x01) { goto label_1A9C; }
                            else { goto label_1A8B; }
                        }
                    } else {
                        var temp27 = memory[0x40:0x60];
                        var8 = temp27;
                        memory[var8:var8 + 0x2a] = msg.data[0x84:0xae];
                        var6 = memory[var8 - 0x1e:var8 - 0x1e + 0x20] & 0xffff;
                        var5 = memory[var8 - 0x0a:var8 - 0x0a + 0x20];
                        var9 = var0;
                    
                        if (var9 == 0x17) {
                            var7 = memory[var8 + 0x16:var8 + 0x16 + 0x20];
                        
                        label_1A7C:
                        
                            if (var4 & (0x01 << 0xa0) - 0x01) { goto label_1A9C; }
                            else { goto label_1A8B; }
                        } else {
                            var4 = memory[var8 + 0x0a:var8 + 0x0a + 0x20];
                            goto label_1A7C;
                        }
                    }
                } else {
                    var temp28 = memory[0x40:0x60];
                    memory[temp28:temp28 + 0x20] = 0x461bcd << 0xe5;
                    memory[temp28 + 0x04:temp28 + 0x04 + 0x20] = 0x20;
                    memory[temp28 + 0x24:temp28 + 0x24 + 0x20] = 0x02;
                    memory[temp28 + 0x44:temp28 + 0x44 + 0x20] = 0x4339 << 0xf0;
                    var1 = temp28 + 0x64;
                    goto label_01B4;
                }
            } else {
            label_1925:
                var temp29 = memory[0x40:0x60];
                memory[temp29:temp29 + 0x20] = 0x461bcd << 0xe5;
                memory[temp29 + 0x04:temp29 + 0x04 + 0x20] = 0x20;
                memory[temp29 + 0x24:temp29 + 0x24 + 0x20] = 0x02;
                memory[temp29 + 0x44:temp29 + 0x44 + 0x20] = 0x0433 << 0xf4;
                var0 = temp29 + 0x64;
                goto label_01B4;
            }
        } else if (arg1 i> 0x00) { goto label_1951; }
        else { goto label_1925; }
    }
    
    function func_1D5D(var arg0, var arg1, var arg2) {
        var temp0 = memory[0x40:0x60];
        var temp1 = (0x01 << 0xa0) - 0x01;
        memory[temp0 + 0x24:temp0 + 0x24 + 0x20] = temp1 & arg1;
        memory[temp0 + 0x44:temp0 + 0x44 + 0x20] = arg2;
        var temp2 = memory[0x40:0x60];
        memory[temp2:temp2 + 0x20] = temp0 - temp2 + 0x44;
        memory[0x40:0x60] = temp0 + 0x64;
        var temp3 = temp2 + 0x20;
        memory[temp3:temp3 + 0x20] = (memory[temp3:temp3 + 0x20] & (0x01 << 0xe0) - 0x01) | (0xa9059cbb << 0xe0);
        var var0 = 0x00;
        var var1 = var0;
        var var2 = arg0 & temp1;
        var var3 = 0x1db9;
        var var4 = temp2;
        var var5 = memory[0x40:0x60];
        var3 = func_279D(var4, var5);
        var temp4 = memory[0x40:0x60];
        var temp5;
        temp5, memory[temp4:temp4 + 0x00] = address(var2).call.gas(msg.gas)(memory[temp4:temp4 + var3 - temp4]);
        var3 = returndata.length;
        var4 = var3;
    
        if (var4 == 0x00) {
            var1 = 0x60;
            var temp6 = var2;
            var0 = temp6;
            var2 = var0;
        
            if (!var2) {
            label_1E25:
            
                if (var2) { return; }
            
                var temp7 = memory[0x40:0x60];
                memory[temp7:temp7 + 0x20] = 0x461bcd << 0xe5;
                memory[temp7 + 0x04:temp7 + 0x04 + 0x20] = 0x20;
                memory[temp7 + 0x24:temp7 + 0x24 + 0x20] = 0x2d;
                memory[temp7 + 0x44:temp7 + 0x44 + 0x20] = 0x5472616e7366657248656c7065723a3a736166655472616e736665723a207472;
                memory[temp7 + 0x64:temp7 + 0x64 + 0x20] = 0x185b9cd9995c8819985a5b1959 << 0x9a;
                var2 = temp7 + 0x84;
                var temp8 = memory[0x40:0x60];
                revert(memory[temp8:temp8 + var2 - temp8]);
            } else {
            label_1E08:
                var2 = !memory[var1:var1 + 0x20];
            
                if (var2) { goto label_1E25; }
            
                var temp9 = var1;
                var2 = 0x1e25;
                var3 = temp9 + 0x20 + memory[temp9:temp9 + 0x20];
                var4 = temp9 + 0x20;
                var2 = func_28FB(var3, var4);
                goto label_1E25;
            }
        } else {
            var temp10 = memory[0x40:0x60];
            var3 = temp10;
            memory[0x40:0x60] = var3 + (returndata.length + 0x3f & ~0x1f);
            memory[var3:var3 + 0x20] = returndata.length;
            var temp11 = returndata.length;
            memory[var3 + 0x20:var3 + 0x20 + temp11] = returndata[0x00:0x00 + temp11];
            var1 = var3;
            var temp12 = var2;
            var0 = temp12;
            var2 = var0;
        
            if (!var2) { goto label_1E25; }
            else { goto label_1E08; }
        }
    }
    
    function func_1E87() {
        var var0 = 0x04c5;
        var var1 = msg.sender == 0xa6ae57b1da8238cd149bc718c40578e4620b752c;
    
        if (var1) {
            func_1EBF(var1);
        
        label_04C5:
            return;
        } else {
            var1 = msg.sender == 0x26ce7c1976c5eec83ea6ac22d83cb341b08850af;
        
            if (!var1) {
                var1 = msg.sender == 0xb58555fcba6479fced7de1485eb054943a09af7b;
            
                if (var1) { goto label_1EFB; }
                else { goto label_1EE3; }
            } else if (var1) {
            label_1EFB:
            
                if (var1) {
                label_1F19:
                
                    if (var1) {
                    label_1F37:
                    
                        if (var1) {
                        label_1F55:
                        
                            if (var1) {
                            label_1F73:
                            
                                if (var1) {
                                label_1F91:
                                
                                    if (var1) {
                                        func_1780(var1);
                                        // Error: Could not resolve method call return address!
                                    } else {
                                    label_1F97:
                                        var1 = msg.sender == 0x0811fd1808e14f0b93f0514313965a5f142c5539;
                                    
                                        if (var1) {
                                        label_04C0:
                                        
                                        label_13CE:
                                        
                                            if (var1) {
                                                // Error: Could not resolve jump destination!
                                            } else {
                                                var temp0 = memory[0x40:0x60];
                                                memory[temp0:temp0 + 0x20] = 0x05709238;
                                                var var2 = 0x05709238;
                                                memory[0x40:0x60] = temp0 + 0xae124720;
                                                memory[temp0 + 0x20:temp0 + 0x20 + 0xae124700] = msg.data[msg.data.length:msg.data.length + 0xae124700];
                                                var var3 = temp0;
                                                var var4 = 0x00;
                                                var var5 = 0x140e;
                                                var var6 = var2;
                                                var var7 = 0x01;
                                                var5 = func_289D(var6, var7);
                                            
                                            label_140E:
                                            
                                                if (var4 >= var5) {
                                                    // Error: Could not resolve jump destination!
                                                } else {
                                                    var5 = 0x141f;
                                                    var6 = var4;
                                                    var7 = block.number;
                                                    var5 = func_23D2(var6, var7);
                                                    var temp1 = memory[0x40:0x60];
                                                    memory[temp1 + 0x20:temp1 + 0x20 + 0x20] = block.blockHash(var5);
                                                    var temp2 = temp1 + 0x40;
                                                    var temp3 = memory[0x40:0x60];
                                                    memory[temp3:temp3 + 0x20] = temp2 - temp3 - 0x20;
                                                    memory[0x40:0x60] = temp2;
                                                    var5 = keccak256(memory[temp3 + 0x20:temp3 + 0x20 + memory[temp3:temp3 + 0x20]]) >> 0x00;
                                                    var6 = var3;
                                                    var7 = var4;
                                                
                                                    if (var7 < memory[var6:var6 + 0x20]) {
                                                        memory[var7 * 0x20 + var6 + 0x20:var7 * 0x20 + var6 + 0x20 + 0x20] = var5;
                                                        var5 = var4;
                                                        var6 = 0x146b;
                                                        var7 = var5;
                                                        var6 = func_28C6(var7);
                                                        var4 = var6;
                                                        var5 = 0x140e;
                                                        var6 = var2;
                                                        var7 = 0x01;
                                                        var5 = func_289D(var6, var7);
                                                        goto label_140E;
                                                    } else {
                                                        var var8 = 0x1456;
                                                        memory[0x00:0x20] = 0x4e487b71 << 0xe0;
                                                        memory[0x04:0x24] = 0x32;
                                                        revert(memory[0x00:0x24]);
                                                    }
                                                }
                                            }
                                        } else {
                                            var1 = msg.sender == 0x681535922425a4264b3670d9430afc6dc4de103e;
                                            goto label_13CE;
                                        }
                                    }
                                } else {
                                label_1F79:
                                    var1 = msg.sender == 0xfac983fce7ef3cee8ffb2ceb967e1b2362aada00;
                                
                                    if (!var1) { goto label_1F97; }
                                
                                    func_1780(var1);
                                    // Error: Could not resolve method call return address!
                                }
                            } else {
                            label_1F5B:
                                var1 = msg.sender == 0x41d3ab85aafed2ef9e644cb7d3bbca2fc4d8cac8;
                            
                                if (var1) { goto label_1F91; }
                                else { goto label_1F79; }
                            }
                        } else {
                        label_1F3D:
                            var1 = msg.sender == 0x52b86a86e4d764e8275391c436127e60340a0e6a;
                        
                            if (var1) { goto label_1F73; }
                            else { goto label_1F5B; }
                        }
                    } else {
                    label_1F1F:
                        var1 = msg.sender == 0x5b5001c4f80f33ec93b891062ed2e1d0acc05bb6;
                    
                        if (var1) { goto label_1F55; }
                        else { goto label_1F3D; }
                    }
                } else {
                label_1F01:
                    var1 = msg.sender == 0x4f80b2cd1f550f81581c15f690bdd623f3824c86;
                
                    if (var1) { goto label_1F37; }
                    else { goto label_1F1F; }
                }
            } else {
            label_1EE3:
                var1 = msg.sender == 0xb7ab1de5b259a880c4bb5451bdbe6f80f3798538;
            
                if (var1) { goto label_1F19; }
                else { goto label_1F01; }
            }
        }
    }
    
    function func_1EBF(var arg0) {
        if (!arg0) {
            arg0 = msg.sender == 0xb58555fcba6479fced7de1485eb054943a09af7b;
        
            if (arg0) { goto label_1EFB; }
            else { goto label_1EE3; }
        } else if (arg0) {
        label_1EFB:
        
            if (arg0) {
            label_1F19:
            
                if (arg0) {
                label_1F37:
                
                    if (arg0) {
                    label_1F55:
                    
                        if (arg0) {
                        label_1F73:
                        
                            if (arg0) {
                            label_1F91:
                            
                                if (arg0) {
                                    func_1780(arg0);
                                    // Error: Could not resolve method call return address!
                                } else {
                                label_1F97:
                                    arg0 = msg.sender == 0x0811fd1808e14f0b93f0514313965a5f142c5539;
                                
                                    if (arg0) {
                                    label_04C0:
                                    
                                    label_13CE:
                                    
                                        if (arg0) { return; }
                                    
                                        var temp0 = memory[0x40:0x60];
                                        memory[temp0:temp0 + 0x20] = 0x05709238;
                                        var var0 = 0x05709238;
                                        memory[0x40:0x60] = temp0 + 0xae124720;
                                        memory[temp0 + 0x20:temp0 + 0x20 + 0xae124700] = msg.data[msg.data.length:msg.data.length + 0xae124700];
                                        var var1 = temp0;
                                        var var2 = 0x00;
                                        var var3 = 0x140e;
                                        var var4 = var0;
                                        var var5 = 0x01;
                                        var3 = func_289D(var4, var5);
                                    
                                    label_140E:
                                    
                                        if (var2 >= var3) { return; }
                                    
                                        var3 = 0x141f;
                                        var4 = var2;
                                        var5 = block.number;
                                        var3 = func_23D2(var4, var5);
                                        var temp1 = memory[0x40:0x60];
                                        memory[temp1 + 0x20:temp1 + 0x20 + 0x20] = block.blockHash(var3);
                                        var temp2 = temp1 + 0x40;
                                        var temp3 = memory[0x40:0x60];
                                        memory[temp3:temp3 + 0x20] = temp2 - temp3 - 0x20;
                                        memory[0x40:0x60] = temp2;
                                        var3 = keccak256(memory[temp3 + 0x20:temp3 + 0x20 + memory[temp3:temp3 + 0x20]]) >> 0x00;
                                        var4 = var1;
                                        var5 = var2;
                                    
                                        if (var5 < memory[var4:var4 + 0x20]) {
                                            memory[var5 * 0x20 + var4 + 0x20:var5 * 0x20 + var4 + 0x20 + 0x20] = var3;
                                            var3 = var2;
                                            var4 = 0x146b;
                                            var5 = var3;
                                            var4 = func_28C6(var5);
                                            var2 = var4;
                                            var3 = 0x140e;
                                            var4 = var0;
                                            var5 = 0x01;
                                            var3 = func_289D(var4, var5);
                                            goto label_140E;
                                        } else {
                                            var var6 = 0x1456;
                                            memory[0x00:0x20] = 0x4e487b71 << 0xe0;
                                            memory[0x04:0x24] = 0x32;
                                            revert(memory[0x00:0x24]);
                                        }
                                    } else {
                                        arg0 = msg.sender == 0x681535922425a4264b3670d9430afc6dc4de103e;
                                        goto label_13CE;
                                    }
                                }
                            } else {
                            label_1F79:
                                arg0 = msg.sender == 0xfac983fce7ef3cee8ffb2ceb967e1b2362aada00;
                            
                                if (!arg0) { goto label_1F97; }
                            
                                func_1780(arg0);
                                // Error: Could not resolve method call return address!
                            }
                        } else {
                        label_1F5B:
                            arg0 = msg.sender == 0x41d3ab85aafed2ef9e644cb7d3bbca2fc4d8cac8;
                        
                            if (arg0) { goto label_1F91; }
                            else { goto label_1F79; }
                        }
                    } else {
                    label_1F3D:
                        arg0 = msg.sender == 0x52b86a86e4d764e8275391c436127e60340a0e6a;
                    
                        if (arg0) { goto label_1F73; }
                        else { goto label_1F5B; }
                    }
                } else {
                label_1F1F:
                    arg0 = msg.sender == 0x5b5001c4f80f33ec93b891062ed2e1d0acc05bb6;
                
                    if (arg0) { goto label_1F55; }
                    else { goto label_1F3D; }
                }
            } else {
            label_1F01:
                arg0 = msg.sender == 0x4f80b2cd1f550f81581c15f690bdd623f3824c86;
            
                if (arg0) { goto label_1F37; }
                else { goto label_1F1F; }
            }
        } else {
        label_1EE3:
            arg0 = msg.sender == 0xb7ab1de5b259a880c4bb5451bdbe6f80f3798538;
        
            if (arg0) { goto label_1F19; }
            else { goto label_1F01; }
        }
    }
    
    function func_20FD(var arg0, var arg1, var arg2) returns (var r0) {
        var var0 = 0x00;
    
        if (0x00 - arg2) {
            var temp0 = memory[0x40:0x60];
            memory[temp0:temp0 + 0x20] = 0xa9059cbb << 0xe0;
            memory[temp0 + 0x04:temp0 + 0x04 + 0x20] = arg1 & (0x01 << 0xa0) - 0x01;
            memory[temp0 + 0x24:temp0 + 0x24 + 0x20] = arg2;
            var temp1;
            temp1, memory[temp0:temp0 + 0x20] = address(arg0).call.gas(msg.gas)(memory[temp0:temp0 + 0x44]);
            arg1 = memory[temp0:temp0 + 0x20];
        
        label_2143:
            return var0;
        } else {
            var0 = 0x01;
            goto label_2143;
        }
    }
    
    function func_214A(var arg0, var arg1, var arg2, var arg3) returns (var r0) {
        var var0 = 0x00;
        var temp0 = memory[0x40:0x60];
        var var1 = temp0;
        memory[var1:var1 + 0x20] = 0x022c0d9f << 0xe0;
        memory[var1 + 0x04:var1 + 0x04 + 0x20] = arg0;
        memory[var1 + 0x24:var1 + 0x24 + 0x20] = arg1;
        var var2 = arg3;
    
        if (var2 == 0x00) {
            var temp1 = var1;
            memory[temp1 + 0x44:temp1 + 0x44 + 0x20] = 0x3b3cc22af3ae1eac0440bcee416b40;
            memory[temp1 + 0x64:temp1 + 0x64 + 0x20] = 0x80;
            memory[temp1 + 0x84:temp1 + 0x84 + 0x20] = 0x00;
            var temp2;
            temp2, memory[temp1:temp1 + 0x20] = address(arg2).call.gas(msg.gas)(memory[temp1:temp1 + 0xa4]);
            return r0;
        } else {
            memory[var1 + 0x44:var1 + 0x44 + 0x20] = arg3;
            var temp3 = var1;
            memory[temp3 + 0x64:temp3 + 0x64 + 0x20] = 0x80;
            memory[temp3 + 0x84:temp3 + 0x84 + 0x20] = 0x00;
            var temp4;
            temp4, memory[temp3:temp3 + 0x20] = address(arg2).call.gas(msg.gas)(memory[temp3:temp3 + 0xa4]);
            return r0;
        }
    }
    
    function func_21B3(var arg0) returns (var r0, var arg0) {
        var var0 = 0x00;
        var var1 = var0;
    
        if ((arg0 & (0x01 << 0xa0) - 0x01) + ~0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc1) {
            r0 = 0x00;
            arg0 = r0;
            return r0, arg0;
        } else {
            r0 = 0x00;
            arg0 = 0x01;
            return r0, arg0;
        }
    }
    
    function func_21F2(var arg0, var arg1, var arg2, var arg3, var arg4) returns (var r0, var arg0) {
        var var0 = 0x00;
        var var1 = var0;
        var var2 = 0x00;
    
        if (arg2) {
            var2 = 0x01000276a4;
            var var3 = memory[0x40:0x60];
            memory[var3:var3 + 0x20] = 0x02515961 << 0xe3;
            var var4 = arg1;
        
            if (var4 == 0x00) {
            label_2240:
                var temp0 = var3;
                memory[temp0 + 0x04:temp0 + 0x04 + 0x20] = 0x3b3cc22af3ae1eac0440bcee416b40;
                memory[temp0 + 0x24:temp0 + 0x24 + 0x20] = arg2;
                memory[temp0 + 0x44:temp0 + 0x44 + 0x20] = arg3;
                memory[temp0 + 0x64:temp0 + 0x64 + 0x20] = var2;
                memory[temp0 + 0x84:temp0 + 0x84 + 0x20] = 0xa0;
                var temp1 = memory[arg4:arg4 + 0x20];
                var4 = temp1;
                memory[temp0 + 0xa4:temp0 + 0xa4 + 0x20] = var4;
                var var5 = 0x00;
            
                if (var5 >= var4) {
                label_2298:
                    var temp2 = var3;
                    var temp3;
                    temp3, memory[temp2:temp2 + 0x40] = address(arg0).call.gas(msg.gas)(memory[temp2:temp2 + var4 + 0xc4]);
                
                    if (!temp3) { revert(memory[0x00:0x00]); }
                
                    var temp4 = var3;
                    arg0 = memory[temp4 + 0x20:temp4 + 0x20 + 0x20];
                    r0 = memory[temp4:temp4 + 0x20];
                    return r0, arg0;
                } else {
                label_2284:
                    var temp5 = var5;
                    memory[temp5 + var3 + 0xc4:temp5 + var3 + 0xc4 + 0x20] = memory[arg4 + temp5 + 0x20:arg4 + temp5 + 0x20 + 0x20];
                    var5 = temp5 + 0x20;
                
                    if (var5 >= var4) { goto label_2298; }
                    else { goto label_2284; }
                }
            } else {
            label_2236:
                memory[var3 + 0x04:var3 + 0x04 + 0x20] = arg1;
                var temp6 = var3;
                memory[temp6 + 0x24:temp6 + 0x24 + 0x20] = arg2;
                memory[temp6 + 0x44:temp6 + 0x44 + 0x20] = arg3;
                memory[temp6 + 0x64:temp6 + 0x64 + 0x20] = var2;
                memory[temp6 + 0x84:temp6 + 0x84 + 0x20] = 0xa0;
                var temp7 = memory[arg4:arg4 + 0x20];
                var4 = temp7;
                memory[temp6 + 0xa4:temp6 + 0xa4 + 0x20] = var4;
                var5 = 0x00;
            
                if (var5 >= var4) { goto label_2298; }
                else { goto label_2284; }
            }
        } else {
            var3 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
            var2 = var3;
            var3 = memory[0x40:0x60];
            memory[var3:var3 + 0x20] = 0x02515961 << 0xe3;
            var4 = arg1;
        
            if (var4 == 0x00) { goto label_2240; }
            else { goto label_2236; }
        }
    }
    
    function func_22CA() {
        var var0 = tx.origin == 0xb58555fcba6479fced7de1485eb054943a09af7b;
    
        if (!var0) {
            var0 = tx.origin == 0xb7ab1de5b259a880c4bb5451bdbe6f80f3798538;
        
            if (var0) { goto label_231D; }
            else { goto label_2305; }
        } else if (var0) {
        label_231D:
        
            if (var0) {
            label_233B:
            
                if (var0) {
                label_2359:
                
                    if (var0) {
                    label_2377:
                    
                        if (var0) {
                        label_2395:
                        
                            if (var0) {
                            label_23B3:
                            
                                if (!var0) { revert(memory[0x00:0x00]); }
                            
                            label_04C5:
                                return;
                            } else {
                            label_239B:
                            
                                if (tx.origin == 0x41d3ab85aafed2ef9e644cb7d3bbca2fc4d8cac8) { goto label_04C5; }
                                else { revert(memory[0x00:0x00]); }
                            }
                        } else {
                        label_237D:
                            var0 = tx.origin == 0x52b86a86e4d764e8275391c436127e60340a0e6a;
                        
                            if (var0) { goto label_23B3; }
                            else { goto label_239B; }
                        }
                    } else {
                    label_235F:
                        var0 = tx.origin == 0x26ce7c1976c5eec83ea6ac22d83cb341b08850af;
                    
                        if (var0) { goto label_2395; }
                        else { goto label_237D; }
                    }
                } else {
                label_2341:
                    var0 = tx.origin == 0xa6ae57b1da8238cd149bc718c40578e4620b752c;
                
                    if (var0) { goto label_2377; }
                    else { goto label_235F; }
                }
            } else {
            label_2323:
                var0 = tx.origin == 0x5b5001c4f80f33ec93b891062ed2e1d0acc05bb6;
            
                if (var0) { goto label_2359; }
                else { goto label_2341; }
            }
        } else {
        label_2305:
            var0 = tx.origin == 0x4f80b2cd1f550f81581c15f690bdd623f3824c86;
        
            if (var0) { goto label_233B; }
            else { goto label_2323; }
        }
    }
    
    function func_23D2(var arg0, var arg1) returns (var r0) {
        var temp0 = arg1;
        var var0 = temp0 - arg0;
    
        if (var0 <= temp0) { return var0; }
    
        var var1 = 0x23e5;
        memory[0x00:0x20] = 0x4e487b71 << 0xe0;
        memory[0x04:0x24] = 0x11;
        revert(memory[0x00:0x24]);
    }
    
    function func_23EB(var arg0) returns (var r0) {
        var temp0 = arg0;
        memory[temp0:temp0 + 0x20] = 0x20;
        memory[temp0 + 0x20:temp0 + 0x20 + 0x20] = 0x03;
        memory[temp0 + 0x40:temp0 + 0x40 + 0x20] = 0x111111 << 0xea;
        return temp0 + 0x60;
    }
    
    function func_2408(var arg0) returns (var r0) {
        var temp0 = msg.data[arg0:arg0 + 0x20];
        var var0 = temp0;
    
        if (var0 == var0 & (0x01 << 0xa0) - 0x01) { return var0; }
        else { revert(memory[0x00:0x00]); }
    }
    
    function func_2424(var arg0, var arg1) returns (var r0, var arg0) {
        var var0 = 0x00;
        var var1 = var0;
    
        if (arg1 + 0x1f i>= arg0) { revert(memory[0x00:0x00]); }
    
        var1 = msg.data[arg1:arg1 + 0x20];
    
        if (var1 > 0xffffffffffffffff) { revert(memory[0x00:0x00]); }
    
        var temp0 = arg1;
        var0 = temp0 + 0x20;
    
        if (temp0 + var1 + 0x20 > arg0) { revert(memory[0x00:0x00]); }
    
        arg0 = var1;
        r0 = var0;
        return r0, arg0;
    }
    
    function func_246D(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg0 - arg1 i>= 0x40) { return arg1; }
        else { revert(memory[0x00:0x00]); }
    }
    
    function func_2485(var arg0, var arg1) returns (var r0, var arg0, var arg1, var r3) {
        r3 = 0x00;
        var var1 = r3;
        var var2 = 0x00;
        var var3 = var2;
    
        if (arg0 - arg1 i< 0x80) { revert(memory[0x00:0x00]); }
    
        var var4 = 0x24a4;
        var var5 = arg1;
        var4 = func_2408(var5);
        r3 = var4;
        var4 = msg.data[arg1 + 0x20:arg1 + 0x20 + 0x20];
    
        if (var4 > 0xffffffffffffffff) { revert(memory[0x00:0x00]); }
    
        var5 = 0x24cc;
        var var6 = arg0;
        var var7 = arg1 + var4;
        var5, var6 = func_2424(var6, var7);
        var1 = var5;
        var2 = var6;
        var4 = 0x24e0;
        var5 = arg0;
        var6 = arg1 + 0x40;
        var4 = func_246D(var5, var6);
        var temp0 = r3;
        r3 = var4;
        r0 = temp0;
        arg0 = var1;
        arg1 = var2;
        return r0, arg0, arg1, r3;
    }
    
    function func_24EB(var arg0, var arg1) returns (var r0, var arg0, var arg1, var r3) {
        r3 = 0x00;
        var var1 = r3;
        var var2 = 0x00;
        var var3 = var2;
    
        if (arg0 - arg1 i< 0x60) { revert(memory[0x00:0x00]); }
    
        var temp0 = arg1;
        r3 = msg.data[temp0:temp0 + 0x20];
        var1 = msg.data[temp0 + 0x20:temp0 + 0x20 + 0x20];
        var var4 = msg.data[temp0 + 0x40:temp0 + 0x40 + 0x20];
    
        if (var4 > 0xffffffffffffffff) { revert(memory[0x00:0x00]); }
    
        var var5 = 0x2532;
        var var6 = arg0;
        var var7 = arg1 + var4;
        var5, var6 = func_2424(var6, var7);
        var temp1 = r3;
        r3 = var6;
        r0 = temp1;
        arg0 = var1;
        arg1 = var5;
        return r0, arg0, arg1, r3;
    }
    
    function func_253E(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg0 - arg1 i< 0x20) { revert(memory[0x00:0x00]); }
    
        var var1 = 0x2143;
        var var2 = arg1;
        return func_2408(var2);
    }
    
    function func_2559(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg0 - arg1 i>= 0x20) { return msg.data[arg1:arg1 + 0x20]; }
        else { revert(memory[0x00:0x00]); }
    }
    
    function func_2572(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg0 - arg1 i>= 0x60) { return arg1; }
        else { revert(memory[0x00:0x00]); }
    }
    
    function func_2584(var arg0, var arg1) returns (var r0, var arg0, var arg1, var r3, var r4) {
        r3 = 0x00;
        r4 = r3;
        var var2 = 0x00;
        var var3 = var2;
        var var4 = 0x00;
    
        if (arg0 - arg1 i< 0xa0) { revert(memory[0x00:0x00]); }
    
        var var5 = 0x25a6;
        var var6 = arg0;
        var var7 = arg1;
        var5 = func_2572(var6, var7);
        r3 = var5;
        var5 = msg.data[arg1 + 0x60:arg1 + 0x60 + 0x20];
        var6 = 0xffffffffffffffff;
    
        if (var5 > var6) { revert(memory[0x00:0x00]); }
    
        var7 = 0x25cf;
        var var8 = arg0;
        var var9 = arg1 + var5;
        var7, var8 = func_2424(var8, var9);
        r4 = var7;
        var2 = var8;
        var5 = msg.data[arg1 + 0x80:arg1 + 0x80 + 0x20];
    
        if (var5 > var6) { revert(memory[0x00:0x00]); }
    
        var6 = 0x25f5;
        var7 = arg0;
        var8 = arg1 + var5;
        var6, var7 = func_2424(var7, var8);
        r0 = r3;
        arg0 = r4;
        arg1 = var2;
        r3 = var6;
        r4 = var7;
        return r0, arg0, arg1, r3, r4;
    }
    
    function func_2606(var arg0, var arg1) returns (var r0, var arg0, var arg1) {
        var var0 = 0x00;
        var var1 = var0;
        var var2 = 0x00;
    
        if (arg0 - arg1 i< 0x80) { revert(memory[0x00:0x00]); }
    
        var var3 = 0x2625;
        var var4 = arg0;
        var var5 = arg1;
        var3 = func_2572(var4, var5);
        var0 = var3;
        var3 = msg.data[arg1 + 0x60:arg1 + 0x60 + 0x20];
    
        if (var3 > 0xffffffffffffffff) { revert(memory[0x00:0x00]); }
    
        var4 = 0x264d;
        var5 = arg0;
        var var6 = arg1 + var3;
        var4, var5 = func_2424(var5, var6);
        r0 = var0;
        arg0 = var4;
        arg1 = var5;
        return r0, arg0, arg1;
    }
    
    function func_265A(var arg0, var arg1) returns (var r0, var arg0, var arg1, var r3) {
        r3 = 0x00;
        var var1 = r3;
        var var2 = 0x00;
        var var3 = var2;
    
        if (arg0 - arg1 i< 0x60) { revert(memory[0x00:0x00]); }
    
        var var4 = 0x2679;
        var var5 = arg1;
        var4 = func_2408(var5);
        r3 = var4;
        var temp0 = arg1;
        var1 = msg.data[temp0 + 0x20:temp0 + 0x20 + 0x20];
        var4 = msg.data[temp0 + 0x40:temp0 + 0x40 + 0x20];
    
        if (var4 > 0xffffffffffffffff) { revert(memory[0x00:0x00]); }
    
        var5 = 0x2532;
        var var6 = arg0;
        var var7 = arg1 + var4;
        var5, var6 = func_2424(var6, var7);
        var temp1 = r3;
        r3 = var6;
        r0 = temp1;
        arg0 = var1;
        arg1 = var5;
        return r0, arg0, arg1, r3;
    }
    
    function func_269C(var arg0, var arg1, var arg2) {
        var var0 = 0x00;
    
        if (var0 >= arg0) {
        label_26B7:
            memory[arg0 + arg1:arg0 + arg1 + 0x20] = 0x00;
            return;
        } else {
        label_26A8:
            var temp0 = var0;
            memory[temp0 + arg1:temp0 + arg1 + 0x20] = memory[temp0 + arg2:temp0 + arg2 + 0x20];
            var0 = temp0 + 0x20;
        
            if (var0 >= arg0) { goto label_26B7; }
            else { goto label_26A8; }
        }
    }
    
    function func_26C0(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
        var temp0 = arg1;
        var temp1 = memory[temp0:temp0 + 0x20];
        var var1 = temp1;
        var temp2 = arg0;
        memory[temp2:temp2 + 0x20] = var1;
        var var2 = 0x26d8;
        var var3 = var1;
        var var4 = temp2 + 0x20;
        var var5 = temp0 + 0x20;
        func_269C(var3, var4, var5);
        return (var1 + 0x1f & ~0x1f) + arg0 + 0x20;
    }
    
    function func_26FF(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg0 - arg1 i< 0x20) { revert(memory[0x00:0x00]); }
    
        var temp0 = msg.data[arg1:arg1 + 0x20];
        var var1 = temp0;
    
        if (var1 == var1 & ~((0x01 << 0xb0) - 0x01)) { return var1; }
        else { revert(memory[0x00:0x00]); }
    }
    
    function func_2729(var arg0, var arg1, var arg2) returns (var r0) {
        var temp0 = arg1;
        var temp1 = arg0;
        memory[temp1:temp1 + 0x20] = temp0;
        memory[temp1 + 0x20:temp1 + 0x20 + temp0] = msg.data[arg2:arg2 + temp0];
        memory[temp0 + temp1 + 0x20:temp0 + temp1 + 0x20 + 0x20] = 0x00;
        return temp1 + (temp0 + 0x1f & ~0x1f) + 0x20;
    }
    
    function func_2752(var arg0, var arg1, var arg2) returns (var r0) {
        var temp0 = arg2;
        memory[temp0:temp0 + 0x20] = 0x20;
        var var0 = 0x00;
        var var1 = 0x2766;
        var var2 = temp0 + 0x20;
        var var3 = arg1;
        var var4 = arg0;
        return func_2729(var2, var3, var4);
    }
    
    function func_276E(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg0 - arg1 i>= 0x20) { return memory[arg1:arg1 + 0x20]; }
        else { revert(memory[0x00:0x00]); }
    }
    
    function func_279D(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
        var temp0 = arg0;
        var var1 = memory[temp0:temp0 + 0x20];
        var var2 = 0x27af;
        var var3 = var1;
        var var4 = arg1;
        var var5 = temp0 + 0x20;
        func_269C(var3, var4, var5);
        return var1 + arg1;
    }
    
    function func_27EB(var arg0, var arg1, var arg2) returns (var r0) {
        var temp0 = arg1;
        var temp1 = arg2;
        memory[temp1:temp1 + temp0] = msg.data[arg0:arg0 + temp0];
        memory[temp0 + temp1:temp0 + temp1 + 0x20] = 0x00;
        return temp0 + temp1;
    }
    
    function func_27FB(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg0 - arg1 i< 0x20) { revert(memory[0x00:0x00]); }
    
        var var1 = memory[arg1:arg1 + 0x20];
        var var2 = 0xffffffffffffffff;
    
        if (var1 > var2) { revert(memory[0x00:0x00]); }
    
        var temp0 = arg1 + var1;
        var1 = temp0;
    
        if (var1 + 0x1f i>= arg0) { revert(memory[0x00:0x00]); }
    
        var var3 = memory[var1:var1 + 0x20];
    
        if (var3 <= var2) {
            var temp1 = memory[0x40:0x60];
            var temp2 = ~0x1f;
            var temp3 = temp1 + ((temp2 & var3 + 0x1f) + 0x3f & temp2);
            var var5 = temp1;
            var var4 = temp3;
        
            if (!((var4 < var5) | (var4 > var2))) {
                memory[0x40:0x60] = var4;
                var temp4 = var3;
                memory[var5:var5 + 0x20] = temp4;
            
                if (var1 + temp4 + 0x20 > arg0) { revert(memory[0x00:0x00]); }
            
                var var6 = 0x27e0;
                var var7 = var3;
                var var8 = var5 + 0x20;
                var var9 = var1 + 0x20;
                func_269C(var7, var8, var9);
                return var5;
            } else {
                var6 = 0x2873;
            
            label_2787:
                memory[0x00:0x20] = 0x4e487b71 << 0xe0;
                memory[0x04:0x24] = 0x41;
                revert(memory[0x00:0x24]);
            }
        } else {
            var4 = 0x284b;
            goto label_2787;
        }
    }
    
    function func_289D(var arg0, var arg1) returns (var r0) {
        var temp0 = arg1;
        var var0 = arg0 + temp0;
    
        if (temp0 <= var0) { return var0; }
    
        var var1 = 0x23e5;
        memory[0x00:0x20] = 0x4e487b71 << 0xe0;
        memory[0x04:0x24] = 0x11;
        revert(memory[0x00:0x24]);
    }
    
    function func_28C6(var arg0) returns (var r0) {
        var var0 = 0x00;
    
        if (arg0 + 0x01) { return arg0 + 0x01; }
    
        var var1 = 0x28d8;
        memory[0x00:0x20] = 0x4e487b71 << 0xe0;
        memory[0x04:0x24] = 0x11;
        revert(memory[0x00:0x24]);
    }
    
    function func_28DF(var arg0) returns (var r0) {
        var var0 = 0x00;
    
        if (arg0 + (0x01 << 0xff)) { return 0x00 - arg0; }
    
        var var1 = 0x28f4;
        memory[0x00:0x20] = 0x4e487b71 << 0xe0;
        memory[0x04:0x24] = 0x11;
        revert(memory[0x00:0x24]);
    }
    
    function func_28FB(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg0 - arg1 i< 0x20) { revert(memory[0x00:0x00]); }
    
        var temp0 = memory[arg1:arg1 + 0x20];
        var var1 = temp0;
    
        if (var1 == !!var1) { return var1; }
        else { revert(memory[0x00:0x00]); }
    }
}
