function playtone(freq,sf,amplitude,duration)
% ����һ������
% freq Ϊ����Ƶ��(Hz)
% sf ����Ƶ��(Hz)
% amplitude ��������(������)
% duration ����������(��)
t= [0:1/sf:duration];
sound_vector= amplitude.*sin(2*pi.*freq*t);
sound(sound_vector,sf)

end
% playtone��������