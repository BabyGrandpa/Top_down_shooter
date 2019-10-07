pico-8 cartridge // http://www.pico-8.com
version 18
__lua__
--
--
--


function _init()
	s()
 poke(0x5f2d, 1)
end



function _update()
	move()
	
	block()
end


function _draw()
	cls()
	print(x.."/"..y,0,0)
	spr(39,64,64)
	spr(38,xc,yc)
 spr(39,stat(32)-1,stat(33)-1)

	map(0,0,x,y,50,50)
end


--
--
--

-->8
--
--
--



function s()
	x=64
	y=-40
	xc=64
	yc=64
	placed=true
	placer=true
	placeu=true
 placel=true
	cursora=false
end

function move()

	if btnp(⬆️) and placeu == true then
		y+=8
	end
	if btnp(⬇️) and placed == true then
		y-=8
	end
	if btnp(⬅️) and placel == true then
		x+=8
	end
	if btnp(➡️) and placer == true then
		x-=8
	end
	
end
	
function block()

	if x >= 48 or -280 >= x then
	 placed=true
	elseif y == 56 or y == -256 then
	 placed=false
	else
	 placed=true
	end
	
	if y >= 56 or -256 > y or y >= 56 then
	 placer=true
	elseif x == 48 and y != -40 and y != -48 or x == -272 then
	 placer=false
	else
	 placer=true
	end
	
	if x >= 48 or -280 >= x then
	 placeu=true
	elseif y == -264 or y == 48 then
	 placeu=false
	else
	 placeu=true
	end
	
	if y <= -264 or 56 <= y or y == -40 and x != -280 or y == -48 and  x != -280 then
	 placel=true
	elseif x == -280 or x == 40 then
	 placel=false
	else
	 placel=true
	end
	
end  


--
--


__gfx__
00000000666666666666666666666666000000060000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000666666666666666666666666000000060000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700660000000000000000000066000000060000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000660000000000000000000066000000060000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000660000000000000000000066000000060000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700660000000000000000000066000000060000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000660000000000000000000066000000060000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000660000000000000000000066000000060000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000660000000000000000000066000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000660000000000000000000066000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000660000000000000000000066000000000000000000888800005555000000000000000000000000000000000000000000000000000000000000000000
00000000660000000000000000000066000000000000000000888800004444000000000000000000000000000000000000000000000000000000000000000000
00000000660000000000000000000066000000000000000000888800004444000000000000000000000000000000000000000000000000000000000000000000
00000000660000000000000000000066000000000000000000888800004444000000000000000000000000000000000000000000000000000000000000000000
00000000660000000000000000000066000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000660000000000000000000066666666660000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000006600000000000000000000666666666600000000cccccccc000000000000000000000000000000000000000000000000000000000000000000000000
000000006600000000000000000000666666666600000000cccccccc0aa00aa00000000000000000000000000000000000000000000000000000000000000000
000000006600000000000000000000660000000600000000cccccccc0a0000a00000000000000000000000000000000000000000000000000000000000000000
000000006600000000000000000000660000000600000000cccccccc000000000000000000000000000000000000000000000000000000000000000000000000
000000006600000000000000000000660000000600000000cccccccc000000000000000000000000000000000000000000000000000000000000000000000000
000000006600000000000000000000660000000600000000cccccccc0a0000a00000000000000000000000000000000000000000000000000000000000000000
000000006666666666666666666666660000000600000000cccccccc0aa00aa00000000000000000000000000000000000000000000000000000000000000000
000000006666666666666666666666660000000600000000cccccccc000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000060000006666000000000000060000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000060000006666000000000000060000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000060000006666000000000000060000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000060000006666000000000000060000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000060000006666000000000000060000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000060000006666000000000000060000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000666666660000006666000000000000060000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000666666666666666666666666666666660000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000011000000000000000000000000000000000000000000004000000000000000000000000000000031000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000011000000000000000000000000000000000000000000004000000000000000000000000000000031000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000011000000000000000000000000000000000000000000004000000000000000000000000000000031000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000011000000000000000000000000000000000000000000004000000000000000000000000000000031000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000011000000000000000000000000000000000000000000004000000000000000000000000000000031000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000011000000000000000000000000000000000000000000004000000000000000000000000000000031000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000011000000000000000000000000000000000000000000004000000000000000000000000000000031000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000011000000000000000000000000000000000000000000004000000000000000000000000000000031000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000012222222222222222222222222222222222222222222221322222222222222222222222222222232000000000000000000000000000000000000000000
__map__
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000102020202020224020202020202020202020202020202240202020202020202020202020202020300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000004000000000000000000000000000000040000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000004000000000000000000000000000000040000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000004000000000000000000000000000000040000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000004000000000000000000000000000000040000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000004000000000000000000000000000000040000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000004000000000000000000000000000000040000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000003314141414141434141414141414141414141414141414341414141414141414141414141414143200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000000000000000000000000000000000000040000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000000000000000000000000000000000000040000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000000000000000000000000000000000000040000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000000000000000000000000000000000000040000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000000000000000000000000000000000000040000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000000000000000000000000000000000000040000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000000000000000000000000000000000000040000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000003314141414141414141414141414141414141414141414340000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000000000000000000000000000000000000040000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000000000000000000000000000000000000040000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000000000000000000000000000000000000040000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000000000000000000000000000000000000040000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000000000000000000000000000000000000040000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000000000000000000000000000000000000040000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000000000000000000000000000000000000040000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000000000000000000000000000000000000040000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000000000000000000000000000000000000040000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000000000000000000000000000000000000040000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000000000000000000000000000000000000040000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000000000000000000000000000000000000040000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000000000000000000000000000000000000040000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000000000000000000000000000000000000040000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
