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

end


function _draw()
<<<<<<< HEAD
	cls()
	spr(39,stat(32)-1,stat(33)-1)
	spr(38,64,64)
	if cursora == true then
		print("hej")
	end

	map(0,0,x,y,16,16)
=======
	print(t)
>>>>>>> d2e736ae0f5b04a5f717c6ef7acfc85992ebda25
end


--
--
--

-->8
--
--
--



function s()
	t="hejsa"
	x=64
	y=64
	cursora=false
end

function move()

	if btnp(⬆️) then
		y+=8
	end
	if btnp(⬇️) then
		y-=8
	end
	if btnp(⬅️) then
		x+=8
	end
	if btnp(➡️) then
		x-=8
	end

end



--
--


__gfx__
00000000666666666666666666666666000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000600000000000000000000006000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700600000000000000000000006000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000600000000000000000000006000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000600000000000000000000006000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700600000000000000000000006000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000600000000000000000000006000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000600000000000000000000006000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000600000000000000000000006000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000600000000000000000000006000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000600000000000000000000006000000000000000000888800005555000000000000000000000000000000000000000000000000000000000000000000
00000000600000000000000000000006000000000000000000888800004444000000000000000000000000000000000000000000000000000000000000000000
00000000600000000000000000000006000000000000000000888800004444000000000000000000000000000000000000000000000000000000000000000000
00000000600000000000000000000006000000000000000000888800004444000000000000000000000000000000000000000000000000000000000000000000
00000000600000000000000000000006000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000600000000000000000000006000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
<<<<<<< HEAD
000000006000000000000000000000060000000000000000cccccccc000000000000000000000000000000000000000000000000000000000000000000000000
000000006000000000000000000000060000000000000000cccccccc0aa00aa00000000000000000000000000000000000000000000000000000000000000000
000000006000000000000000000000060000000000000000cccccccc0a0000a00000000000000000000000000000000000000000000000000000000000000000
000000006000000000000000000000060000000000000000cccccccc000000000000000000000000000000000000000000000000000000000000000000000000
000000006000000000000000000000060000000000000000cccccccc000000000000000000000000000000000000000000000000000000000000000000000000
000000006000000000000000000000060000000000000000cccccccc0a0000a00000000000000000000000000000000000000000000000000000000000000000
000000006000000000000000000000060000000000000000cccccccc0aa00aa00000000000000000000000000000000000000000000000000000000000000000
000000006666666666666666666666660000000000000000cccccccc000000000000000000000000000000000000000000000000000000000000000000000000
__label__
=======
00000000600000000000000000000006000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000600000000000000000000006000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000600000000000000000000006000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000600000000000000000000006000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000600000000000000000000006000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000600000000000000000000006000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000600000000000000000000006000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000666666666666666666666666000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
>>>>>>> d2e736ae0f5b04a5f717c6ef7acfc85992ebda25
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
<<<<<<< HEAD
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
0000000000000000000000000000000000000000000000000000000000000000cccccccc00000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000caaccaac00000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000caccccac00000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000cccccccc00000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000cccccccc00000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000caccccac00000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000caaccaac00000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000cccccccc00000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666666666666666666666666666666666666
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000600000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000600000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000600000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000600000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000600000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000600000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000600000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000600000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000600000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000600000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000600000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000600000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000600000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000600000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000600000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000600000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000600000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000600000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000600000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000600000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000600000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000600000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000600000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000600000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000600000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000600000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000600000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000600000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000600000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000600000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666666666666666666666666666666666666666
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000000000000

=======
00000011000000000000000000000000000000000000000000003100000000000000000000000000000031000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000011000000000000000000000000000000000000000000003100000000000000000000000000000031000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000011000000000000000000000000000000000000000000003100000000000000000000000000000031000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000011000000000000000000000000000000000000000000003100000000000000000000000000000031000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000011000000000000000000000000000000000000000000003100000000000000000000000000000031000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000011000000000000000000000000000000000000000000003100000000000000000000000000000031000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000011000000000000000000000000000000000000000000003100000000000000000000000000000031000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000011000000000000000000000000000000000000000000003100000000000000000000000000000031000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000012222222222222222222222222222222222222222222223222222222222222222222222222222232000000000000000000000000000000000000000000
>>>>>>> d2e736ae0f5b04a5f717c6ef7acfc85992ebda25
__map__
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000102020202020203020202020202020202020202020202030202020202020202020202020202020300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000013000000000000000000000000000000130000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000013000000000000000000000000000000130000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000013000000000000000000000000000000130000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000013000000000000000000000000000000130000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000013000000000000000000000000000000130000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000013000000000000000000000000000000130000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000002122222222222223222222222222222222222222222222232222222222222222222222222222221300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000000000000000000000000000000000000130000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000000000000000000000000000000000000130000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000000000000000000000000000000000000130000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000000000000000000000000000000000000130000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000000000000000000000000000000000000130000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000000000000000000000000000000000000130000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000000000000000000000000000000000000130000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000002122222222222222222222222222222222222222222222230000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000000000000000000000000000000000000130000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000000000000000000000000000000000000130000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000000000000000000000000000000000000130000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000000000000000000000000000000000000130000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000000000000000000000000000000000000130000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000000000000000000000000000000000000130000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000000000000000000000000000000000000130000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000000000000000000000000000000000000130000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000000000000000000000000000000000000130000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000000000000000000000000000000000000130000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000000000000000000000000000000000000130000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000000000000000000000000000000000000130000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000000000000000000000000000000000000130000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001100000000000000000000000000000000000000000000130000000000000000000000000000001300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
