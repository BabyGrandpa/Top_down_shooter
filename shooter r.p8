pico-8 cartridge // http://www.pico-8.com
version 18
__lua__
--
--
--


function _init()
 poke(0x5f2d, 1)
 xmap=stat(32)
 ymap=stat(33)
 gameinit()
end



function _update()
	move()
	camera(cx,cy)
	mousef=stat(32)-1
	mousef2=stat(33)-1
end


function _draw()
	cls()
	map(0,0,0,0,46,42)
	drawdoor()
	print(x.."/"..y,cx,cy,2)
	drawsht()
	spr(39,mousef+mx,mousef2+my)
end


--
--
--

-->8
--
--
--



function gameinit()
	x=64
	y=64
	speedx=8
	speedy=8
	xc=64
	yc=64
	cx=0
	cy=0
	mx=0
	my=0
end

function move()

	if btnp(⬆️,0) then
		if cwallup() == false then
			y=y-speedy
			cy-=8
			my-=8
		end
	end
	
	if btnp(⬇️,0) then
		if cwalldown() == false then
		 y=y+speedy
		 cy+=8
		 my+=8
		end
	end
	
	if btnp(⬅️,0) then
		if cwallleft() == false then
			x=x-speedx
			cx-=8
			mx-=8
		end
	end
	
	if btnp(➡️,0) then
		if cwallright() == false then
			x=x+speedx
			cx+=8
			mx+=8
		end
	end
end

--
--


-->8
--colition
--


--
function cwallleft()
	 aimx=(x-1)/8
		aimy=(y+4)/8
	
	if fget(mget(aimx,aimy),0) then
		return true
	else 
		return false
	end
end

function cwallright()
		aimx=(x+8)/8		
		aimy=(y+4)/8

	if fget(mget(aimx,aimy),0) then
		return true
	else 
		return false
	end
end

function cwallup()
		aimx=(x+4)/8
		aimy=(y-1)/8

	if fget(mget(aimx,aimy),0) then
		return true
	else 
		return false
	end
end

function cwalldown()
	aimx=(x+4)/8
	aimy=(y+8)/8
	
	if fget(mget(aimx,aimy),0) then
		return true
	else 
		return false
	end
end

function cdoorleft()
	 aimx=(x-1)/8
		aimy=(y+4)/8
	
	if fget(mget(aimx,aimy),1) then
		return true
	else 
		return false
	end
end

function cdoorright()
		aimx=(x+8)/8		
		aimy=(y+4)/8

	if fget(mget(aimx,aimy),1) then
		return true
	else 
		return false
	end
end

function cdoorup()
		aimx=(x+4)/8
		aimy=(y-1)/8

	if fget(mget(aimx,aimy),1) then
		return true
	else 
		return false
	end
end

function cdoordown()
	aimx=(x+4)/8
	aimy=(y+8)/8
	
	if fget(mget(aimx,aimy),1) then
		return true
	else 
		return false
	end
end

function cdoorontop()
	aimx=(x)/8
	aimy=(y)/8
	
	if fget(mget(aimx,aimy),1) then
		return true
	else 
		return false
	end
end
-->8
function drawdoor()

 	if cdoorup() == true then
			spr(1,x,y-8)
		end
		
		if cdoordown() == true then
			spr(1,x,y+8)
		end
		
		if cdoorontop() == true then
			spr(1,x,y)
		end
		
		if cdoorleft() == true then
			spr(1,x-8,y)
		end
		
		if cdoorright() == true then
			spr(1,x+8,y)
		end
end

function drawsht()
	if stat(32) < 64 then
		spr(38,x,y,1,1,false,false)
	elseif stat(32) > 63 then
	 spr(38,x,y,1,1,true,false)
	end
end 
__gfx__
00000000444444444544444444444454555555555555555500000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000444444444544444444444454555555555555555500000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700444444444644444444444464555555555555555500000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000444444444655555445555564555555555555555500000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000444444444655555445555564555555555555555500000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700444444444666666446666664644444465555555500000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000444444444644446446444464644444465555555500000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000444444444644446446444464644444465555555500000000000000000000000000000000000000000000000000000000000000000000000000000000
66666666444555444445554444444444444444440000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
888688864445554444455544444444a44a4444440000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
666666664445554444a555a455555555555555550000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
68888688444555444445554455555555555555550000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
66666666444555444445554455555555555555550000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
8868886844a555a444455544444444a44a4444440000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
66666666444555444445554444444444444444440000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
68886888444555444445554444444444444444440000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000033300000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000003333300aa00aa00000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000fff000a0000a00000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000011110000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000111101000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000008f51115f0a0000a00000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000005888050aa00aa00000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000005080800000000000000000000000000000000000000000000000000000000000000000000000000
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
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__gff__
0000010101010100000000000000000001020202020002000101000000000000000000000000000001010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__map__
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000101010101010101010101010101010101010101010101010101010101010101010101010101010101010101000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000100101010101010101010101010101010110010101010101010110000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000100101010205010205010205010101010110010101010101010110000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000100101010205010205010205010101010110010101010101010110000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000100101010205010205010205010104030110010101010101010110000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000100101010205010205010205010101010110010101010101010110000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000100101010204010204010204010101010110010101010101010110000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000100101010101010101010101010101010110010101010101010110000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000100101010101010101010101010101010110010101010101010110000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000101010101010101013141010101010101010101010101010101010101010101010101010101010101010101000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000100101010101010101010101010101010101010101010101010110000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000100101010101010101010101010101010101010101010101010110000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000100101010101010101010101010101010101010101010101010110000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000110101010101010101010101010101010101010101010101010110000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000120101010101010101010101010101010101010101010101010110000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000100101010101010101010101010101010101010101010101010110000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000100101010101010101010101010101010101010101010101010110000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000100101010101010101010101010101010101010101010101010110000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000101010101010101010101010101010101010101010101010101010101010101010101010101010101010101000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000100000000000000000000000000000000000000000000000000010000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000100000000000000000000000000000000000000000000000000010000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000100000000000000000000000000000000000000000000000000010000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000100000000000000000000000000000000000000000000000000010000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000100000000000000000000000000000000000000000000000000010000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000100000000000000000000000000000000000000000000000000010000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000100000000000000000000000000000000000000000000000000010000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000100000000000000000000000000000000000000000000000000010000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000100000000000000000000000000000000000000000000000000010000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000100000000000000000000000000000000000000000000000000010000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000100000000000000000000000000000000000000000000000000010000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000100000000000000000000000000000000000000000000000000010000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
