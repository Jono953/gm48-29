draw_set_font(fGame);
draw_text(0,0,"SCORE: "+string(round(dscr))+" (x"+string(multi*(1+sign(bonusTime)))+")");
draw_text(0,40,"LIVES: "+string(lvs));
draw_text(0,80,"BONUS: "+string(kills)+"/"+string(bonus)+" ("+string(bonusTime/60)+")");
