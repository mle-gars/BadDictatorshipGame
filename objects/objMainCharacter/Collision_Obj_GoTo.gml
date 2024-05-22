if room = Room1{
room_goto(Room2)
} else if room = Room2{
	room_goto(Room3)
}else if room = Room3{
	room_goto(Room4)
}else if room = Room4{
	room_goto(Room5)
}else if room = Room3{
	room_goto(Room4)
}else if room = Room5{
	room_goto(RoomEnd)
}