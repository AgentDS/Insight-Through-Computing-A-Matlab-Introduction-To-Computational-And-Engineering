S1= 'I can see you';
S2= 'see you';
k= FindSubstring(S1,S2); 
k % 0
S1= 'see you';
S2= 'I can see you, see you';
k= FindSubstring(S1,S2);
k % 7
S1= 'you can';
S2= 'I can see you';
k= FindSubstring(S1,S2);
k % 0
