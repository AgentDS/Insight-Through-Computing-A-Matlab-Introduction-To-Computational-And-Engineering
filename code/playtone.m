function playtone(freq,sf,amplitude,duration)
% 播放一个纯音
% freq 为音调频率(Hz)
% sf 采样频率(Hz)
% amplitude 声音幅度(无量纲)
% duration 声音的周期(秒)
t= [0:1/sf:duration];
sound_vector= amplitude.*sin(2*pi.*freq*t);
sound(sound_vector,sf)

end
% playtone函数结束