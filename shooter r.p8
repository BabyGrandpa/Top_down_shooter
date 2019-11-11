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
 bullets = { }
end



function _update()
	move()
	camera(cx,cy)
	mousex=stat(32)
	mousey=stat(33)
	timer+=1
end


function _draw()
	cls()
	map(0,0,0,0,128,64)
	drawdoor()
	print(playerx.."/"..playery,cx,cy,0)
	print(stat(32).."/"..stat(33),cx,cy+8,0)	
	drawsht()
	spr(39,mousex+mx,mousey+my)
end


--
--
--

-->8
--
--
--



function gameinit()
	playerx=64
	playery=64
	speedx=8
	speedy=8
	xc=64
	yc=64
	cx=0
	cy=0
	mx=0
	my=0
	doorv=0
	timer=0
end

function move()

	if btnp(⬆️,0) then
		if cwallup() == false then
			playery-=speedy
			cy-=speedy
			my-=speedy
		elseif cwallup() == true and btnp(⬆️,0) then
			sfx(0)
		end
	end
	
	if btnp(⬇️,0) then
		if cwalldown() == false then
		 playery+=speedy
		 cy+=speedy
		 my+=speedy
		elseif cwalldown() == true and btnp(⬇️,0) then
			sfx(0)
		end
	end
	
	if btnp(⬅️,0) then
		if cwallleft() == false then
			playerx-=speedx
			cx-=speedx
			mx-=speedx
		elseif cwallleft() == true and btnp(⬅️,0) then
			sfx(0)
		end
	end
	
	if btnp(➡️,0) then
		if cwallright() == false then
			playerx+=speedx
			cx+=speedx
			mx+=speedx
		elseif cwallright() == true and btnp(➡️,0) then
			sfx(0)
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
	 aimx=(playerx-1)/8
		aimy=(playery+4)/8
	
	if fget(mget(aimx,aimy),0) then
		return true
	else 
		return false
	end
end

function cwallright()
		aimx=(playerx+8)/8		
		aimy=(playery+4)/8

	if fget(mget(aimx,aimy),0) then
		return true
	else 
		return false
	end
end

function cwallup()
		aimx=(playerx+4)/8
		aimy=(playery-1)/8

	if fget(mget(aimx,aimy),0) then
		return true
	else 
		return false
	end
end

function cwalldown()
	aimx=(playerx+4)/8
	aimy=(playery+8)/8
	
	if fget(mget(aimx,aimy),0) then
		return true
	else 
		return false
	end
end

function cdoorleft()
	 aimx=(playerx-1)/8
		aimy=(playery+4)/8
	
	if fget(mget(aimx,aimy),1) then
		return true
	else 
		return false
	end
end

function cdoorright()
		aimx=(playerx+8)/8		
		aimy=(playery+4)/8

	if fget(mget(aimx,aimy),1) then
		return true
	else 
		return false
	end
end

function cdoorup()
		aimx=(playerx+4)/8
		aimy=(playery-1)/8

	if fget(mget(aimx,aimy),1) then
		return true
	else 
		return false
	end
end

function cdoordown()
	aimx=(playerx+4)/8
	aimy=(playery+8)/8
	
	if fget(mget(aimx,aimy),1) then
		return true
	else 
		return false
	end
end

function cdoorontop()
	aimx=(playerx)/8
	aimy=(playery)/8
	
	if fget(mget(aimx,aimy),1) then
		return true
	else 
		return false
	end
end
-->8
function drawdoor()

 	if cdoorup() == true and doorv==1 then
			spr(1,playerx,playery-8)
			doorv=1
			doorsound()
		else
			doorv=0
		end
		
		if cdoordown() == true and doorv==1 then
			spr(1,playerx,playery+8)
			doorv=1
			doorsound()
		else
			doorv=0
		end
		
		if cdoorontop() == true then
			spr(1,playerx,playery)
			doorsound()
		end
		
		if cdoorleft() == true and doorv==1 then
			spr(1,playerx-8,playery)
			doorv=1
			doorsound()
		else
			doorv=0
		end
		
		if cdoorright() == true and doorv==1 then
			spr(1,playerx+8,playery)
			doorv=1
			doorsound()
		else
			doorv=0
		end
end

function drawsht()
	if stat(32) < 64 then
		spr(38,playerx,playery,1,1,false,false)
	elseif stat(32) > 63 then
	 spr(38,playerx,playery,1,1,true,false)
	end
end 

function doorsound()
	if timer%10 == 0 then
		sfx(0)
	end
end
-->8
-- bullets

function fire()
	local	b = {     
		sp = 37,
		x = playerx,
		y = playery,
		dx = mousex(32)+mx,
		dy = mousey+my
	}
	
end
__gfx__
00000000444444444544444444444454555555555555555577766677000000000000000000000000000000000000000000000000000000000000000000000000
00000000444444444544444444444454555555555555555577766677000000000000000000000000000000000000000000000000000000000000000000000000
00700700444444444644444444444464555555555555555577766677000000000000000000000000000000000000000000000000000000000000000000000000
00077000444444444655555445555564555555555555555566677766000000000000000000000000000000000000000000000000000000000000000000000000
00077000444444444655555445555564555555555555555566677766000000000000000000000000000000000000000000000000000000000000000000000000
00700700444444444666666446666664644444465555555566677766000000000000000000000000000000000000000000000000000000000000000000000000
00000000444444444644446446444464644444465555555577766677000000000000000000000000000000000000000000000000000000000000000000000000
00000000444444444644446446444464644444465555555577766677000000000000000000000000000000000000000000000000000000000000000000000000
6666666644455544444555444444444444444444bbb3bbb380000008000000000000000000000000000000000000000000000000000000000000000000000000
888688864445554444455544444444a44a444444bb3bbbbb08000080000000000000000000000000000000000000000000000000000000000000000000000000
666666664445554444a555a45555555555555555bbbbb3bb00800800000000000000000000000000000000000000000000000000000000000000000000000000
68888688444555444445554455555555555555553bbb3b3b00088000000000000000000000000000000000000000000000000000000000000000000000000000
6666666644455544444555445555555555555555bb3bbb3b00088000000000000000000000000000000000000000000000000000000000000000000000000000
8868886844a555a444455544444444a44a444444b3bbbbbb00800800000000000000000000000000000000000000000000000000000000000000000000000000
6666666644455544444555444444444444444444bbbb3bb308000080000000000000000000000000000000000000000000000000000000000000000000000000
6888688844455544444555444444444444444444bb3bbb3b80000008000000000000000000000000000000000000000000000000000000000000000000000000
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
51510100000000000000000000000000000000000000000000000000010000000000000000000000000000000001515151515151615151515151515151515151
51515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151
51510100000000000000000000000000000000000000000000000000010000000000000000000000000000000001515151515151615151515151515151515151
51515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151
51510100000000000000000000000000000000000000000000000000010000000000000000000000000000000001515151515151615151515151515151515151
51515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151
51510100000000000000000000000000000000000000000000000000010000000000000000000000000000000001515151515151615151515151515151515151
51515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151
51510100000000000000000000000000000000000000000000000000010000000000000000000000000000000001515151515151615151515151515151515151
51515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151
51510100000000000000000000000000000000000000000000000000010000000000000000000000000000000001515151515151615151515151515151515151
51515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151
51510100000000000000000000000000000000000000000000000000010000000000000000000000000000000001515151515151615151515151515151515151
51515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151
51510100000000000000000000000000000000000000000000000000010000000000000000000000000000000001515151515151615151515151515151515151
51515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151
51510100000000000000000000000000000000000000000000000000010000000000000000000000000000000001515151515151615151515151515151515151
51515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151
51510100000000000000000000000000000000000000000000000000010000000000000000000000000000000001515151515151615151515151515151515151
51515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151
51510100000000000000000000000000000000000000000000000000010000000000000000000000000000000001515151515151615151515151515151515151
51515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151
51510100000000000000000000000000000000000000000000000000010000000000000000000000000000000001515151515151615151515151515151515151
51515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151
51510100000000000000000000000000000000000000000000000000010000000000000000000000000000000001515151515151615151515151515151515151
51515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151
51510100000000000000000000000000000000000000000000000000010000000000000000000000000000000001515151515151615151515151515151515151
51515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151
51510101010101010101010101010101010101010101010101010101010101010101010101010101010101010101515151515151615151515151515151515151
51515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151
51515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151615151515151515151515151
51515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151
51515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151615151515151515151515151
51515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151
51515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151615151515151515151515151
51515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151
51515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151615151515151515151515151
51515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151
61616161616161616161616161616161616161616161616161616161616161616161616161616161616161616161616161616161615151515151515151515151
51515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151
51515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151
51515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151
51515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151
51515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151
51515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151
51515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151
51515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151
51515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151
51515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151
51515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151
51515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151
51515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151
51515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151
51515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151
51515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151
51515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151
51515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151
51515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151
51515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151
51515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151
51515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151
51515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151
51515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151
51515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151
__gff__
0000010101010100000000000000000001020202020001000101000000000000000000000000000001010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__map__
1515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151516151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515
1515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151516151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515
1515101010101010101010101010101010101010101010101010101010101010101010101010101010101010101015151515151516151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515
1515100101010101010101010101010101010110060606060606060610000000000000000000000000000000001015151515151516151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515
1515100101010205010205010205010101010110060606060606060610000000000000000000000000000000001015151515151516151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515
1515100101010205010205010205010101010110060606060606060610000000000000000000000000000000001015151515151516151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515
1515100101010205010205010205010104030110060606060606060610000000000000000000000000000000001015151515151516151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515
1515100101010205010205010205010101010110060606060606060610000000000000000000000000000000001015151515151516151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515
1515100101010204010204010204010101010110060606060606060610000000000000000000000000000000001015151515151516151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515
1515100101010101010101010101010101010110060606060606060610000000000000000000000000000000001015151515151516151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515
1515100101010101010101010101010101010110060606060606060610000000000000000000000000000000001015151515151516151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515
1515101010101010101013141010101010101010101010101010101010101010101010101010101010101010101015151515151516151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515
1515100101010101010101010101010101010101010101010101010110000000000000000000000000000000001015151515151516151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515
1515100101010101010101010101010101010101010101010101010110000000000000000000000000000000001015151515151516151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515
1515100101010101010101010101010101010101010101010101010110000000000000000000000000000000001015151515151516151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515
1515110101010101010101010101010101010101010101010101010110000000000000000000000000000000001015151515151516151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515
1515120101010101010101010101010101010101010101010101010110000000000000000000000000000000001015151515151516151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515
1515100101010101010101010101010101010101010101010101010110000000000000000000000000000000001015151515151516151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515
1515100101010101010101010101010101010101010101010101010110000000000000000000000000000000001015151515151516151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515
1515100101010101010101010101010101010101010101010101010110000000000000000000000000000000001015151515151516151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515
1515101010101010101010101010101010101010101010101010101010101010101010101010101010101010101015151515151516151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515
1515100000000000000000000000000000000000000000000000000010000000000000000000000000000000001015151515151516151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515
1515100000000000000000000000000000000000000000000000000010000000000000000000000000000000001015151515151516151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515
1515100000000000000000000000000000000000000000000000000010000000000000000000000000000000001015151515151516151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515
1515100000000000000000000000000000000000000000000000000010000000000000000000000000000000001015151515151516151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515
1515100000000000000000000000000000000000000000000000000010000000000000000000000000000000001015151515151516151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515
1515100000000000000000000000000000000000000000000000000010000000000000000000000000000000001015151515151516151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515
1515100000000000000000000000000000000000000000000000000010000000000000000000000000000000001015151515151516151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515
1515100000000000000000000000000000000000000000000000000010000000000000000000000000000000001015151515151516151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515
1515100000000000000000000000000000000000000000000000000010000000000000000000000000000000001015151515151516151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515
1515100000000000000000000000000000000000000000000000000010000000000000000000000000000000001015151515151516151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515
1515100000000000000000000000000000000000000000000000000010000000000000000000000000000000001015151515151516151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515151515
__sfx__
000100000d0700d0500d0500b0500b0500b0500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
