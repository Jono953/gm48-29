if (file_exists("save.ini")){
	file_delete("save.ini")
}
game_restart()
sound(choose(button1,button2,button3,button4,button5));
