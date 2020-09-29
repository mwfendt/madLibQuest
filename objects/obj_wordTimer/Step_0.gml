
// Count down the timer
if (roundTime > 0)
{
	roundTime-=delta_time/1000000;
	showTime=ceil(roundTime);
}

// If the timer hits 0, display 0 time
else
{
	showTime = 0;
}

